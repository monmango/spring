package part01_xml;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
AOP (Aspect Oriented Programming)
1. AOP는 문제를 바라보는 관점을 기준으로 프로그래밍하는 기법이다.
2. AOP는 문제를 해결하기 위한 핵심관심사항과 전체에 적용되는 공통관심사하을 기준으로 프로그래밍함으로써 공통 모듈을 여러 코드에 쉽게 적용할 수 있도록 해준다.
*/
@Controller
public class AopController {
	
	private Service svc;
	
	public AopController() {}
	
	public void setSvc(Service svc) {
		this.svc = svc;
	}

	@RequestMapping("proc.ap")
	public String process() {
		//svc.prn1();
		//svc.prn1(10);
		//svc.prn1(20,30);
		//svc.prn2();
		//svc.prn3();
		
		/*try {
			svc.prn4();
		} catch (Exception e) {
			System.out.println(e.toString());
		}*/
		svc.prn5();
		
		return "print";
	}
	
}// end class
