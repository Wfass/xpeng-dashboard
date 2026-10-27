import android.os.*;
import org.json.*;

/** Single-card experiment. A1 template value is inferred from the framework model, not confirmed. */
public class LyricCardTrial {
 static final String CARD_ID="wayne_lyrics_01";
 static JSONObject payload(String action)throws Exception{
  JSONObject card=new JSONObject().put("cardId",CARD_ID);
  if(!action.equals("remove"))card.put("cardType","A1").put("title","歌词")
    .put("hasPic",false).put("mainContent","歌词卡片测试")
    .put("subContent","独立歌词页面").put("sContent1","").put("sContent2","")
    .put("cardContent",new JSONObject());
  return new JSONObject().put("msgId","lyrics_"+System.currentTimeMillis()).put("card",card);
 }
 public static void main(String[] args)throws Exception{
  String action=args.length==0?"preview":args[0];
  if(action.equals("preview")){System.out.println(payload("add").toString(2));return;}
  if(!action.equals("add")&&!action.equals("update")&&!action.equals("remove"))throw new IllegalArgumentException("preview|add|update|remove");
  Looper.prepareMainLooper();
  IBinder binder=(IBinder)Class.forName("android.os.ServiceManager").getMethod("getService",String.class).invoke(null,"car_service");
  Object car=ClusterLyrics.service("android.car.ICar",binder);
  Object vehicle=ClusterLyrics.service("android.car.hardware.XpVehicle.IXpVehicle",(IBinder)ClusterLyrics.call(car,"getCarService",new Class[]{String.class},"xp_vehicle"));
  float speed=((Number)ClusterLyrics.call(vehicle,"getVcuRawCarSpeed",new Class[]{})).floatValue();
  int gear=((Number)ClusterLyrics.call(vehicle,"getVcuRealGearLevel",new Class[]{})).intValue();
  if(!Float.isFinite(speed)||speed!=0f||gear!=4)throw new IllegalStateException("Parked trial only: speed="+speed+" gear="+gear);
  String method=action.equals("add")?"setIcmInfoCardAdd":action.equals("update")?"setIcmInfoCardUpdate":"setIcmInfoCardRemove";
  String message=payload(action).toString();
  ClusterLyrics.call(vehicle,method,new Class[]{String.class},message);
  System.out.println("REQUEST_RETURNED action="+action+" cardId="+CARD_ID+" (does not confirm instrument display)");
 }
}
