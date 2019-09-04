package part03;

import java.util.Date;

//import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//http://localhost:8090/myintercetor/main.do
@Controller
public class HalloController {
	
	@RequestMapping("main.do")
	public String execute() {
		return "part03/from";
	}
	
	//@Scheduled(fixedDelay = 1000)// 1초 마다 콘솔에 출력
	public void scheduledProcess() throws Exception{ // 스케줄러 메소드에는 리턴값 없고, 인자값이 없어야 한다.
		System.out.println(new Date() + "스케줄링 처리완료");// 처리할 내용 삽입
	}
}
