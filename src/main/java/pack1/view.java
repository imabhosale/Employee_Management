
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
//import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class view {
    
    
      String na;
      int id;
  @RequestMapping(value="/save", method=RequestMethod.POST)
  public void save(HttpServletRequest hrs){
      

     na=hrs.getParameter("Name");
    //na.trim();
      System.out.println("id is"+na.trim());
      id=Integer.parseInt(na.trim());
    
    
}
 
    
    
    
//     @RequestMapping("/view1")
//    public  String Handleformq2( )
//    {
//        System.out.println("getting id value");
//       
//        return"view_employee1";
//    }
    
//    @RequestMapping(value="/viewrecord",method=RequestMethod.POST)
  @RequestMapping("/view_details")
    public  String view_employee( Model object11)
    {
        //String x=na;
        System.out.println("display details");
        
        try{
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
 PreparedStatement stmt=con.prepareStatement("select * from employee where emp_id=?");  
  stmt.setInt(1, id);
  int empid=id;
object11.addAttribute("ide", empid);
object11.addAttribute("idemp", na);
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
             object11.addAttribute("dept", rs.getString("EMP_DEPT"));
            System.out.println("found");
            if(Emp_Controller.sc==true){
              return "view_employee";
            }
            else
                return "login";
       }
            System.out.println("notfound");
            System.out.println(rs.getString("EMP_NAME"));
     
        }
        catch(Exception ki)
        {
            System.out.println("error in string id");
            System.out.println(ki.getMessage());
        }
        
        
        
        
        
        if(Emp_Controller.sc==true){
        return "notfound";
        }
        else
            return "login";
    }

      @RequestMapping("/new")
    public String wel(){
     
        if(Emp_Controller.sc==true){
        return"newjsp";
        }
        else
            return "login";

    }
    
    
    
    
    
    
    
    
    
}
