package part01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


// http://localhost:8090/mytx/firstmain.st
@Controller
public class MainController {
	
	private Service svc;
	
	public MainController() {}

	public void setSvc(Service svc) {
		this.svc = svc;
	}
	
	@RequestMapping("firstmain.st")
	public void execute() {
		svc.insertProcess();
	}
	
}// end class
