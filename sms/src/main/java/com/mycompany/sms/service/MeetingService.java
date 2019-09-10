package com.mycompany.sms.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.mycompany.sms.dto.MeetingDTO;
import com.mycompany.sms.dto.MentorDTO;


public interface MeetingService {
	
	public List<MeetingDTO> detailProcess(int meeting_num);
	public List<MeetingDTO> meetingInsertProcess(MeetingDTO dto);
	public List<MeetingDTO> meetingListProcess();
	public List<MentorDTO> mentorList();
	public String date();

}
