package com.mycompany.mytest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

//<bean id="homeService" class="com.mycompany.mytest.Homeservice">
// <property name="homeDAO" ref="homeDAO" />
//</bean>
@Service
public class HomeService {
	
	@Autowired
	private HomeDAO homeDAO;
	
	public HomeService() {}
	
	public void setHomeDAO (HomeDAO homeDAO) {
		this.homeDAO = homeDAO;
	}// end setHomeDAO()
	
	public void process() {
		System.out.println("HomeService process()");
		homeDAO.getAllData();
	}
	
}// end class


//오토와이어링은 스프링이 빈의 요구 사항과 매칭 되는 애플리케이션 컨텍스트상에서 다른 빈을 찾아 빈 간의 의존성을 자동으로 만족시키도록 하는 수단이다. 
//오토와이어링 수행을 하도록 지정하기 위해서는 다음 스프링의 @Autowired 애너테이션을 사용한다.
//출처: https://tbang.tistory.com/87 [heene]