package pack1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
//import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

 
   
@Controller
public class Emp_Controller {
  String username="",password="";
   static boolean sc=false;
  
    @RequestMapping("/login")
    public String login(){
        System.out.println("welcome to login kunal ");
      return "login";
    }
    
    @RequestMapping("/manage_dept")
    public String manage_dept(){
       if(sc==true){
           return "manage_department";
       }
       else{
           return "login";
       }  
    }
 
    @RequestMapping(value="/processformkunal",method=RequestMethod.POST)
    public  String Handleform( @RequestParam("a") String  x,
            @RequestParam("b") String y,Model object1) 
    {
        object1.addAttribute("msg","Login Successfully ");
          username=x;
               
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
//  

PreparedStatement stmt=con.prepareStatement("select * from admin2 where username=? and password=?");  
stmt.setString(1,x);//1 specifies the first parameter in the query  
stmt.setString(2,y);  
ResultSet rs=stmt.executeQuery();
String l="",m="";
       while(rs.next())
       {
           System.out.println("HELLO CHECKING");
           m=rs.getString("username");
           l=rs.getString("password");
           
       }
           
            System.out.println(m +" "+ l);
            if(x.equals(m) && y.equals(l))
            {
                        username=m;
                        password=l;
              sc=true;
              
                con.close();
                return "home";
            }
            else
            {
                System.out.println("error");
                 con.close();
                return "login";
            }
            
            //System.out.println(m);
        }
      catch(Exception k)
        {
            System.out.println(k.getMessage());
          return "unable_to_conect";
        }

  
    }
           
//    @RequestMapping("/new")
//    public String wel(){
//     
//        return"newjsp";
//
//    }
     
    @RequestMapping("/home")
    public String weql(){
     if(sc==true){
        return"home";
     }
     else
         return "login";

    }
    
     @RequestMapping("/notfound")
    public String welq(){
     
        return"notfound";
    }
    
    @RequestMapping("/new1")
    public String welqr(){
     if(sc==true){
        return"newjsp1";
     }
     else
//{
         return "login";
//     }
//     }
    }
     @RequestMapping(value="/index_form",method=RequestMethod.POST)
    public  String Handleformq( @RequestParam("a") String  pg)
    {
       
        System.out.println(pg);
        return"#";
    }
    
    
    
    
     @RequestMapping("/profile")
    public String login2( Model obj){
       
 System.out.println(username +" "+ password);
  try 
        {
           
       
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
  PreparedStatement stmt=con.prepareStatement("select * from admin2 where username=? and password=? ");  
//  stmt.setInt(1, Integer.parseInt(x));
stmt.setString(1,username);//1 specifies the first parameter in the query  
stmt.setString(2,password);  
ResultSet rs=stmt.executeQuery();
       while(rs.next())
       {
           obj.addAttribute("adminname", rs.getString(1));
             obj.addAttribute("admindoj", rs.getString(2));
             obj.addAttribute("admincity", rs.getString(3));
             
             obj.addAttribute("adminmobile", rs.getString(4));
             obj.addAttribute("adminemail", rs.getString(5));
             
             obj.addAttribute("adminusername", rs.getString(6));
             System.out.println(rs.getString(4));
             System.out.println("profile working");
       }
           
        }
        
        
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
            return "unable_to_conect";
        }
        
// return "profile";

if(sc==true){
return "profile";
    }
else
    return "login";
    }
}

