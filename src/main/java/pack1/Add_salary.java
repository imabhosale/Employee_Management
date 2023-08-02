
package pack1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Add_salary {
    
    
    int flag=0,salary=0;
    int hra,bonus,ta,gross,TA,pf,ma,net,pt;
    
     @RequestMapping("/salary")
    public String ldogsin(Model object2){
        
        
        
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
            
            
            object2.addAttribute("dept",departments);
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
      if(Emp_Controller.sc==true)
      {
          return "salary";
      }
      else
          return "denied";
    }

    

 @RequestMapping(value="/addsalary",method=RequestMethod.POST)
    public  String Handleform2(Model ob,@RequestParam("id") String id,
            @RequestParam("department") String department,
            @RequestParam("grade") String grade,@RequestParam("spm") String  spm
           )
                       
    {
        
        System.out.println("calculating Salary");
       
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
 PreparedStatement stmt=con.prepareStatement("select * from employee where emp_id=? and emp_dept=?");  
stmt.setInt(1, Integer.parseInt(id));
stmt.setString(2,department);  
flag=0;
ResultSet rs=stmt.executeQuery();

       while(rs.next())
       {
           System.out.println("employee found to  add salary ");
           
         //con.close();
//         return"salary";
        flag=1;
        }
       
//        PreparedStatement stmt2=con.prepareStatement("update employee set emp_grade=? where EMP_ID=?");  
//stmt.setString(1,grade);  
//
//        stmt.setInt(2, Integer.parseInt(id));
//ResultSet rs2=stmt2.executeQuery();
       if(flag==1)
       { 
           if(grade.equals("Pay Grade 1"))
           {
               salary=Integer.parseInt(spm);
               System.out.println("1st");
               hra=salary/10;
               TA=salary/10;
               ma=salary/19;
               gross=salary/25;
              bonus=salary/38;
               pf=(salary*12)/100;
               pt=(salary*6)/100;
               net=salary+bonus+hra+TA+ma-gross-pf-pt;
               System.out.println("salary"+salary+"hra"+hra+"ta"+TA+"ma"+ma+"gross"+gross+"pf"+pf+"net "+net);
               
           }
           else if(grade.equals("Pay Grade 2"))
           {
               
               salary=Integer.parseInt(spm);
             
               System.out.println("1st");
               hra=salary/12;
               TA=salary/12;
               ma=salary/21;
               gross=salary/23;
               bonus=salary/40;
               pf=(salary*13)/100;
               pt=(salary*7)/100;
               net=salary+bonus+hra+TA+ma-gross-pf-pt;
               System.out.println("salary"+salary+"hra"+hra+"ta"+TA+"ma"+ma+"gross"+gross+"pf"+pf+"net "+net);
               
               
               System.out.println("second grade ");
           }

           else if(grade.equals("Pay Grade 3"))
           {
               salary=Integer.parseInt(spm);
               
               System.out.println("1st");
               hra=salary/14;
               TA=salary/14;
               ma=salary/23;
               gross=salary/21;
               bonus=salary/42;
               pf=(salary*15)/100;
               pt=(salary*8)/100;
               net=salary+bonus+hra+TA+ma-gross-pf-pt;
               
               System.out.println("third");
           }
            else if(grade.equals("Pay Grade 4"))
           {
               salary=Integer.parseInt(spm);System.out.println("1st");
               hra=salary/16;
               TA=salary/16;
               ma=salary/25;
               gross=salary/18;
               bonus=salary/44;
               pf=(salary*17)/100;
               pt=(salary*9)/100;
               net=salary+bonus+hra+TA+ma-gross-pf-pt;
               
               
               System.out.println("fourth grade");
           }
           else{
               
           } 
           
           
                   ob.addAttribute("salary",salary);
                   ob.addAttribute("hra",hra);
                   ob.addAttribute("TA",TA);
                   ob.addAttribute("ma",ma);
                   ob.addAttribute("pf",pf);
                   ob.addAttribute("net",net);
                   ob.addAttribute("gross",gross);
                   ob.addAttribute("pt",pt);
                   ob.addAttribute("bonus",bonus);
                   ob.addAttribute("id",id);
                   ob.addAttribute("dept",department);
 ob.addAttribute("grade",grade);

           con.close();
           
           if(Emp_Controller.sc==true){
                   return "salary2";
           
           }
           else
               return "denied";
           
       }
       else{
           return "notfound";
       }
       
       
       
       
       
       
       
        }       
                        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
            return"unable_to_conect";
        }
          
    }
    
    @RequestMapping(value="/addsalary2",method=RequestMethod.POST)
    public  String Han( @RequestParam("sal_id") String  x1,Model object3) 
    {
        
         
       
        object3.addAttribute("msg","record updateed Successfully ");
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con12=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
 PreparedStatement stmt=con12.prepareStatement("update employee set salary=? where EMP_ID=?");  
                
stmt.setInt(1,net);
stmt.setInt(2,Integer.parseInt(x1));

 
               stmt.executeUpdate();
               System.out.println("Salary updated successfully");
               
        }
         
        
        
        catch(Exception k)
        {
            System.out.println(k.getMessage());
            System.out.println("catch");
        }
        
       return "index";

    }
    
    
}