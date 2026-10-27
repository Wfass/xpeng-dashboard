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
  private static final int[] COLORS={Color.WHITE,Color.rgb(82,220,255),Color.rgb(255,211,90),Color.rgb(111,231,160),Color.rgb(255,133,176),Color.rgb(175,151,255)};
  private static final String[] COLOR_NAMES={"白","青","金","绿","粉","紫"};
  private final Handler handler=new Handler(Looper.getMainLooper());
  private File settingsFile;
  private int color=Color.WHITE,currentSize=124,sideSize=42,verticalGap=170,lineSpacing=4;
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
    TextView hint=label("预览示例 · 仪表画面 660 × 660",13,MUTED);hint.setGravity(Gravity.CENTER);left.addView(hint,new LinearLayout.LayoutParams(-1,dp(34)));
    LinearLayout.LayoutParams lp=new LinearLayout.LayoutParams(0,-1,0.46f);body.addView(left,lp);
    ScrollView scroll=new ScrollView(this);scroll.setFillViewport(false);
    LinearLayout controls=new LinearLayout(this);controls.setOrientation(LinearLayout.VERTICAL);controls.setPadding(dp(22),dp(8),dp(4),dp(8));
    controls.addView(section("当前歌词颜色"));paletteRow=(LinearLayout)palette();controls.addView(paletteRow);
    controls.addView(section("排版"));
    addSlider(controls,"当前歌词字号",72,140,currentSize," px",new Change(){public void set(int v){currentSize=v;changed();}});
    addSlider(controls,"上下句字号",24,56,sideSize," px",new Change(){public void set(int v){sideSize=v;changed();}});
    addSlider(controls,"上下句间距",145,205,verticalGap," px",new Change(){public void set(int v){verticalGap=v;changed();}});
    addSlider(controls,"多行歌词行距",0,24,lineSpacing," px",new Change(){public void set(int v){lineSpacing=v;changed();}});
    TextView note=label("设置会保存在本机。歌词绘制程序运行时会自动读取；目前绘制程序保持停止。",13,MUTED);note.setPadding(0,dp(10),0,dp(10));controls.addView(note);
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
    for(int i=0;i<COLORS.length;i++){
      final int selected=COLORS[i];LinearLayout item=new LinearLayout(this);item.setOrientation(LinearLayout.VERTICAL);item.setGravity(Gravity.CENTER);
      TextView dot=label(COLORS[i]==color?"✓":"●",COLORS[i]==color?22:29,COLORS[i]);dot.setGravity(Gravity.CENTER);dot.setBackground(round(PANEL,dp(10)));item.addView(dot,new LinearLayout.LayoutParams(dp(52),dp(44)));
      TextView name=label(COLOR_NAMES[i],12,MUTED);name.setGravity(Gravity.CENTER);item.addView(name,new LinearLayout.LayoutParams(dp(52),dp(24)));
      item.setOnClickListener(new View.OnClickListener(){public void onClick(View v){color=selected;changed();}});
      row.addView(item,new LinearLayout.LayoutParams(dp(62),dp(70)));
    }
    Button custom=new Button(this);custom.setText("自定义颜色");custom.setTextSize(12);custom.setTextColor(WHITE);custom.setAllCaps(false);custom.setBackground(round(PANEL,dp(10)));custom.setOnClickListener(new View.OnClickListener(){public void onClick(View v){showColorDialog();}});
    row.addView(custom,new LinearLayout.LayoutParams(dp(116),dp(46)));
    return row;
  }
  private void showColorDialog(){
    final int old=color;final int[] rgb={Color.red(color),Color.green(color),Color.blue(color)};final TextView sample=label(String.format("#%02X%02X%02X",rgb[0],rgb[1],rgb[2]),18,WHITE);sample.setGravity(Gravity.CENTER);sample.setPadding(0,dp(8),0,dp(8));
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
      dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(new View.OnClickListener(){public void onClick(View v){color=Color.rgb(rgb[0],rgb[1],rgb[2]);previewColor=0;dialog.dismiss();if(preview!=null)preview.invalidate();changed();}});
      dialog.getButton(AlertDialog.BUTTON_NEGATIVE).setOnClickListener(new View.OnClickListener(){public void onClick(View v){previewColor=0;dialog.dismiss();if(preview!=null)preview.invalidate();}});
    }});
    dialog.setOnCancelListener(new android.content.DialogInterface.OnCancelListener(){public void onCancel(android.content.DialogInterface d){previewColor=0;if(preview!=null)preview.invalidate();}});
    dialog.show();
  }
  private interface Change{void set(int value);}
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
    for(int i=0;i<COLORS.length&&i<paletteRow.getChildCount();i++){
      View item=paletteRow.getChildAt(i);if(!(item instanceof LinearLayout))continue;View first=((LinearLayout)item).getChildAt(0);if(first instanceof TextView){TextView dot=(TextView)first;boolean selected=COLORS[i]==color;dot.setText(selected?"✓":"●");dot.setTextSize(selected?22:29);dot.setTextColor(COLORS[i]);}
    }
  }
  private void scheduleSave(){if(pendingSave!=null)handler.removeCallbacks(pendingSave);pendingSave=new Runnable(){public void run(){save();}};handler.postDelayed(pendingSave,450);}
  private void save(){
    try{
      JSONObject json=new JSONObject().put("version",1).put("color",color&0x00ffffff).put("currentSize",currentSize).put("sideSize",sideSize).put("verticalGap",verticalGap).put("lineSpacing",lineSpacing);
      File parent=settingsFile.getParentFile();if(parent!=null&&!parent.exists()&&!parent.mkdirs())throw new IllegalStateException("无法创建设置目录");
      try(FileOutputStream out=new FileOutputStream(settingsFile)){out.write(json.toString().getBytes(StandardCharsets.UTF_8));out.flush();out.getFD().sync();}
      settingsFile.setReadable(true,false);if(saveStatus!=null)saveStatus.setText("已保存 · 下次歌词刷新时生效");
    }catch(Exception e){if(saveStatus!=null)saveStatus.setText("保存失败："+e.getMessage());}
  }
  private void load(){
    if(!settingsFile.isFile())return;
    try(FileInputStream in=new FileInputStream(settingsFile)){
      byte[] b=new byte[(int)Math.min(settingsFile.length(),8192)];int n=in.read(b);if(n<=0)return;JSONObject j=new JSONObject(new String(b,0,n,StandardCharsets.UTF_8));
      color=j.optInt("color",color)|0xff000000;currentSize=clamp(j.optInt("currentSize",currentSize),72,140);sideSize=clamp(j.optInt("sideSize",sideSize),24,56);verticalGap=clamp(j.optInt("verticalGap",verticalGap),145,205);lineSpacing=clamp(j.optInt("lineSpacing",lineSpacing),0,24);
    }catch(Exception ignored){}
  }
  private int clamp(int v,int min,int max){return Math.max(min,Math.min(max,v));}

  private class Preview extends View {
    final Paint p=new Paint(Paint.ANTI_ALIAS_FLAG);
    Preview(){super(LyricsControlActivity.this);setBackgroundColor(BG);}
    void text(Canvas c,String s,float y,float size,int color,boolean bold){p.setColor(color);p.setTextSize(size);p.setTextAlign(Paint.Align.CENTER);p.setTypeface(Typeface.create("sans-serif",bold?Typeface.BOLD:Typeface.NORMAL));c.drawText(s,330,y,p);}
    @Override protected void onDraw(Canvas canvas){
      super.onDraw(canvas);float sx=getWidth()/660f,sy=getHeight()/660f;canvas.save();canvas.scale(sx,sy);
      p.setColor(PANEL);canvas.drawRoundRect(new RectF(0,0,660,660),22,22,p);
      text(canvas,"歌曲名称",72,38,0xddffffff,false);text(canvas,"歌手名称",120,30,0x99ffffff,false);
      int active=previewColor==0?color:previewColor;
      text(canvas,"上一句歌词",350-verticalGap,sideSize,(active&0x00ffffff)|0x99000000,false);
      text(canvas,"正在播放",350,currentSize,active,true);
      text(canvas,"下一句歌词",350+verticalGap,sideSize,(active&0x00ffffff)|0x99000000,false);
      canvas.restore();
    }
  }
}
