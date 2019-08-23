package part01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// http://localhost:8090/mymvc/hello.htm

@Controller
public class HelloController {
	
	@RequestMapping("/hello.htm")
	public String search() {
		int sum = 0;
		for (int i = 0; i < 5; i++) {
			sum += i;
			System.out.printf("i=%d sum=%d\n", i, sum);
		}
		return "view/part01/hello";
	}// end search()
	
}// end class
