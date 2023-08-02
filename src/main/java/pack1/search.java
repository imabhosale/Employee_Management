package pack1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class search{
    
    
     String na;
     
  @RequestMapping(value="/save1", method=RequestMethod.POST)
  public void save(HttpServletRequest hrs){
      

     na=hrs.getParameter("Name");
    //na.trim();
      System.out.println("name is  is"+na.trim());
   
    
    
}
    
    
    
//    @RequestMapping(value="/search_records",method=RequestMethod.POST)
    @RequestMapping("/search_records")
    public  String Handleforrm( Model object1) 
    {
        String x11=na;
      try 
        {
          List <records> list1=new ArrayList();
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
PreparedStatement stmt;  
stmt = con.prepareStatement("SELECT * FROM employee WHERE emp_name like '%"+x11+"%' or emp_title like '%"+x11+"%'"
        + "or emp_dept like '%"+x11+"%' or emp_email like '%"+x11+"%'");

//stmt.setString(1,x);//1 specifies the first parameter in the query  
String check="false";
String sk="true";
ResultSet rs=stmt.executeQuery();
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
              check="true";
            }
            System.out.println("printing "+x11);
            if(x11==null)
            {
                object1.addAttribute("previous","");
            }else
            {
                
                System.out.println("false");
                object1.addAttribute("previous",x11);
            }
             object1.addAttribute("list",list1);
             
        System.out.println("List of your city is   ");
         System.out.println(con);
            con.close();
           // System.out.println(check);
           if(check==sk){
               System.out.println(" true");
               if(Emp_Controller.sc==true){
               return "manage_employee";
               }
               else
               {
                   return "0";
               }
           }
           else{
               System.out.println("else");
               return"notfound";
             
           }
//        for(records x1:list1){
//             System.out.println(x1);
//        }
            
           
            
        
        }
        
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
             
            System.out.println("not found");
          
             return"unable_to_conect";
        }
        
       
    }
}
