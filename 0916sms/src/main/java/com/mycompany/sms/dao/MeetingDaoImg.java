package com.mycompany.sms.dao;

import java.util.List;

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
	public void meetingInsertProcess(MeetingDTO dto) {
		sqlSession.insert("mt.ins_meeting", dto);

	}

	@Override
	public List<MeetingDTO> date(int dto) {
		return sqlSession.selectList("mt.select_meeting", dto);
	}

	@Override
	public List<MentorDTO> mem(MeetingDTO dto) {
		return sqlSession.selectList("mt.select_mentor", dto);
	}

	@Override
	public List<MentorDTO> mentorList() {
		return sqlSession.selectList("mt.list");
	}

	@Override
	public int getMentorNumMethod(String str) {
		return sqlSession.selectOne("mt.mentorNum", str);
	}

	@Override
	public String meuser(int str) {
		return sqlSession.selectOne("mt.meuser", str);
	}

	@Override
	public int login(String str) {
		return sqlSession.selectOne("mt.login_user", str);
	}

}// end class
