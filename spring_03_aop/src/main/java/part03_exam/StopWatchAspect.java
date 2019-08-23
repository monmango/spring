package part03_exam;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Service;

@Service 
@Aspect
public class StopWatchAspect {
	
	public StopWatchAspect() {}
	/*리턴타입을 적는다 (void, String usw. )*/
	@Around("execution(* part03_exam.ServiceImp.prn(..))")
	public void timeData(ProceedingJoinPoint point) {
		long start = System.currentTimeMillis();
		try {
			point.proceed();
		} catch (Throwable e) {
			e.printStackTrace();
		}
		long end = System.currentTimeMillis();
		String time = point.getSignature().getName() + "_메서드 실행시간: " + (end-start);
		System.out.println(time);
	}
	
}// end class