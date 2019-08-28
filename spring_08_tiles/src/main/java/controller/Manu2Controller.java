package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Manu2Controller {
	
	@RequestMapping("/menu2.do")
	public String process() {
		return "menu2"; 
	}// end process()
}// end class
