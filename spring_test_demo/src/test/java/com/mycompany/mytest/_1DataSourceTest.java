package com.mycompany.mytest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/*
 * 실행할때 WAS(아파치-톰켓)은 실행하지 않음
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class _1DataSourceTest {

	@Autowired
	private DataSource dataSource;
	
	@Test
	public void testConnection() {
		try {
			Connection conn=dataSource.getConnection();
			//확인용 conn : jdbc:oracle:thin:@localhost:1521:xe, UserName=HR, Oracle JDBC driver
			System.out.println("확인용 conn : " + conn);
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		
	}//end testConnection()
	
	@Test
	public void testQuery() {
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = 
					conn.prepareStatement("select to_char(sysdate,'yyyy-mm-dd hh24:mi:ss'), username from user_users");
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			//현재시각 : 2019-09-19 15:14:37
			System.out.println("현재시각 : "+rs.getString(1));
			
			//사용자명 : HR
			System.out.println("사용자명 : "+rs.getString(2));
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}//end testQuery()
	
}//end class
