package com.xpeng.clusterlyrics.control;

import android.app.Activity;
import android.app.AlertDialog;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import org.json.JSONObject;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;

public class LyricsControlActivity extends Activity {
  private static final int BG=Color.rgb(12,15,20), PANEL=Color.rgb(24,29,37), MUTED=Color.rgb(155,165,180), WHITE=Color.WHITE;
  private static final int[] COLORS={Color.rgb(32,37,43),Color.WHITE,Color.rgb(82,220,255),Color.rgb(255,211,90),Color.rgb(111,231,160),Color.rgb(255,133,176),Color.rgb(175,151,255)};
  private static final String[] COLOR_NAMES={"深灰","白","青","金","绿","粉","紫"};
  private final Handler handler=new Handler(Looper.getMainLooper());
  private File settingsFile;
  private int dayColor=Color.rgb(32,37,43),nightColor=Color.WHITE,currentSize=56,minCurrentSize=12,sideSize=24,verticalGap=150,lineSpacing=4;
  private int contentWidth=620,verticalOffset=0,titleSize=24,artistSize=18,backgroundAlpha=0,maxLines=3,visibleRows=3,themeMode=0,colorRole=0;
  private boolean showTitle=true,showArtist=true,bold=true;
  private int previewColor=0;
  private TextView saveStatus;
  private Preview preview;
  private LinearLayout paletteRow;
  private Runnable pendingSave;

  @Override public void onCreate(Bundle state){
    super.onCreate(state);getWindow().setStatusBarColor(BG);getWindow().setNavigationBarColor(BG);
    getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
    File dir=getExternalFilesDir(null);settingsFile=new File(dir==null?getFilesDir():dir,"lyrics-style.json");load();
    LinearLayout root=new LinearLayout(this);root.setOrientation(LinearLayout.VERTICAL);root.setBackgroundColor(BG);root.setPadding(dp(28),dp(16),dp(28),dp(16));
    root.addView(header(),new LinearLayout.LayoutParams(-1,dp(58)));
    LinearLayout body=new LinearLayout(this);body.setOrientation(LinearLayout.HORIZONTAL);body.setGravity(Gravity.CENTER_VERTICAL);
    LinearLayout left=new LinearLayout(this);left.setOrientation(LinearLayout.VERTICAL);left.setPadding(dp(4),dp(8),dp(22),dp(4));
    preview=new Preview();left.addView(preview,new LinearLayout.LayoutParams(-1,0,1));
    TextView hint=label("预览当前编辑颜色 · 地图底图示意",13,MUTED);hint.setGravity(Gravity.CENTER);left.addView(hint,new LinearLayout.LayoutParams(-1,dp(34)));
    LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(0,-1,0.46f);body.addView(left,lp);
    ScrollView scroll=new ScrollView(this);scroll.setFillViewport(false);
    LinearLayout controls=new LinearLayout(this);controls.setOrientation(LinearLayout.VERTICAL);controls.setPadding(dp(22),dp(8),dp(4),dp(8));
    controls.addView(section("日夜主题"));controls.addView(choices(new String[]{"自动跟随仪表","强制白天","强制夜间"},themeMode,new Pick(){public void choose(int i){themeMode=i;changed();}}));
    controls.addView(section("调整哪套颜色"));controls.addView(choices(new String[]{"白天颜色","夜间颜色"},colorRole,new Pick(){public void choose(int i){colorRole=i;refreshPalette();if(preview!=null)preview.invalidate();}}));
    controls.addView(section("歌词颜色"));paletteRow=(LinearLayout)palette();controls.addView(paletteRow);
    controls.addView(section("排版"));
    controls.addView(section("上下句显示行数"));controls.addView(choices(new String[]{"两行歌词","三行歌词"},visibleRows-2,new Pick(){public void choose(int i){visibleRows=i+2;changed();}}));
    addSlider(controls,"当前歌词最大字号",12,110,currentSize," px",new Change(){public void set(int v){currentSize=v;if(minCurrentSize>v)minCurrentSize=v;changed();}});
    addSlider(controls,"当前歌词最小字号",8,Math.max(8,currentSize),minCurrentSize," px",new Change(){public void set(int v){minCurrentSize=v;changed();}});
    addSlider(controls,"上下句字号",10,60,sideSize," px",new Change(){public void set(int v){sideSize=v;changed();}});
    addSlider(controls,"上下句间距",90,260,verticalGap," px",new Change(){public void set(int v){verticalGap=v;changed();}});
    addSlider(controls,"多行歌词行距",0,30,lineSpacing," px",new Change(){public void set(int v){lineSpacing=v;changed();}});
    addSlider(controls,"歌词可用宽度",300,660,contentWidth," px",new Change(){public void set(int v){contentWidth=v;changed();}});
    addSlider(controls,"歌词整体上下位置",-120,120,verticalOffset," px",new Change(){public void set(int v){verticalOffset=v;changed();}});
    addSlider(controls,"单句最多换行数",1,5,maxLines," 行",new Change(){public void set(int v){maxLines=v;changed();}});
    controls.addView(section("歌曲信息与背景"));
    controls.addView(choices(new String[]{"显示歌名","隐藏歌名"},showTitle?0:1,new Pick(){public void choose(int i){showTitle=i==0;changed();}}));
    controls.addView(choices(new String[]{"显示歌手","隐藏歌手"},showArtist?0:1,new Pick(){public void choose(int i){showArtist=i==0;changed();}}));
    controls.addView(choices(new String[]{"粗体歌词","常规字重"},bold?0:1,new Pick(){public void choose(int i){bold=i==0;changed();}}));
    addSlider(controls,"歌名字号",10,42,titleSize," px",new Change(){public void set(int v){titleSize=v;changed();}});
    addSlider(controls,"歌手字号",10,36,artistSize," px",new Change(){public void set(int v){artistSize=v;changed();}});
    addSlider(controls,"背景不透明度 · 0 为透明",0,230,backgroundAlpha," /230",new Change(){public void set(int v){backgroundAlpha=v;changed();}});
    TextView note=label("样式自动保存；歌词绘制程序运行时会在下一次刷新读取。",13,MUTED);note.setPadding(0,dp(10),0,dp(10));controls.addView(note);
    scroll.addView(controls);body.addView(scroll,new LinearLayout.LayoutParams(0,-1,0.54f));
    root.addView(body,new LinearLayout.LayoutParams(-1,0,1));
    LinearLayout footer=new LinearLayout(this);footer.setGravity(Gravity.CENTER_VERTICAL);footer.setOrientation(LinearLayout.HORIZONTAL);
    saveStatus=label("更改会自动保存",14,MUTED);footer.addView(saveStatus,new LinearLayout.LayoutParams(0,dp(48),1));
    Button save=new Button(this);save.setText("立即保存");save.setTextColor(Color.WHITE);save.setAllCaps(false);save.setBackground(round(Color.rgb(40,123,205),dp(10)));save.setOnClickListener(new View.OnClickListener(){public void onClick(View v){save();}});
    footer.addView(save,new LinearLayout.LayoutParams(dp(180),dp(48)));root.addView(footer,new LinearLayout.LayoutParams(-1,dp(56)));
    setContentView(root);
  }

  private View header(){
    LinearLayout row=new LinearLayout(this);row.setGravity(Gravity.CENTER_VERTICAL);row.setOrientation(LinearLayout.HORIZONTAL);
    TextView title=label("歌词控制",25,WHITE);title.setTypeface(Typeface.DEFAULT,Typeface.BOLD);row.addView(title);
    TextView sub=label("  /  仪表显示样式",16,MUTED);row.addView(sub);
    TextView badge=label("仅调整样式 · 不直接占用仪表画面",13,MUTED);badge.setGravity(Gravity.RIGHT|Gravity.CENTER_VERTICAL);row.addView(badge,new LinearLayout.LayoutParams(0,-1,1));return row;
  }
  private View section(String text){TextView v=label(text,17,WHITE);v.setTypeface(Typeface.DEFAULT,Typeface.BOLD);v.setPadding(0,dp(12),0,dp(6));return v;}
  private TextView label(String text,int size,int color){TextView v=new TextView(this);v.setText(text);v.setTextSize(size);v.setTextColor(color);v.setGravity(Gravity.CENTER_VERTICAL);return v;}
  private int dp(float x){return (int)(x*getResources().getDisplayMetrics().density+0.5f);}
  private GradientDrawable round(int color,int radius){GradientDrawable d=new GradientDrawable();d.setColor(color);d.setCornerRadius(radius);return d;}
  private View palette(){
    LinearLayout row=new LinearLayout(this);row.setOrientation(LinearLayout.HORIZONTAL);row.setGravity(Gravity.CENTER_VERTICAL);row.setPadding(0,dp(3),0,dp(10));
    final int active=colorRole==0?dayColor:nightColor;
    for(int i=0;i<COLORS.length;i++){
      final int selected=COLORS[i];LinearLayout item=new LinearLayout(this);item.setOrientation(LinearLayout.VERTICAL);item.setGravity(Gravity.CENTER);
      TextView dot=label(COLORS[i]==active?"✓":"●",COLORS[i]==active?22:29,COLORS[i]);dot.setGravity(Gravity.CENTER);dot.setBackground(round(PANEL,dp(10)));item.addView(dot,new LinearLayout.LayoutParams(dp(52),dp(44)));
      TextView name=label(COLOR_NAMES[i],12,MUTED);name.setGravity(Gravity.CENTER);item.addView(name,new LinearLayout.LayoutParams(dp(52),dp(24)));
      item.setOnClickListener(new View.OnClickListener(){public void onClick(View v){setActiveColor(selected);changed();}});
      row.addView(item,new LinearLayout.LayoutParams(dp(62),dp(70)));
    }
    Button custom=new Button(this);custom.setText("自定义颜色");custom.setTextSize(12);custom.setTextColor(WHITE);custom.setAllCaps(false);custom.setBackground(round(PANEL,dp(10)));custom.setOnClickListener(new View.OnClickListener(){public void onClick(View v){showColorDialog();}});
    row.addView(custom,new LinearLayout.LayoutParams(dp(116),dp(46)));
    return row;
  }
  private void showColorDialog(){
    final int old=activeColor();final int[] rgb={Color.red(old),Color.green(old),Color.blue(old)};final TextView sample=label(String.format("#%02X%02X%02X",rgb[0],rgb[1],rgb[2]),18,WHITE);sample.setGravity(Gravity.CENTER);sample.setPadding(0,dp(8),0,dp(8));
    LinearLayout box=new LinearLayout(this);box.setOrientation(LinearLayout.VERTICAL);box.setPadding(dp(22),dp(12),dp(22),dp(4));box.addView(sample,new LinearLayout.LayoutParams(-1,dp(46)));
    String[] names={"红色","绿色","蓝色"};
    for(int i=0;i<3;i++){
      final int channel=i;LinearLayout row=new LinearLayout(this);row.setGravity(Gravity.CENTER_VERTICAL);
      TextView name=label(names[i],14,WHITE);row.addView(name,new LinearLayout.LayoutParams(dp(58),dp(42)));
      SeekBar seek=new SeekBar(this);seek.setMax(255);seek.setProgress(rgb[i]);row.addView(seek,new LinearLayout.LayoutParams(0,dp(42),1));
      seek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(){public void onStartTrackingTouch(SeekBar s){}public void onStopTrackingTouch(SeekBar s){}public void onProgressChanged(SeekBar s,int value,boolean user){rgb[channel]=value;previewColor=Color.rgb(rgb[0],rgb[1],rgb[2]);sample.setText(String.format("#%02X%02X%02X",rgb[0],rgb[1],rgb[2]));sample.setTextColor(previewColor);if(preview!=null)preview.invalidate();}});
      box.addView(row);
    }
    final AlertDialog dialog=new AlertDialog.Builder(this).setTitle("自定义歌词颜色").setView(box).setPositiveButton("应用",null).setNegativeButton("取消",null).create();
    dialog.setOnShowListener(new android.content.DialogInterface.OnShowListener(){public void onShow(android.content.DialogInterface d){
      dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(new View.OnClickListener(){public void onClick(View v){setActiveColor(Color.rgb(rgb[0],rgb[1],rgb[2]));previewColor=0;dialog.dismiss();if(preview!=null)preview.invalidate();changed();}});
      dialog.getButton(AlertDialog.BUTTON_NEGATIVE).setOnClickListener(new View.OnClickListener(){public void onClick(View v){previewColor=0;dialog.dismiss();if(preview!=null)preview.invalidate();}});
    }});
    dialog.setOnCancelListener(new android.content.DialogInterface.OnCancelListener(){public void onCancel(android.content.DialogInterface d){previewColor=0;if(preview!=null)preview.invalidate();}});
    dialog.show();
  }
  private interface Change{void set(int value);}
  private interface Pick{void choose(int index);}
  private View choices(String[] labels,int selected,final Pick pick){
    LinearLayout row=new LinearLayout(this);row.setOrientation(LinearLayout.HORIZONTAL);row.setPadding(0,0,0,dp(6));
    for(int i=0;i<labels.length;i++){final int at=i;Button b=new Button(this);b.setText(labels[i]);b.setTextSize(12);b.setAllCaps(false);b.setTextColor(WHITE);b.setBackground(round(i==selected?Color.rgb(40,123,205):PANEL,dp(8)));b.setOnClickListener(new View.OnClickListener(){public void onClick(View v){pick.choose(at);for(int n=0;n<row.getChildCount();n++)row.getChildAt(n).setBackground(round(n==at?Color.rgb(40,123,205):PANEL,dp(8)));changed();}});LinearLayout.LayoutParams p=new LinearLayout.LayoutParams(0,dp(44),1);p.setMargins(0,0,dp(6),0);row.addView(b,p);}
    return row;
  }
  private int activeColor(){return colorRole==0?dayColor:nightColor;}
  private void setActiveColor(int value){if(colorRole==0)dayColor=value;else nightColor=value;}
  private void addSlider(LinearLayout parent,String title,int min,int max,int initial,String unit,final Change change){
    LinearLayout block=new LinearLayout(this);block.setOrientation(LinearLayout.VERTICAL);block.setPadding(0,dp(4),0,dp(3));
    LinearLayout heading=new LinearLayout(this);heading.setGravity(Gravity.CENTER_VERTICAL);TextView name=label(title,15,WHITE);heading.addView(name,new LinearLayout.LayoutParams(0,dp(26),1));
    final TextView value=label(initial+unit,14,MUTED);value.setGravity(Gravity.RIGHT|Gravity.CENTER_VERTICAL);heading.addView(value,new LinearLayout.LayoutParams(dp(90),dp(26)));block.addView(heading);
    SeekBar seek=new SeekBar(this);seek.setMax(max-min);seek.setProgress(initial-min);seek.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener(){
      public void onStartTrackingTouch(SeekBar b){}
      public void onStopTrackingTouch(SeekBar b){scheduleSave();}
      public void onProgressChanged(SeekBar b,int progress,boolean fromUser){int v=min+progress;value.setText(v+unit);change.set(v);if(fromUser)scheduleSave();}
    });block.addView(seek,new LinearLayout.LayoutParams(-1,dp(38)));parent.addView(block,new LinearLayout.LayoutParams(-1,dp(72)));
  }
  private void changed(){if(preview!=null)preview.invalidate();refreshPalette();if(saveStatus!=null)saveStatus.setText("更改中…");scheduleSave();}
  private void refreshPalette(){
    if(paletteRow==null)return;
    int active=activeColor();
    for(int i=0;i<COLORS.length&&i<paletteRow.getChildCount();i++){
      View item=paletteRow.getChildAt(i);if(!(item instanceof LinearLayout))continue;View first=((LinearLayout)item).getChildAt(0);if(first instanceof TextView){TextView dot=(TextView)first;boolean selected=COLORS[i]==active;dot.setText(selected?"✓":"●");dot.setTextSize(selected?22:29);dot.setTextColor(COLORS[i]);}
    }
  }
  private void scheduleSave(){if(pendingSave!=null)handler.removeCallbacks(pendingSave);pendingSave=new Runnable(){public void run(){save();}};handler.postDelayed(pendingSave,450);}
  private void save(){
    try{
      JSONObject json=new JSONObject().put("version",3).put("dayColor",dayColor&0x00ffffff).put("nightColor",nightColor&0x00ffffff).put("currentSize",currentSize).put("minCurrentSize",minCurrentSize).put("sideSize",sideSize).put("verticalGap",verticalGap).put("lineSpacing",lineSpacing).put("contentWidth",contentWidth).put("verticalOffset",verticalOffset).put("titleSize",titleSize).put("artistSize",artistSize).put("backgroundAlpha",backgroundAlpha).put("maxLines",maxLines).put("visibleRows",visibleRows).put("themeMode",themeMode).put("showTitle",showTitle).put("showArtist",showArtist).put("bold",bold);
      File parent=settingsFile.getParentFile();if(parent!=null&&!parent.exists()&&!parent.mkdirs())throw new IllegalStateException("无法创建设置目录");
      try(FileOutputStream out=new FileOutputStream(settingsFile)){out.write(json.toString().getBytes(StandardCharsets.UTF_8));out.flush();out.getFD().sync();}
      settingsFile.setReadable(true,false);if(saveStatus!=null)saveStatus.setText("已保存 · 下次歌词刷新时生效");
    }catch(Exception e){if(saveStatus!=null)saveStatus.setText("保存失败："+e.getMessage());}
  }
  private void load(){
    if(!settingsFile.isFile())return;
    try(FileInputStream in=new FileInputStream(settingsFile)){
      byte[] b=new byte[(int)Math.min(settingsFile.length(),8192)];int n=in.read(b);if(n<=0)return;JSONObject j=new JSONObject(new String(b,0,n,StandardCharsets.UTF_8));
      int legacy=j.optInt("color",Color.WHITE)|0xff000000;dayColor=j.optInt("dayColor",Color.rgb(32,37,43))|0xff000000;nightColor=j.optInt("nightColor",legacy)|0xff000000;
      currentSize=clamp(j.optInt("currentSize",currentSize),12,110);minCurrentSize=clamp(j.optInt("minCurrentSize",12),8,currentSize);sideSize=clamp(j.optInt("sideSize",sideSize),10,60);verticalGap=clamp(j.optInt("verticalGap",verticalGap),90,260);lineSpacing=clamp(j.optInt("lineSpacing",lineSpacing),0,30);
      contentWidth=clamp(j.optInt("contentWidth",contentWidth),300,660);verticalOffset=clamp(j.optInt("verticalOffset",verticalOffset),-120,120);titleSize=clamp(j.optInt("titleSize",titleSize),10,42);artistSize=clamp(j.optInt("artistSize",artistSize),10,36);backgroundAlpha=clamp(j.optInt("backgroundAlpha",backgroundAlpha),0,230);maxLines=clamp(j.optInt("maxLines",maxLines),1,5);visibleRows=clamp(j.optInt("visibleRows",visibleRows),2,3);themeMode=clamp(j.optInt("themeMode",themeMode),0,2);showTitle=j.optBoolean("showTitle",showTitle);showArtist=j.optBoolean("showArtist",showArtist);bold=j.optBoolean("bold",bold);
    }catch(Exception ignored){}
  }
  private int clamp(int v,int min,int max){return Math.max(min,Math.min(max,v));}

  private class Preview extends View {
    final Paint p=new Paint(Paint.ANTI_ALIAS_FLAG);
    Preview(){super(LyricsControlActivity.this);setBackgroundColor(BG);}
    void text(Canvas c,String s,float y,float size,int color,boolean bold){p.setColor(color);p.setTextSize(size);p.setTextAlign(Paint.Align.CENTER);p.setTypeface(Typeface.create("sans-serif",bold?Typeface.BOLD:Typeface.NORMAL));c.drawText(s,330,y,p);}
    @Override protected void onDraw(Canvas canvas){
      super.onDraw(canvas);float sx=getWidth()/660f,sy=getHeight()/660f;canvas.save();canvas.scale(sx,sy);
      boolean dark=colorRole==1;int base=dark?Color.rgb(33,39,46):Color.rgb(113,126,137);p.setColor(base);canvas.drawColor(base);
      p.setStyle(Paint.Style.STROKE);p.setStrokeCap(Paint.Cap.ROUND);p.setStrokeWidth(18);p.setColor(dark?0x337d8994:0x388c979f);canvas.drawLine(38,560,280,370,p);canvas.drawLine(280,370,415,285,p);canvas.drawLine(280,370,470,520,p);canvas.drawLine(415,285,610,100,p);p.setStrokeWidth(5);p.setColor(dark?0x2a7d8994:0x328c979f);canvas.drawLine(62,120,228,250,p);canvas.drawLine(482,570,610,605,p);p.setStyle(Paint.Style.FILL);
      if(backgroundAlpha>0){p.setColor((backgroundAlpha<<24)|Color.BLACK);canvas.drawRect(0,0,660,660,p);}
      int active=previewColor==0?activeColor():previewColor;
      if(showTitle)text(canvas,"歌曲名称",72,titleSize,dark?0xddffffff:0xdd20252b,false);
      if(showArtist)text(canvas,"歌手名称",120,artistSize,dark?0x99ffffff:0x9920252b,false);
      float previousY=Math.max(175,350-verticalGap)+verticalOffset;float nextY=Math.min(520,350+verticalGap)+verticalOffset;
      if(visibleRows==2){text(canvas,"正在播放",350+verticalOffset-verticalGap/2f,currentSize,active,bold);text(canvas,"下一句歌词",350+verticalOffset+verticalGap/2f,sideSize,(active&0x00ffffff)|0x99000000,bold);}
      else{text(canvas,"上一句歌词",previousY,sideSize,(active&0x00ffffff)|0x99000000,bold);text(canvas,"正在播放",350+verticalOffset,currentSize,active,bold);text(canvas,"下一句歌词",nextY,sideSize,(active&0x00ffffff)|0x99000000,bold);}
      canvas.restore();
    }
  }
}
