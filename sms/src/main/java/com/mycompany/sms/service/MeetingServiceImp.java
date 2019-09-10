package com.mycompany.sms.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.sms.dao.MeetingDAO;
import com.mycompany.sms.dto.MeetingDTO;
import com.mycompany.sms.dto.MentorDTO;
@Service
public class MeetingServiceImp implements MeetingService {
	@Autowired
	private MeetingDAO meetingdao;
	
	public MeetingServiceImp() {
		// TODO Auto-generated constructor stub
	}
	
	
	public void setMeetingDao(MeetingDAO meetingdao) {
		this.meetingdao = meetingdao;
	}


	@Override
	public List<MeetingDTO> detailProcess(int meeting_num) {
		return meetingdao.detailProcess(meeting_num);
	}


	@Override
	public List<MeetingDTO> meetingInsertProcess(MeetingDTO dto) {
		meetingdao.meetingInsertProcess(dto);
		return null;
		
	}


	@Override
	public List<MeetingDTO> meetingListProcess() {
		return meetingdao.meetingListProcess();
	}


	@Override
	public String date() {
		return meetingdao.date();
	}


	@Override
	public List<MentorDTO> mentorList() {
		return meetingdao.mentorList();
	}

	
}
