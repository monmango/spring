package part03_exam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

   @Autowired
   private Service serviceImp;
   
   public MainController() {
      
   }
   
   public void setServiceImp(Service serviceImp) {
      this.serviceImp = serviceImp;
   }
   
   @RequestMapping("main.ko")
   public String process() {
	   serviceImp.prn();
      return "main";
   }
   
   
}//end class