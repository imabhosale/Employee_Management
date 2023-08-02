package pack1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class manage_department {
    
    
     String na;
      int id;
  @RequestMapping("/update_depart")
  public void save(HttpServletRequest hrs){
      

     na=hrs.getParameter("Name");

      System.out.println(" update department id is"+na.trim());
      id=Integer.parseInt(na.trim());
        }
  
@RequestMapping("/getdetails")
    public  String updatefm2(Model object11)
    {
        System.out.println("getting details");
        
        try{
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
 PreparedStatement stmt=con.prepareStatement("select * from department where dept_id=?");  
  stmt.setInt(1, id);
  //int empid=id;
//object11.addAttribute("ide", empid);
object11.addAttribute("idemp", na.trim());
//  stmt.setString(1, x);
//  stmt.setString(2, x);
//  stmt.setString(3, x);
ResultSet rs=stmt.executeQuery();
       while(rs.next())
       {
           object11.addAttribute("deptname", rs.getString("DEPT_NAME"));
             object11.addAttribute("deptid", rs.getString("DEPT_ID"));
             
            System.out.println(" department found");
              return "update_department";
       }
            System.out.println("notfound");
            //System.out.println(rs.getString("EMP_NAME"));
     
        }
        catch(Exception ki)
        {
            System.out.println("error");
            System.out.println(ki.getMessage());
        }
        
        
        return "notfound";
    }
    
    
   
    
    @RequestMapping(value="/updateeform",method=RequestMethod.POST)
    public  String Handlweeformf( @RequestParam("dept_id") String y,@RequestParam("dept_name") String  x1) 
    {
        
         
       
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con12=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
 PreparedStatement stmt=con12.prepareStatement("update department set DEPT_ID=?,DEPT_NAME=? where DEPT_ID=?");  
                
stmt.setInt(1,Integer.parseInt(y));
stmt.setString(2,x1);
stmt.setInt(3,id);


 
               stmt.executeUpdate();
               System.out.println("department updated successfully");
               
        }
         
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
            System.out.println("catch");
        }
        
       return "index";

    }
}
  
  
  
  
  
    

