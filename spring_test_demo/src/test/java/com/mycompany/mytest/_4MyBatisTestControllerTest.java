package com.mycompany.mytest;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

// === WAS 없이 Controller 테스트하기 ==== //
/*
ServletContext 을 autowired 하면 서블릿 설정들을 가져올수 있다.
그러려면 @WebAppCongifuration 이 필요하다.

@WebAppConfiguration 을 사용하기 위한 전제조건은
pom.xml 에서
<dependency>
<groupId>javax.servlet</groupId>
<artifactId>javax.servlet-api</artifactId>
<version>3.1.0</version>
<scope>provided</scope>  
</dependency>
으로 해야 한다. 기본은 <version>2.5</version> 이었음

*/

/*
create table register(
 userid varchar2(20),
 passwd varchar2(20), 
 name varchar2(30),
email varchar2(20),
tel varchar2(20)
)
 * 
 * 
 */
//단위 테스트를 위해서 SpringJUnit4ClassRunner라는 Runner 클래스를 사용한다.
@RunWith(SpringJUnit4ClassRunner.class)

////WAS 없이 MVC 패턴의 Controller를 단위 테스트하기 위해서는 @WebAppConfiguration 을 사용해야만 한다.
@WebAppConfiguration // @WebAppConfiguration 은 스프링 MVC 테스트할때 사용하는 것으로서 이를 통해 ServletContext 을 autowired 하면 서블릿 설정들을 가져올수 있게 된다.
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		                         "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"}) 
public class _4MyBatisTestControllerTest {
    
	// 먼저 org.slf4j 패키지의 Logger, LoggerFactory 클래스를 import 를 해야 한다.
	// LoggerFactory 클래스의 getLogger 메소드를 통해 Logger 객체를 생성한다.
	// Logger들은 이름 기반으로 생성이 된다. 
	// LoggerFactory.getLogger(“NAME”)로 Logger를 호출하면 “NAME”에 대한 딱하나를 instance를 반환한다. 
	// 여러번 호출해도 같은 객체이다. String 대신 .class로 클래스 정보를 넘겨주면 .getName()으로 클래스 이름을 사용하게 된다. 
	// 흔히 Class객체를 넘겨주어 결국 이름은 packageName + ClassName으로 구성이 된다. 
	// 흔히 Logger는 특정 패키지 이하로 제한을 두고 정의를 한다.
	private static final Logger logger = LoggerFactory.getLogger(_4MyBatisTestControllerTest.class);
	
	@Autowired
	private WebApplicationContext wac;
			
	//MockMvc은 웹 애플리케이션을 애플리케이션 서버에 배포하지 않고도 스프링 MVC의 동작을 재현할 수 있는 클래스이다.
	private MockMvc mockMvc; 
	
	
	// 매번 테스트를 진행할때 마다 테스트 하기전 MockMvc mockMvc 객체를 만들어 주기 위해 @Before 애노테이션으로 setup()메소드를 생성
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
		logger.info("setup~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
	 // INFO : com.test.startspring.MyBatisTestControllerTest - setup~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	}
	
	
	@Test
	public void testMybatisTest3End() throws Exception {
		logger.info("===== testMybatisTest3End() =====");
	//  INFO : com.test.startspring.MyBatisTestControllerTest - ===== testMybatisTest3End() =====
		
		
		//MockMvc 란
		//웹 애플리케이션을 애플리케이션 서버에 배포하지 않고도 스프링 MVC의 동작을 재현할 수 있는 클래스

        try { 
           	// .perform()을 이용하면 매핑url로 request한다. 
        	// .andExpect를 이용해서 다양하게 검증할 수 있다.
        	//           status().isOk()는 상태가 200번을 내뱉는지, 400번 에러를 뱉는지 체크할 수 있다.
        	mockMvc.perform(post("/mybatistest/mybatisTest3End.action")//DispathcherServlet에 요청을 의뢰
        			.param("userid","홍길동")
        			.param("passwd","a1234")
        			.param("name","이순신2")
        			.param("email","leess@gmailcom")
        			.param("tel","01023456789"))
        			
        	.andDo(print())// 결과 출력 코드
        	.andExpect(status().isOk()); // 상태값 .isOk이면 결과값 
        	        	            
            logger.info("~~~ 수행 성공 ~~~");
           // INFO : com.mycompany.mytest._4MyBatisTestControllerTest - ~~~ 수행 성공 ~~~
        } catch (Exception e) {
            logger.error(">>> 수행 실패: " + e.getMessage());
        }
	}
	
	//@Test
	public void testMybatisTest13_2() throws Exception {
		logger.info("===== testMybatisTest13_2() =====");
	//  INFO : com.test.startspring.MyBatisTestControllerTest - ===== testMybatisTest13_2() =====
		
        try { 
           	// .perform()을 이용하면 매핑url로 request한다. 
        	// .andExpect를 이용해서 다양하게 검증할 수 있다.
        	//           status().isOk()는 상태가 200번을 내뱉는지, 400번 에러를 뱉는지 체크할 수 있고,
        	mockMvc.perform(get("/mybatistest/mybatisTest13_2.action").param("department_id","50").
									               					   param("gender","남"))
        	.andDo(print())
        	.andExpect(status().isOk())
        	.andExpect(model().attributeExists("empList"))
        	.andExpect(model().attributeExists("department_id"))
        	.andExpect(model().attributeExists("gender"))
        	.andExpect(view().name("search/mybatisTest13Search_2"));
        	        	            
            logger.info("~~~ 수행 성공 ~~~");
         // INFO : com.test.startspring.MyBatisTestControllerTest - ~~~ 수행 성공 ~~~ 
        } catch (Exception e) {
            logger.error(">>> 수행 실패: " + e.getMessage());
        }
	}
	
	/*
	  테스트를 하는 것은 개발시 분명히 불편하고 시간도 오래 걸리는 일이다. 
	  하지만 다음과 같은 점을 고려한다면 테스트에 대해서 조금은 좋은 면도 볼수 있다.
	  - 웹 페이지를 테스트 하려면 매번 입력 항목을 입력해서 제대로 동작하는지를 확인하는데, 
	       이때 웹페이지에서 여러번 입력하는 것보다 테스트 코드를 통해서 처리하는 것이 훨씬 개발시간을
	       단축시킬수 있다.
	  - JSP 등에서 발생하는 에러를 해결하는 과정에서 매번 WAS에 만들어진 컨트롤러 코드를 수정해서
	       배포하는 작업은 많은 시간을 소모하게 된다. 
	  - 컨트롤러에서 결과 데이터만을 확인할 수 있기 때문에 문제의 발생시 원인을 파악할 수 있는 
	       시간이 절약된다.       
	*/
	
}












