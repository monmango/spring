package part02;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	private Service svc;
	
	public MainController() {}

	
	
	public void setSvc(Service svc) {
		this.svc = svc;
	}



	@RequestMapping("secondmain.ss")
	public void execute() {
		/*트렌잭션이 설정된 메소드에서는 try~ catch를 설정하면 안된다.
		메소드를 호출하는 곳에서  try~ catch를 한다.*/
		try {
			svc.insertProcess();
			System.out.println("result : ok");
		} catch (Exception e) {
			System.out.println("result: " + e.toString());
		}
		
	}
}// end class
