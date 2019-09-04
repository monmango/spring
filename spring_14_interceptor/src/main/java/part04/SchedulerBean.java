package part04;

import java.text.SimpleDateFormat;
import java.util.Calendar;


import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component   //어노테이션 선언시  <bean>선언 안해줘도 됨  <context:component-scan base-package="part04"/> 선언
public class SchedulerBean {
	//@Scheduled(cron="10 * 5 * * *") 5시간 10초 마다 실행
	
	              // 초 분 시 일 월 요일 순서
	@Scheduled(cron="*/3 * * * * *") //3초마다 설정됨 
	public void schedulRun() {
		
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		System.out.println("스케즐 실행: " + dateFormat.format(calendar.getTime()));
	}
}
