package com.mycompany.sms.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.sms.dao.MeetingDAO;
import com.mycompany.sms.dto.MeetingDTO;
import com.mycompany.sms.dto.MentorDTO;
import com.mycompany.sms.dto.MentorFollowDTO;
@Service
public class MeetingServiceImp implements MeetingService {
	@Autowired
	private MeetingDAO meetingdao;
	
	
	public void setMeetingDao(MeetingDAO meetingdao) {
		this.meetingdao = meetingdao;
	}



	@Override
	public List<MeetingDTO> meetingInsertProcess(MeetingDTO dto) {
		meetingdao.meetingInsertProcess(dto);
		return null;
		
	}


	@Override
	public List<MeetingDTO> date(int dto) {
		return meetingdao.date(dto);
	}


	@Override
	public List<MentorDTO> mentorList() {
		return meetingdao.mentorList();
	}


	@Override
	public List<MentorDTO> mem(MeetingDTO num) {
		return meetingdao.mem(num);
	}


	@Override
	public int getMentorNumMethod(String str) {
		return meetingdao.getMentorNumMethod(str);
	}



	@Override
	public String meuser(int str) {
		return meetingdao.meuser(str);
	}



	@Override
	public int login(String str) {
		return meetingdao.login(str);
	}



	
}
