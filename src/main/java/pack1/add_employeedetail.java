
package pack1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class add_employeedetail {

        @RequestMapping("/addemployee")
    public String add_employeedetails(Model object,Model ob1){
        Random rn=new Random();
        int num=rn.nextInt(9999); //upto 4 digit
        System.out.println(" employee details");
        
       object.addAttribute("mrt",num);
//        ob1.addAttribute("mrt",departments);
       
        
      
      
      
      
       try 
        {
        List<String> departments = new ArrayList<>();//fetching departments.
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  

Statement stmt1=con.createStatement();
            //step 4 excute query
            ResultSet rs=stmt1.executeQuery("select dept_name from department");
            //displaying data
            
            while(rs.next())
            {
        departments.add(rs.getString(1));
            
            }
            
            System.out.println(departments);
            object.addAttribute("dept",departments);
            System.out.println(con);
        con.close();
        
        }
    
      catch(Exception k)
        {
            System.out.println(k.getMessage());
            System.out.println("there are some problems to connect to departments");
//             object1.addAttribute("msg","Unable to connect database");
             return"unable_to_conect";
        }
      
            System.out.println(num);
         if(Emp_Controller.sc==true){
       return "addemployee";
         }
         else
             return "login";
       
        
    }
   
    
    @RequestMapping(value="/addemployee",method=RequestMethod.POST)
    public  String Handleform(Model object1,@RequestParam("id") String id,
            @RequestParam("title") String title,
            @RequestParam("name") String name,@RequestParam("dob") String  dob,
            @RequestParam("doj") String doj,
            @RequestParam("city") String city,@RequestParam("pincode") String  pincode,
            @RequestParam("mobile") String mobile,
            @RequestParam("state") String state,@RequestParam("email") String  email,
            @RequestParam("pancard") String pancard,@RequestParam("department") String dept,
            @RequestParam("ti") String ti,@RequestParam("gi") String gi,@RequestParam("di") String di
           ) 
    {
        
        object1.addAttribute("msg","record inserted Successfully ");
      
        //System.out.println(dept);
        
        //object2.addAttribute(num1,num);
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
  PreparedStatement stmt=con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");  
stmt.setInt(1, Integer.parseInt(id));
stmt.setString(2,title);//1 specifies the first parameter in the query  
stmt.setString(3,name); 
stmt.setString(4,dob);//1 specifies the first parameter in the query  
stmt.setString(5,doj); 
stmt.setString(6,city);//1 specifies the first parameter in the query  
//stmt.setString(7,pincode); 
stmt.setInt(7, Integer.parseInt(pincode));
//stmt.setInt(8, Integer.parseInt(mobile));
stmt.setString(8,mobile);//1 specifies the first parameter in the query  
stmt.setString(9,state); 
stmt.setString(10,email);//1 specifies the first parameter in the query  
stmt.setString(11,pancard); 
stmt.setString(12,dept); 
stmt.setInt(13, 0);

stmt.setString(14,"NULL");
stmt.setString(15,ti); 
stmt.setString(16,gi); 

stmt.setString(17,di);
stmt.executeUpdate();
//         con.close();
        }       
                        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
            return"unable_to_conect";
        }
        
     return "index";
     
    }
}