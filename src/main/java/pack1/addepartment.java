package pack1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class addepartment {
     
    @RequestMapping("/addepart")
    public String ldogsin(){
        if(Emp_Controller.sc==true){
        return "add_department";
        }
        else
            return "login";
    }

    @RequestMapping(value="/deaprtform",method=RequestMethod.POST)
    public  String Handleformf( @RequestParam("name") String x,@RequestParam("id") String y,Model object2) 
    {
        object2.addAttribute("msg","department added Successfully");
      try 
        {
            
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");
PreparedStatement stmt=con.prepareStatement("insert into department values(?,?)");
               

stmt.setString(2,x);
stmt.setInt(1,Integer.parseInt(y));
 
               stmt.executeUpdate();
  
            }
            catch(Exception k){
                System.out.println(k.getMessage());
                System.out.println("Error Found during formfill");
                return"unable_to_conect";
            }
      
      object2.addAttribute("page","add_department");
            return "index";
        }
}