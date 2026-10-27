import java.net.*;
import java.io.*;
import java.util.regex.*;
/** Read-only OEM maintenance FTP client; no write/delete/execute commands. */
public class IcmReadOnlyFtp {
 static BufferedReader reader; static PrintWriter writer;
 static String reply()throws Exception{String first=reader.readLine();if(first==null)throw new EOFException();String last=first;if(first.length()>3&&first.charAt(3)=='-'){String end=first.substring(0,3)+" ";do{last=reader.readLine();if(last==null)throw new EOFException();}while(!last.startsWith(end));}return last;}
 static String command(String command)throws Exception{writer.print(command+"\r\n");writer.flush();return reply();}
 public static void main(String[] args)throws Exception{
  String pass=System.getenv("ICM_FTP_PASS");if(pass==null)throw new IllegalStateException("OEM credentials required");
  if(args.length<2||(!args[0].equals("LIST")&&!args[0].equals("GET")))throw new IllegalArgumentException("LIST path | GET remote local");
  if(args[1].contains("\r")||args[1].contains("\n"))throw new IllegalArgumentException();
  try(Socket control=new Socket()){
   control.connect(new InetSocketAddress("172.20.1.40",2221),3000);control.setSoTimeout(5000);
   reader=new BufferedReader(new InputStreamReader(control.getInputStream(),"UTF-8"));writer=new PrintWriter(control.getOutputStream());
   System.out.println("WELCOME "+reply());String r=command("USER root");if(r.startsWith("331"))r=command("PASS "+pass);
   if(!r.startsWith("230"))throw new IOException("OEM login rejected: "+r.substring(0,3));
   System.out.println("LOGIN accepted");System.out.println("SYSTEM "+command("SYST"));System.out.println("PWD "+command("PWD"));
   command("TYPE I");r=command("PASV");Matcher m=Pattern.compile("\\((\\d+),(\\d+),(\\d+),(\\d+),(\\d+),(\\d+)\\)").matcher(r);if(!m.find())throw new IOException("PASV failed "+r);
   int port=Integer.parseInt(m.group(5))*256+Integer.parseInt(m.group(6));
   try(Socket data=new Socket()){
    data.connect(new InetSocketAddress("172.20.1.40",port),3000);data.setSoTimeout(5000);
    r=command((args[0].equals("LIST")?"LIST ":"RETR ")+args[1]);if(!r.startsWith("150")&&!r.startsWith("125"))throw new IOException("Read rejected "+r);
    OutputStream out=args[0].equals("LIST")?System.out:new FileOutputStream(args[2]);long total=0;
    try{byte[] buffer=new byte[16384];int n;while((n=data.getInputStream().read(buffer))!=-1){total+=n;if(total>256L*1024*1024)throw new IOException("Read size limit exceeded");out.write(buffer,0,n);}}finally{if(out!=System.out)out.close();}
    System.out.println("\nBYTES "+total);
   }
   System.out.println("RESULT "+reply());command("QUIT");
  }
 }
}
