import android.os.*;
import android.content.Context;
import android.graphics.*;
import android.media.MediaMetadata;
import android.media.session.*;
import android.text.*;
import org.json.*;
import java.lang.reflect.*;
import java.io.*;
import java.util.*;
import java.util.regex.*;

/** Reflection and LRC parsing shared by the music-card worker. */
public class ClusterLyrics {
  static Object call(Object o,String n,Class<?>[] t,Object... a)throws Exception{
    Method m=o.getClass().getMethod(n,t); m.setAccessible(true); return m.invoke(o,a);
  }
  static Object service(String name,IBinder b)throws Exception{
    if(b==null)throw new IllegalStateException(name+" unavailable");
    return Class.forName(name+"$Stub").getMethod("asInterface",IBinder.class).invoke(null,b);
  }
  static class Line { long time; String text; Line(long t,String s){time=t;text=s;} }
  static List<Line> parse(String lrc){
    List<Line> result=new ArrayList<>();
    Pattern p=Pattern.compile("\\[(\\d+):(\\d{2})(?:[.:](\\d{1,3}))?\\]");
    for(String row:lrc.split("\\r?\\n")){
      Matcher m=p.matcher(row); List<Long> times=new ArrayList<>(); int end=0;
      while(m.find()){
        String f=m.group(3); long ms=f==null?0:Long.parseLong((f+"000").substring(0,3));
        times.add(Long.parseLong(m.group(1))*60000+Long.parseLong(m.group(2))*1000+ms); end=m.end();
      }
      String text=row.substring(end).trim();
      if(text.matches("(?i)^(词|曲|词曲|作词|作曲|编曲|演唱|制作|监制|出品|发行)\\s*[:：].*"))continue;
      for(long t:times)result.add(new Line(t,text));
    }
    Collections.sort(result,new Comparator<Line>(){public int compare(Line a,Line b){return Long.compare(a.time,b.time);}}); return result;
  }
}
