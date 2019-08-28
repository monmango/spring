package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DedailController {
	
	@RequestMapping("/detail.do")
	public String process() {
		return "detail";
	}// end process()
	
}// end class
