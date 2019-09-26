package com.mycompany.mytest.service;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.mytest.dao.DAO;
import com.mycompany.mytest.model.MyBatisTestVO;

@Service()
public class MemberService {
	
	@Autowired
	private DAO dao;

	public int memberRegister(HashMap<String, String> paraMap) {
	return dao.memberRegister(paraMap);
	} 

	public int memberRegister(MyBatisTestVO vo) {
		return dao.memberRegister(vo);

	}
}
