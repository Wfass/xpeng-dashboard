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
    if(args.length>0&&args[0].equals("--vehicle-status")){vehicleStatus();return;}
    Looper.prepareMainLooper();
    IBinder binder=(IBinder)Class.forName("android.os.ServiceManager").getMethod("getService",String.class).invoke(null,"car_service");
    Object car=ClusterLyrics.service("android.car.ICar",binder);
    final Object shm=ClusterLyrics.service("android.car.xpsharedmemory.IXpSharedMemory",(IBinder)ClusterLyrics.call(car,"getCarService",new Class[]{String.class},"xp_shared_memory"));
    Object thread=Class.forName("android.app.ActivityThread").getMethod("systemMain").invoke(null);
    Context ctx=(Context)ClusterLyrics.call(thread,"getSystemContext",new Class[]{});
    final MediaSessionManager manager=(MediaSessionManager)ctx.getSystemService("media_session");
    new Thread(new Runnable(){public void run(){try{work(manager,shm,ctx,args.length>0&&args[0].equals("--restore"));System.exit(0);}catch(Exception e){e.printStackTrace();System.exit(1);}}},"MusicLyrics").start();
    Looper.loop();
  }
  static void vehicleStatus()throws Exception{
    IBinder binder=(IBinder)Class.forName("android.os.ServiceManager").getMethod("getService",String.class).invoke(null,"car_service");
    Object car=ClusterLyrics.service("android.car.ICar",binder);
    Object vehicle=ClusterLyrics.service("android.car.hardware.XpVehicle.IXpVehicle",(IBinder)ClusterLyrics.call(car,"getCarService",new Class[]{String.class},"xp_vehicle"));
    float speed=((Number)ClusterLyrics.call(vehicle,"getVcuRawCarSpeed",new Class[]{})).floatValue();
    int gear=((Number)ClusterLyrics.call(vehicle,"getVcuRealGearLevel",new Class[]{})).intValue();
    System.out.println("READ_ONLY_VEHICLE_STATUS speed="+speed+" gear="+gear);
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
  static StaticLayout lyricLayout(String value,int maxWidth,int maxSize,int minSize,int maxHeight,int maxLines,int color,int lineSpacing,boolean bold){
    if(value==null||value.trim().isEmpty())return null;
    TextPaint paint=new TextPaint(Paint.ANTI_ALIAS_FLAG);
    paint.setTypeface(Typeface.create("sans-serif",bold?Typeface.BOLD:Typeface.NORMAL));paint.setColor(color);
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
  static void drawCentered(Canvas c,String value,int maxWidth,int maxSize,int minSize,int maxHeight,int maxLines,int color,float centerY,int lineSpacing,boolean bold){
    StaticLayout layout=lyricLayout(value,maxWidth,maxSize,minSize,maxHeight,maxLines,color,lineSpacing,bold);
    if(layout==null)return;
    c.save();c.translate((660-maxWidth)/2f,centerY-layout.getHeight()/2f);layout.draw(c);c.restore();
  }
  static boolean systemNight(Context context){
    try{
      Object ui=context.getSystemService("uimode");
      Object mode=ui.getClass().getMethod("getDayNightMode").invoke(ui);
      // The driver observed day/night palettes reversed with the previous
      // interpretation, so invert this vehicle getter's presentation mapping.
      if(mode instanceof Integer){int value=((Integer)mode).intValue();if(value==0)return true;if(value==1)return false;}
    }catch(Exception ignored){}
    return (context.getResources().getConfiguration().uiMode&android.content.res.Configuration.UI_MODE_NIGHT_MASK)==android.content.res.Configuration.UI_MODE_NIGHT_YES;
  }
  static byte[] render(Context context,String title,String artist,List<ClusterLyrics.Line> lines,int index,int visibleRows,String transitionFrom,float transitionProgress)throws Exception{
    // Match the Navigation card's 660x660 MapBG image area. The lyrics slot
    // has no native title/artist rows, so include them in the image header.
    Bitmap b=Bitmap.createBitmap(660,660,Bitmap.Config.ARGB_8888);Canvas c=new Canvas(b);
    String now=index>=0?lines.get(index).text:(lines.isEmpty()?"暂无歌词":"前奏");
    if(now.trim().isEmpty())now="♪";
    String previous=index>0?lines.get(index-1).text:"";
    String next=index>=0&&index+1<lines.size()?lines.get(index+1).text:"";
    Style style=Style.load();
    boolean night=style.themeMode==2||(style.themeMode==0&&systemNight(context));
    int accent=night?style.nightColor:style.dayColor;
    if(style.backgroundAlpha>0)c.drawColor((style.backgroundAlpha<<24)|(style.backgroundColor&0x00ffffff),PorterDuff.Mode.SRC);
    int width=style.contentWidth;
    if(style.showTitle)drawCentered(c,title,width,style.titleSize,Math.max(10,style.titleSize-20),54,1,night?0xDDFFFFFF:0xDD20252B,48,0,false);
    if(style.showArtist)drawCentered(c,artist,width,style.artistSize,Math.max(10,style.artistSize-16),44,1,night?0x99FFFFFF:0x9920252B,100,0,false);
    float previousY=Math.max(175,350-style.verticalGap)+style.verticalOffset;
    float nextY=Math.min(520,350+style.verticalGap)+style.verticalOffset;
    float center=350+style.verticalOffset;
    if(transitionFrom!=null&&transitionProgress<1f){
      float p=Math.max(0f,Math.min(1f,transitionProgress));
      drawCentered(c,transitionFrom,width,style.currentSize,style.minCurrentSize,250,style.maxLines,style.withAlpha((int)(255*(1f-p)),accent),center-90f*p,style.lineSpacing,style.bold);
      drawCentered(c,now,width,style.currentSize,style.minCurrentSize,250,style.maxLines,style.withAlpha((int)(255*p),accent),center+65f*(1f-p),style.lineSpacing,style.bold);
      if(visibleRows==3)drawCentered(c,next,width,style.sideSize,Math.max(10,style.sideSize-20),92,2,style.withAlpha(0x99,accent),nextY,style.lineSpacing,style.bold);
    }else if(visibleRows==2){
      float upper=center-style.verticalGap/2f,lower=center+style.verticalGap/2f;
      drawCentered(c,now,width,style.currentSize,style.minCurrentSize,250,style.maxLines,accent,upper,style.lineSpacing,style.bold);
      drawCentered(c,next,width,style.sideSize,Math.max(10,style.sideSize-20),92,2,style.withAlpha(0x99,accent),lower,style.lineSpacing,style.bold);
    }else{
      drawCentered(c,previous,width,style.sideSize,Math.max(10,style.sideSize-20),92,2,style.withAlpha(0x99,accent),previousY,style.lineSpacing,style.bold);
      drawCentered(c,now,width,style.currentSize,style.minCurrentSize,250,style.maxLines,accent,center,style.lineSpacing,style.bold);
      drawCentered(c,next,width,style.sideSize,Math.max(10,style.sideSize-20),92,2,style.withAlpha(0x99,accent),nextY,style.lineSpacing,style.bold);
    }
    ByteArrayOutputStream out=new ByteArrayOutputStream();b.compress(Bitmap.CompressFormat.PNG,100,out);b.recycle();return out.toByteArray();
  }
  static class Style {
    int dayColor=0xff20252b,nightColor=Color.WHITE,currentSize=56,minCurrentSize=12,sideSize=24,verticalGap=150,lineSpacing=4;
    int contentWidth=620,verticalOffset=0,titleSize=24,artistSize=18,backgroundColor=Color.BLACK,backgroundAlpha=0,maxLines=3,themeMode=0,visibleRows=3;
    boolean showTitle=true,showArtist=true,bold=true;
    int withAlpha(int alpha,int color){return (color&0x00ffffff)|(alpha<<24);}
    static int clamp(int v,int min,int max){return Math.max(min,Math.min(max,v));}
    static Style load(){
      Style s=new Style();File f=new File(STYLE_PATH);if(!f.isFile())return s;
      try(FileInputStream in=new FileInputStream(f)){
        byte[] bytes=new byte[(int)Math.min(f.length(),8192)];int n=in.read(bytes);if(n<=0)return s;
        JSONObject j=new JSONObject(new String(bytes,0,n,StandardCharsets.UTF_8));
        int oldColor=j.optInt("color",s.nightColor)|0xff000000;
        s.dayColor=j.optInt("dayColor",s.dayColor)|0xff000000;s.nightColor=j.optInt("nightColor",oldColor)|0xff000000;
        s.currentSize=clamp(j.optInt("currentSize",s.currentSize),12,110);
        s.minCurrentSize=clamp(j.optInt("minCurrentSize",12),8,s.currentSize);
        s.sideSize=clamp(j.optInt("sideSize",s.sideSize),10,60);
        s.verticalGap=clamp(j.optInt("verticalGap",s.verticalGap),90,260);
        s.lineSpacing=clamp(j.optInt("lineSpacing",s.lineSpacing),0,30);
        s.contentWidth=clamp(j.optInt("contentWidth",s.contentWidth),300,660);
        s.verticalOffset=clamp(j.optInt("verticalOffset",s.verticalOffset),-120,120);
        s.titleSize=clamp(j.optInt("titleSize",s.titleSize),10,42);s.artistSize=clamp(j.optInt("artistSize",s.artistSize),10,36);
        s.backgroundColor=j.optInt("backgroundColor",s.backgroundColor)|0xff000000;s.backgroundAlpha=clamp(j.optInt("backgroundAlpha",s.backgroundAlpha),0,230);
        s.maxLines=clamp(j.optInt("maxLines",s.maxLines),1,5);s.themeMode=clamp(j.optInt("themeMode",s.themeMode),0,2);
        s.visibleRows=clamp(j.optInt("visibleRows",s.visibleRows),2,3);
        s.showTitle=j.optBoolean("showTitle",s.showTitle);s.showArtist=j.optBoolean("showArtist",s.showArtist);s.bold=j.optBoolean("bold",s.bold);
      }catch(Exception ignored){}
      return s;
    }
  }
  static void work(MediaSessionManager manager,Object shm,Context context,boolean restore)throws Exception{
    String cached="",lastKey="",lastSong="",transitionFrom=null;int lastIndex=-1;long sentAt=0,transitionStarted=0,count=0;List<ClusterLyrics.Line> lines=new ArrayList<>();
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
      if(!restore&&!song.equals(lastSong)){lastIndex=-1;transitionFrom=null;transitionStarted=0;}
      if(!restore&&index!=lastIndex&&lastIndex>=0&&song.equals(lastSong)){
        transitionFrom=lastIndex<lines.size()?lines.get(lastIndex).text:null;transitionStarted=now;
      }
      boolean animating=transitionFrom!=null&&now-transitionStarted<500;
      float transitionProgress=animating?(now-transitionStarted)/500f:1f;
      if(!animating&&transitionFrom!=null){transitionFrom=null;transitionProgress=1f;}
      if(restore||!key.equals(lastKey)||now-sentAt>=(animating?125:1000)){
        JSONObject music=new JSONObject().put("artist",subtitle).put("song",song).put("progress",String.valueOf(position/1000)).put("total",String.valueOf(md.getLong(MediaMetadata.METADATA_KEY_DURATION)/1000)).put("startPosition",String.valueOf(md.getLong("startPosition"))).put("status",playing?"play":"pause");
        JSONObject message=new JSONObject().put("enable","1").put("msgtype","7").put("music",music).put("reporttime",new java.text.SimpleDateFormat("HH:mm",Locale.CHINA).format(new Date()));
        byte[] image=restore?album(md):render(context,title,artist,lines,index,Style.load().visibleRows,transitionFrom,transitionProgress);
        send(shm,message,image);lastKey=key;sentAt=now;count++;
        if(count==1||count%15==0||restore)System.out.println("MUSIC_SUBMITTED count="+count+" lineIndex="+index+" positionMs="+position+" restore="+restore+" imageBytes="+image.length);
      }
      lastSong=song;lastIndex=index;
      if(restore)return;Thread.sleep(animating?100:250);
    }
  }
}
