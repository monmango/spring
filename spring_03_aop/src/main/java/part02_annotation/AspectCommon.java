package part02_annotation;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Service;

/*공통로직만 구현해놓은 클래스 - 공통관점*/

@Aspect @Service
public class AspectCommon {

	public AspectCommon() {}
	
	@Before("execution(* part02_annotation.ServiceImp.prn1(..))")
	public void comm1() {
		System.out.println("before");
	}// end comm1()
	@After("execution(* part02_annotation.ServiceImp.prn2(..))")
	public void comm2() {
		System.out.println("after");
	}// end comm2()
	
	@AfterReturning(value="execution(* part02_annotation.ServiceImp.prn3(..))", returning="name")
	public void comm3(String name) {   /*인자값 내보내기*/
		System.out.println("comm3: " + name);
	}// end comm3()
	
	@AfterThrowing(value="execution(* part02_annotation.ServiceImp.prn4(..))", throwing="ex")
	public void comm4(Exception ex) {
		if(ex != null)
		System.out.println(ex.toString()); /*잇셉션이 아나미면 출력*/
	}// end comm4()
	
	@Around(value="execution(* part02_annotation.ServiceImp.prn5(..))")
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
