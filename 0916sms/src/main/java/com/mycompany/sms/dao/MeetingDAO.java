package com.mycompany.sms.dao;

import java.util.List;


import com.mycompany.sms.dto.MeetingDTO;
import com.mycompany.sms.dto.MentorDTO;

public interface MeetingDAO {

	public void meetingInsertProcess(MeetingDTO dto);

	public List<MeetingDTO> date(int dto);

	public List<MentorDTO> mem(MeetingDTO dto);

	public List<MentorDTO> mentorList();

	public int getMentorNumMethod(String str);

	public String meuser(int str);

	public int login(String str);

}
