package com.mycompany.sms.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.sms.dto.FieldDTO;
import com.mycompany.sms.dto.MentorDTO;
import com.mycompany.sms.dto.MentorFieldDTO;
@Repository
public class MentorDaoImp implements MentorDAO {
	private SqlSessionTemplate sqlSession;
	
	public MentorDaoImp() {
		
	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<MentorDTO> list() {
		return sqlSession.selectList("mentor.list");
	}

	@Override
	public List<MentorDTO> list(List<MentorFieldDTO> mflist) {
		return sqlSession.selectList("mentor.list2", mflist);
	}
	
	@Override
	public MentorDTO view(int num) {
		return sqlSession.selectOne("mentor.view", num);	
	}

	@Override
	public List<FieldDTO> fieldview(int num) {
		return sqlSession.selectList("mentor.fieldlist", num);
	}

	@Override
	public List<MentorFieldDTO> fieldcheck(int field_num) {
		return sqlSession.selectList("mentor.fieldcheck", field_num);
	}

}//end class
