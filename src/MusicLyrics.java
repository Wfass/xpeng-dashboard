import android.os.*;
import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.*;
import java.util.*;
import android.graphics.*;
import android.text.*;
import java.io.*;
import org.json.*;
import java.nio.*;
import java.nio.charset.StandardCharsets;
import java.lang.reflect.*;

/** Lyrics in the original instrument music card. Never accesses navigation services/properties. */
public class MusicLyrics {
  static final String STYLE_PATH="/storage/emulated/0/Android/data/com.xpeng.clusterlyrics.control/files/lyrics-style.json";
  public static void main(final String[] args)throws Exception{
    Looper.prepareMainLooper();
    IBinder binder=(IBinder)Class.forName("android.os.ServiceManager").getMethod("getService",String.class).invoke(null,"car_service");
    Object car=ClusterLyrics.service("android.car.ICar",binder);
    final Object shm=ClusterLyrics.service("android.car.xpsharedmemory.IXpSharedMemory",(IBinder)ClusterLyrics.call(car,"getCarService",new Class[]{String.class},"xp_shared_memory"));
    Object thread=Class.forName("android.app.ActivityThread").getMethod("systemMain").invoke(null);
    Context ctx=(Context)ClusterLyrics.call(thread,"getSystemContext",new Class[]{});
    final MediaSessionManager manager=(MediaSessionManager)ctx.getSystemService("media_session");
    new Thread(new Runnable(){public void run(){try{work(manager,shm,args.length>0&&args[0].equals("--restore"));System.exit(0);}catch(Exception e){e.printStackTrace();System.exit(1);}}},"MusicLyrics").start();
    Looper.loop();
  }
  static void send(Object shm,JSONObject data,byte[] image)throws Exception{
    byte[] json=data.toString().getBytes(StandardCharsets.UTF_8);
    byte[] packet=ByteBuffer.allocate(4+json.length+image.length).order(ByteOrder.LITTLE_ENDIAN).putInt(json.length).put(json).put(image).array();
    Method m=ParcelFileDescriptor.class.getDeclaredMethod("fromData",byte[].class,String.class);m.setAccessible(true);
    try(ParcelFileDescriptor fd=(ParcelFileDescriptor)m.invoke(null,packet,"instrument-music-lyrics")){
      ClusterLyrics.call(shm,"queueMemoryBuffer",new Class[]{int.class,ParcelFileDescriptor.class,int.class},0x21701608,fd,packet.length);
    }
  }
  static byte[] album(MediaMetadata md)throws Exception{
    Bitmap b=md.getBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART);
    if(b==null)return new byte[0];ByteArrayOutputStream out=new ByteArrayOutputStream();b.compress(Bitmap.CompressFormat.PNG,100,out);return out.toByteArray();
  }
  static void text(Canvas c,String value,float size,int color,int y,int maxLines){
    if(value==null)value="";TextPaint p=new TextPaint(Paint.ANTI_ALIAS_FLAG);p.setTypeface(Typeface.create("sans-serif",Typeface.NORMAL));p.setTextSize(size);p.setColor(color);
    StaticLayout l=StaticLayout.Builder.obtain(value,0,value.length(),p,600).setAlignment(Layout.Alignment.ALIGN_CENTER).setIncludePad(false).setMaxLines(maxLines).setEllipsize(TextUtils.TruncateAt.END).build();
    c.save();c.translate(30,y);l.draw(c);c.restore();
  }
  static StaticLayout lyricLayout(String value,int maxWidth,int maxSize,int minSize,int maxHeight,int maxLines,int color,int lineSpacing){
    if(value==null||value.trim().isEmpty())return null;
    TextPaint paint=new TextPaint(Paint.ANTI_ALIAS_FLAG);
    paint.setTypeface(Typeface.create("sans-serif",Typeface.BOLD));paint.setColor(color);
    StaticLayout layout=null;
    for(int size=maxSize;size>=minSize;size-=4){
      paint.setTextSize(size);
      layout=StaticLayout.Builder.obtain(value,0,value.length(),paint,maxWidth)
        .setAlignment(Layout.Alignment.ALIGN_CENTER).setIncludePad(false)
        .setLineSpacing(lineSpacing,1f).setMaxLines(maxLines).setEllipsize(TextUtils.TruncateAt.END).build();
      if(layout.getHeight()<=maxHeight)break;
    }
    return layout;
  }
  static void drawCentered(Canvas c,String value,int maxWidth,int maxSize,int minSize,int maxHeight,int maxLines,int color,float centerY,int lineSpacing){
    StaticLayout layout=lyricLayout(value,maxWidth,maxSize,minSize,maxHeight,maxLines,color,lineSpacing);
    if(layout==null)return;
    c.save();c.translate((660-maxWidth)/2f,centerY-layout.getHeight()/2f);layout.draw(c);c.restore();
  }
  static byte[] render(String title,String artist,List<ClusterLyrics.Line> lines,int index)throws Exception{
    // Match the Navigation card's 660x660 MapBG image area. The lyrics slot
    // has no native title/artist rows, so include them in the image header.
    Bitmap b=Bitmap.createBitmap(660,660,Bitmap.Config.ARGB_8888);Canvas c=new Canvas(b);c.drawColor(Color.BLACK);
    String now=index>=0?lines.get(index).text:(lines.isEmpty()?"暂无歌词":"前奏");
    if(now.trim().isEmpty())now="♪";
    String previous=index>0?lines.get(index-1).text:"";
    String next=index>=0&&index+1<lines.size()?lines.get(index+1).text:"";
    Style style=Style.load();
    drawCentered(c,title,580,38,24,54,1,0xDDFFFFFF,48,0);
    drawCentered(c,artist,580,30,20,44,1,0x99FFFFFF,100,0);
    drawCentered(c,previous,580,style.sideSize,Math.max(18,style.sideSize-12),92,2,style.withAlpha(0x99),350-style.verticalGap,style.lineSpacing);
    drawCentered(c,now,580,style.currentSize,Math.max(40,style.currentSize-80),230,3,style.color,350,style.lineSpacing);
    drawCentered(c,next,580,style.sideSize,Math.max(18,style.sideSize-12),92,2,style.withAlpha(0x99),350+style.verticalGap,style.lineSpacing);
    ByteArrayOutputStream out=new ByteArrayOutputStream();b.compress(Bitmap.CompressFormat.PNG,100,out);b.recycle();return out.toByteArray();
  }
  static class Style {
    int color=Color.WHITE,currentSize=124,sideSize=42,verticalGap=170,lineSpacing=4;
    int withAlpha(int alpha){return (color&0x00ffffff)|(alpha<<24);}
    static int clamp(int v,int min,int max){return Math.max(min,Math.min(max,v));}
    static Style load(){
      Style s=new Style();File f=new File(STYLE_PATH);if(!f.isFile())return s;
      try(FileInputStream in=new FileInputStream(f)){
        byte[] bytes=new byte[(int)Math.min(f.length(),8192)];int n=in.read(bytes);if(n<=0)return s;
        JSONObject j=new JSONObject(new String(bytes,0,n,StandardCharsets.UTF_8));
        s.color=j.optInt("color",s.color)|0xff000000;
        s.currentSize=clamp(j.optInt("currentSize",s.currentSize),72,140);
        s.sideSize=clamp(j.optInt("sideSize",s.sideSize),24,56);
        s.verticalGap=clamp(j.optInt("verticalGap",s.verticalGap),145,205);
        s.lineSpacing=clamp(j.optInt("lineSpacing",s.lineSpacing),0,24);
      }catch(Exception ignored){}
      return s;
    }
  }
  static void work(MediaSessionManager manager,Object shm,boolean restore)throws Exception{
    String cached="",lastKey="";List<ClusterLyrics.Line> lines=new ArrayList<>();long sentAt=0,count=0;
    while(true){
      MediaController mc=null;
      for(MediaController candidate:manager.getActiveSessions(null))if(candidate.getPackageName().equals("com.xiaopeng.musicradio")){mc=candidate;break;}
      if(mc==null||mc.getMetadata()==null){if(restore)return;Thread.sleep(1000);continue;}
      MediaMetadata md=mc.getMetadata(); PlaybackState ps=mc.getPlaybackState();
      String title=md.getString(MediaMetadata.METADATA_KEY_TITLE),artist=md.getString(MediaMetadata.METADATA_KEY_ARTIST);
      String info=md.getString("lyricInfo"),lrc=info==null?"":new JSONObject(info).optString("lyricContent");
      if(!lrc.equals(cached)){lines=ClusterLyrics.parse(lrc);cached=lrc;System.out.println("TRACK "+title+" timedLines="+lines.size());}
      long position=ps==null?0:Math.max(0,ps.getPosition());boolean playing=ps!=null&&ps.getState()==PlaybackState.STATE_PLAYING;
      if(playing&&ps.getLastPositionUpdateTime()>0)position+=(long)((SystemClock.elapsedRealtime()-ps.getLastPositionUpdateTime())*ps.getPlaybackSpeed());
      String line="";int index=-1;
      for(int i=0;i<lines.size();i++)if(lines.get(i).time<=position){index=i;line=lines.get(i).text;}else break;
      String song=title;
      String subtitle=artist;
      String key=title+"|"+index+"|"+playing;
      long now=SystemClock.elapsedRealtime();
      if(restore||!key.equals(lastKey)||now-sentAt>=1000){
        JSONObject music=new JSONObject().put("artist",subtitle).put("song",song).put("progress",String.valueOf(position/1000)).put("total",String.valueOf(md.getLong(MediaMetadata.METADATA_KEY_DURATION)/1000)).put("startPosition",String.valueOf(md.getLong("startPosition"))).put("status",playing?"play":"pause");
        JSONObject message=new JSONObject().put("enable","1").put("msgtype","7").put("music",music).put("reporttime",new java.text.SimpleDateFormat("HH:mm",Locale.CHINA).format(new Date()));
        byte[] image=restore?album(md):render(title,artist,lines,index);
        send(shm,message,image);lastKey=key;sentAt=now;count++;
        if(count==1||count%15==0||restore)System.out.println("MUSIC_SUBMITTED count="+count+" lineIndex="+index+" positionMs="+position+" restore="+restore+" imageBytes="+image.length);
      }
      if(restore)return;Thread.sleep(250);
    }
  }
}
