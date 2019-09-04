package part02.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


//http://localhost:8090/myintercetor/index.do
@Controller
public class IndexController {
	
	@RequestMapping("/index.do")
	public String IndexController() {
		return "part02/index";
	}
	
	
	
	
}//end class
