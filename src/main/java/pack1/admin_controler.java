package pack1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class admin_controler{
//      Random rn=new Random();
//        int num=rn.nextInt(9999);
        
        @RequestMapping("/adminsignup")
    public String add_employeedetails(Model object){
//        Random rn=new Random();
//        int num=rn.nextInt(9999); //upto 4 digit
//        System.out.println("loginpage");
//      add_employeedetail kun=new add_employeedetail();
     // object1.addAttribute("number","num");
          //  System.out.println(num);
         
       // object1.addAttribute("kun","record inserted Successfully ");
      //  object.addAttribute("mrt",num);
        return "adminsingup";
        
        
    }
   
    
    @RequestMapping(value="/adminsignup",method=RequestMethod.POST)
    public  String Handleform(Model object1,
           
            @RequestParam("name") String name,
            @RequestParam("doj") String doj,
            @RequestParam("city") String city,
            @RequestParam("mobile") String mobile,
           @RequestParam("email") String  email,
            @RequestParam("username") String username,
            @RequestParam("password") String password
           ) 
    {
        
        object1.addAttribute("msg","record inserted Successfully ");
      
        
        
        //object2.addAttribute(num1,num);
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
  PreparedStatement stmt=con.prepareStatement("insert into admin2 values(?,?,?,?,?,?,?)");  

  
stmt.setString(1,name); 

stmt.setString(2,doj); 
stmt.setString(3,city);//1 specifies the first parameter in the query  
//stmt.setString(7,pincode); 

//stmt.setInt(8, Integer.parseInt(mobile));
stmt.setString(4,mobile);//1 specifies the first parameter in the query  

stmt.setString(5,email);//1 specifies the first parameter in the query  
stmt.setString(6,username);
stmt.setString(7,password);
         stmt.executeUpdate();
         con.close();
        }       
                        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
            return"unable_to_conect";
        }
        
        
     return "login";
     
    }
    
//     @RequestMapping("/new")
//    public String add_employeedetailas(Model object2){
//        System.out.println("eneter employee details");
//        int num=96;
//         object2.addAttribute("number","num");
//        return "newjsp";
//    }
}