
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
public class delete_records {
    
    
//    @RequestMapping("/delete")
//public String deleteform ()    
//{
//    System.out.println("eneter id to be deleted  ");   
//    return "delete_employee";
//}

    String na;
      int id;
  @RequestMapping(value="/delete_1", method=RequestMethod.POST)
  public void save(HttpServletRequest hrs){
      

     na=hrs.getParameter("Name");
    //na.trim();
      System.out.println(" delete id is"+na.trim());
      id=Integer.parseInt(na.trim());
    
    
}
 

@RequestMapping("/deleteform")
    public  String updateformm2(Model object11)
    {
        System.out.println("searching records");
        
        try{
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
 PreparedStatement stmt=con.prepareStatement("select * from employee where emp_id=?");  
  stmt.setInt(1, id);
  int empid=id;
object11.addAttribute("ide", na.trim());
//  stmt.setString(1, x);
//  stmt.setString(2, x);
//  stmt.setString(3, x);
ResultSet rs=stmt.executeQuery();
       while(rs.next())
       {
           object11.addAttribute("title", rs.getString("EMP_TITLE"));
             object11.addAttribute("name", rs.getString("EMP_NAME"));
             object11.addAttribute("dob", rs.getString("EMP_DOB"));
             object11.addAttribute("doj", rs.getString("EMP_DOJ"));
             object11.addAttribute("city", rs.getString("EMP_CITY"));
             object11.addAttribute("pincode", rs.getString("EMP_PINCODE"));
             object11.addAttribute("mobile", rs.getString("EMP_MOBILE"));
             object11.addAttribute("state", rs.getString("EMP_STATE"));
             object11.addAttribute("email", rs.getString("EMP_EMAIL"));
             object11.addAttribute("pan", rs.getString("EMP_PAN"));
             if(Emp_Controller.sc==true){
            return "delete_employee2";
             }
             else
                 return "login";
       }
            System.out.println(rs.getString("EMP_NAME"));
            con.close();
     
        }
        catch(Exception ki)
        {
            System.out.println(ki.getMessage());
        }
        
        if(Emp_Controller.sc==true){
        return "notfound";
        }
        else
            return "0";
    }
@RequestMapping(value="/deleteformprocess",method=RequestMethod.POST)
    public  String Handleformm( @RequestParam("a") String  x,Model object1)
            
    {
        
         
       
        object1.addAttribute("msg","record deleted Successfully ");
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
  PreparedStatement stmt=con.prepareStatement("delete from employee where emp_id=?");  
  stmt.setInt(1, Integer.parseInt(x));

         stmt.executeUpdate(); //it is used for all insert , update ,delete 
         con.close();
        }
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
            return"unable_to_conect";
        }
        String k;
     
      return "index";
    
    }

    
}
