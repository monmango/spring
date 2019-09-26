package com.mycompany.mytest.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mycompany.mytest.model.MyBatisTestVO;

@Repository()
public class DAO {
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	

	public int memberRegister(HashMap<String, String> paraMap) {
		return sqlsession.insert("mem.ins", paraMap);
	}
	
	public int memberRegister(MyBatisTestVO vo) {		
		return sqlsession.insert("mem.register", vo);
	}	
}




