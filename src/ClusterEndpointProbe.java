import java.net.*;
/** Low-volume TCP connection checks to the ICM address identified by OEM diagnostics. No login or writes. */
public class ClusterEndpointProbe {
 public static void main(String[] args){
  for(int port:new int[]{2221})try(Socket s=new Socket()){
   s.connect(new InetSocketAddress("172.20.1.40",port),500);
   System.out.println("172.20.1.40:"+port+" OPEN");
   s.setSoTimeout(4000);byte[] bytes=new byte[512];int n=s.getInputStream().read(bytes);System.out.println("BANNER="+(n<0?"EOF":new String(bytes,0,n,"UTF-8")));
  }catch(Exception e){System.out.println("172.20.1.40:"+port+" "+e.getClass().getSimpleName());}
 }
}
