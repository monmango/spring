package com.mycompany.sms.service;

import java.util.List;

import com.mycompany.sms.dto.MeetingDTO;
import com.mycompany.sms.dto.MentorDTO;

public interface MeetingService {

	public List<MeetingDTO> meetingInsertProcess(MeetingDTO dto);

	public List<MentorDTO> mentorList();

	public List<MeetingDTO> date(int dto);

	public List<MentorDTO> mem(MeetingDTO num);

	public int getMentorNumMethod(String str);

	public String meuser(int str);

	public int login(String str);
}
