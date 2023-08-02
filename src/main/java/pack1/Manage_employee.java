package pack1;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class Manage_employee {
    
    @RequestMapping("/manage")
    public  String Handleforrm( Model object1) 
    {
        
      try 
        {
          List <records> list1=new ArrayList();
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  

Statement stmt1=con.createStatement();
            //step 4 excute query
            ResultSet rs=stmt1.executeQuery("select * from employee ");
            //displaying data
            
            while(rs.next())
            {
             //  System.out.printf(" "+rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7)+" "+rs.getString(8)+" "+rs.getString(9)+" "+rs.getString(10)+" "+rs.getString(11));
               // itemlist.add(rs.getString(2),rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7)+" "+rs.getString(8)+" "+rs.getString(9)+" "+rs.getString(10)+" "+rs.getString(11));
            records rec=new records(rs.getInt(1),rs.getString(2),
                    rs.getString(3),rs.getString(4)
                    ,rs.getString(5),rs.getString(6),rs.getString(7),
                    rs.getString(8),rs.getString(9),rs.getString(10)
                    ,rs.getString(11),rs.getString(12));
           list1.add(rec);
            
            }
            
             object1.addAttribute("list",list1);
//        System.out.println("List of your city is   ");
//        for(records x1:list1){
//             System.out.println(x1);
     //   }
           
            System.out.println(con);
        con.close();
        
        }
    
      catch(Exception k)
        {
            System.out.println(k.getMessage());
//             object1.addAttribute("msg","Unable to connect database");
             return"unable_to_conect";
        }
        if(Emp_Controller.sc==true)
        {
       return "manage_employee";
        }
        else
            return "login";
//return "newjsp";
      
    }
}
