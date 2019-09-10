package com.mycompany.sms.dao;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mycompany.sms.dto.MeetingDTO;
import com.mycompany.sms.dto.MentorDTO;

@Repository
public class MeetingDaoImg implements MeetingDAO {
	private SqlSessionTemplate sqlSession;
	public MeetingDaoImg() {

	}
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<MeetingDTO> detailProcess(int meeting_num) {
		return sqlSession.selectList("mt.select_meeting", meeting_num);
	}

	@Override
	public void meetingInsertProcess(MeetingDTO dto) {
		sqlSession.insert("mt.ins_meeting", dto);
		
	}

	@Override
	public List<MeetingDTO> meetingListProcess() {
		return sqlSession.selectList("mt.list");
	}

	@Override
	public String date() {
		return sqlSession.selectOne("mt.select_date");
	}
	
	
	@Override
	public List<MentorDTO> mentorList() { 
		return sqlSession.selectList("mt.dd");
	}

	

}//end class
