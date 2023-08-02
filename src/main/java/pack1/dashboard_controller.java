
package pack1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class dashboard_controller {
    
    @RequestMapping("/dashboard")
    public String login(Model object351){
        
        try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
//  

//PreparedStatement stmt=con.prepareStatement("select * from admin where username=? and password=?");  
PreparedStatement stmt=con.prepareStatement("select count(emp_id) from employee"); 

ResultSet rs=stmt.executeQuery();

String rows="";

while(rs.next())
       {
           rows=rs.getString(1);
      
       }
object351.addAttribute("count",rows);
            System.out.println("mo of count"+rows);
            PreparedStatement stmt2=con.prepareStatement("select count(dept_id) from department"); 
            ResultSet rs2=stmt2.executeQuery();
            String k="";
      while(rs2.next())
       {
         k=rs2.getString(1);
      
       }
            System.out.println("depatment"+k);
            object351.addAttribute("count_dep",k);
             con.close();
        }
      catch(Exception k)
        {
            System.out.println("error");
            System.out.println(k.getMessage());
            return"unable_to_conect";
            //return "error";
        }

        
        
       
        if(Emp_Controller.sc==true){
      return "dashboard";
        }
        else
            return "login";
 
    }
//    x
    
}
