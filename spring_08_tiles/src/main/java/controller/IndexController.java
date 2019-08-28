package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


//http://localhost:8090/mytiles/index.do

@Controller
public class IndexController {

	@RequestMapping("/index.do")
	public String process() {
		return "index"; /*tiles.xml의 index를 찾는다.*/
	}// end process()
}// end class
