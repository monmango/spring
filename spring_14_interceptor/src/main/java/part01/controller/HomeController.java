package part01.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


//http://localhost:8090/myintercetor/list.do
@Controller
public class HomeController {

	@RequestMapping("/list.do")
	public String listProcess() {
		System.out.println("list controller");
		return "part01/list";
	}
	
	@RequestMapping("/view.do")
	public String viewProcess() {
		System.out.println("view controller");
		return "part01/view";
	}
	
	@RequestMapping("/write.do")
	public String writeProcess() {
		System.out.println("write controller");
		return "part01/write";
	}

}// end class