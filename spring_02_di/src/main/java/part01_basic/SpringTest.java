package part01_basic;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/*
컨테이너(container)
1.ApplicationContext - container생성될때
2.WebApplicationContext - was(tomcat)가 실행될때
*/
public class SpringTest {

	public static void main(String[] args) {
		String path = "part01_basic/di.xml";
		
		ApplicationContext context = new ClassPathXmlApplicationContext(path);
		
		 Service svc = (Service)context.getBean("svc"); 
		 svc.prn();
		 
				
		
	}// end main()

}//end class
