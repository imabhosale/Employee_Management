
package pack1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class grade {
    @RequestMapping("/grade")
    public String handle(){
        if(Emp_Controller.sc==true){
        return "grade";
        }
        else
            return "login";
    }
     @RequestMapping(value="/gradeform",method=RequestMethod.POST)
    public  String Handleform(Model object1,@RequestParam("grade_id") String id,
            @RequestParam("grade_name") String name,
            @RequestParam("grade_sn") String sn,
            @RequestParam("grade_basic") String basic,@RequestParam("grade_ta") String  ta,
            @RequestParam("grade_da") String da,
            @RequestParam("grade_hra") String hra,@RequestParam("grade_ma") String  ma,
            @RequestParam("grade_bonus") String bonus,@RequestParam("grade_pf") String pf, @RequestParam("grade_pt") String pt
           ) 
    {
        
        object1.addAttribute("msg","record inserted Successfully ");
      
       
        
        //object2.addAttribute(num1,num);
      try 
        {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");  
  
//step2 create  the connection object  
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","root@123");  
  PreparedStatement stmt=con.prepareStatement("insert into gradedetail values(?,?,?,?,?,?,?,?,?,?,?)");  

stmt.setString(1,id);//1 specifies the first parameter in the query  
stmt.setString(2,name); 
stmt.setString(3,sn);//1 specifies the first parameter in the query  
stmt.setString(4,basic); 
stmt.setString(5,ta);//1 specifies the first parameter in the query  

stmt.setString(6,da);
stmt.setString(7,hra);
stmt.setString(8,ma);//1 specifies the first parameter in the query  
stmt.setString(9,bonus); 
stmt.setString(10,pf);//1 specifies the first parameter in the query  
stmt.setString(11,pt); 
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
