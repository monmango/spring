package com.mycompany.sms.dao;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.sms.dto.MentorDTO;
import com.mycompany.sms.dto.MentorFieldDTO;

@Repository
public class WannaDaoImp implements WannaDAO {
private SqlSessionTemplate sqlSession;
	
	public WannaDaoImp() {
		
	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void save(MentorDTO dto) {
		sqlSession.insert("wannabe.save", dto);
		System.out.println("save");
	}

	@Override
	public void fieldInsertMethod(MentorFieldDTO dto) {
		sqlSession.insert("wannabe.field_insert", dto);
	}

	@Override
	public int getMentorNumMethod() {
		return sqlSession.selectOne("wannabe.get_mentor_num");
	}
	

	
	
	
	
	
	
	
	
	
	
}//end class
