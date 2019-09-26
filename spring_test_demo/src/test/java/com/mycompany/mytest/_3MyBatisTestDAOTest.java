package com.mycompany.mytest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mycompany.mytest.model.MyBatisTestVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class _3MyBatisTestDAOTest {
	private static final Logger logger = 
			LoggerFactory.getLogger(_3MyBatisTestDAOTest.class);
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	@Test
	public void testCreate() {
		MyBatisTestVO testvo = new MyBatisTestVO();
		testvo.setName("홍길동맨");
		testvo.setEmail("testhong@google.com");
		testvo.setTel("0102253233");
		testvo.setAddr("서울 종로구");
		int n = sqlsession.insert("mem.register", testvo);
		//n:1
		System.out.println("n:"+n);
		logger.info("~~~~~~~~~~~~ n : "+
		         n+"~~~~~~~~~~~~~~~~~~~~~~");
	}//end testCreate()
	

}//end class








