import android.os.*;
import java.lang.reflect.*;
public class CardProbe {
 public static void main(String[] args)throws Exception{
  Looper.prepareMainLooper();
  IBinder b=(IBinder)Class.forName("android.os.ServiceManager").getMethod("getService",String.class).invoke(null,"car_service");
  Object car=ClusterLyrics.service("android.car.ICar",b);
  Object v=ClusterLyrics.service("android.car.hardware.XpVehicle.IXpVehicle",(IBinder)ClusterLyrics.call(car,"getCarService",new Class[]{String.class},"xp_vehicle"));
  System.out.println("speed="+ClusterLyrics.call(v,"getVcuRawCarSpeed",new Class[]{}));
  Object p=ClusterLyrics.service("android.car.hardware.property.ICarProperty",(IBinder)ClusterLyrics.call(car,"getCarService",new Class[]{String.class},"property"));
  try{System.out.println("CARD_STATE="+ClusterLyrics.call(p,"getProperty",new Class[]{int.class,int.class},0x21101616,0));}catch(Exception e){System.out.println("CARD_STATE_UNAVAILABLE="+e.getCause());}
  Object[] configs=(Object[])ClusterLyrics.call(p,"getPropertyArray",new Class[]{});
  for(int id:new int[]{0x21101613,0x21101614,0x21101615,0x21101616,0x2170166e}){
   boolean found=false;
   for(Object c:configs)if(((Number)ClusterLyrics.call(c,"getPropertyId",new Class[]{})).intValue()==id){System.out.println("SUPPORTED "+Integer.toHexString(id)+" "+c);found=true;}
   if(!found)System.out.println("NOT_ADVERTISED "+Integer.toHexString(id));
  }
 }
}
