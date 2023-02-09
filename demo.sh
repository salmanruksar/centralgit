import java.io.IOException;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class themain{
public static void main(String[] args){
    Process ls=null;
    BufferedReader input=null;
    String line=null;
    String[] cmd = {"sudo shutdown -h +20"};


        try {

               ls= Runtime.getRuntime().exec(cmd);
               input = new BufferedReader(new InputStreamReader(ls.getInputStream()));

            } catch (IOException e1) {
                e1.printStackTrace();  
                System.exit(1);
            }


           try {
                   while( (line=input.readLine())!=null)
                    System.out.println(line);

            } catch (IOException e1) {
                e1.printStackTrace();  
                System.exit(0);
            }        
}

} 

