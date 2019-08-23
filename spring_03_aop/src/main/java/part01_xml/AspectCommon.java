package part01_xml;

import org.aspectj.lang.ProceedingJoinPoint;

/*공통로직만 구현해놓은 클래스*/
public class AspectCommon {

	public AspectCommon() {}
	
	public void comm1() {
		System.out.println("before");
	}// end comm1()
	
	public void comm2() {
		System.out.println("after");
	}// end comm2()
	
	public void comm3(String name) {
		System.out.println("comm3: " + name);
	}// end comm3()
	
	public void comm4(Exception ex) {
		if(ex != null)
		System.out.println(ex.toString()); /*잇셉션이 아나미면 출력*/
	}// end comm4()
	
	public void comm5(ProceedingJoinPoint point) { /*핵심로직을 받기 위한 프로세서*/
		System.out.println("comm5 start");		
		try {
			point.proceed();
		} catch (Throwable e) {
			e.printStackTrace();
		}
		System.out.println("comm5 end");
	}// end comm5()
}// end class
