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
public class update_records{
    
//    
//     @RequestMapping("/update1")
//    public  String updateformm1()
//    {
//        System.out.println("enter detilas to update");
//        return "update_employee1";
//    }
//    
    
     String na;
      int id;
  @RequestMapping(value="/update_1", method=RequestMethod.POST)
  public void save(HttpServletRequest hrs){
      

     na=hrs.getParameter("Name");
    //na.trim();
      System.out.println(" update id is"+na.trim());
      id=Integer.parseInt(na.trim());
    
    
}
    
    @RequestMapping("/updateform")
    public  String updateformm2(Model object11)
    {
        System.out.println("updating details");
        
        try{
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
 PreparedStatement stmt=con.prepareStatement("select * from employee where emp_id=?");  
  stmt.setInt(1, id);
  int empid=id;
object11.addAttribute("ide", empid);
object11.addAttribute("idemp", na.trim());
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
            System.out.println("found");
            if(Emp_Controller.sc==true){
              return "update_employee2";
            }
            else
                return "login";
       }
            System.out.println("notfound");
            System.out.println(rs.getString("EMP_NAME"));
     
        }
        catch(Exception ki)
        {
            System.out.println("error");
            System.out.println(ki.getMessage());
        }
        
        if(Emp_Controller.sc==true){
              return "notfound";
            }
        else
            return "login";
        
    }
    
    
   
    
    @RequestMapping(value="/updateform",method=RequestMethod.POST)
    public  String Handleformf( @RequestParam("title") String y,@RequestParam("id") String  x1,@RequestParam("name") String  a,
            @RequestParam("dob") String b,@RequestParam("doj") String  c,@RequestParam("city") String d,
            @RequestParam("pincode") String e,@RequestParam("mobile") String f,@RequestParam("state") String  g,
            @RequestParam("email") String h,@RequestParam("pancard") String i,Model object3) 
    {
        
         
       
        object3.addAttribute("msg","record updateed Successfully ");
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con12=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
 PreparedStatement stmt=con12.prepareStatement("update employee set EMP_TITLE=?,EMP_NAME=?,EMP_DOB=?,EMP_DOJ=?,"
          + "EMP_CITY=?,EMP_PINCODE=?,EMP_MOBILE=?,EMP_STATE=?,EMP_EMAIL=?,EMP_PAN =? where EMP_ID=?");  
                

stmt.setString(1,y);
stmt.setString(2,a);
stmt.setString(3,b);
stmt.setString(4,c);
stmt.setString(5,d);
stmt.setInt(6,Integer.parseInt(e));
stmt.setString(7,f);
stmt.setString(8,g);
stmt.setString(9,h);
stmt.setString(10,i);
stmt.setInt(11,Integer.parseInt(x1));
 
               stmt.executeUpdate();
               System.out.println("record updated successfully");
               
        }
         
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
            System.out.println("catch");
        }
        if(Emp_Controller.sc==true){
       return "index";
        }
        else
            return "login";

    }
}
