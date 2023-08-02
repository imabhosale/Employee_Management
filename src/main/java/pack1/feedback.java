
package pack1;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class feedback {
    @RequestMapping("/feedback")
    public String handle(){
        if(Emp_Controller.sc==true){
        return "feedback";
        }
        else
            return "login";
    }
    
     @RequestMapping(value="/feedbackform",method=RequestMethod.POST)
    public  String Handleform() 
    {
              
     return "index";
     
    }
    
}
