package com.mycompany.sms.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mycompany.sms.dto.MeetingDTO;
import com.mycompany.sms.dto.MentorDTO;

public interface MeetingDAO {
	
	public List<MeetingDTO> detailProcess(int meeting_num);
	
	public void meetingInsertProcess(MeetingDTO dto);
	
	public List<MeetingDTO> meetingListProcess();
	
	public String date();

	public List<MentorDTO> mentorList();
	
	
	

}
