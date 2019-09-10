package com.mycompany.sms.service;

import com.mycompany.sms.dto.MentorDTO;
import com.mycompany.sms.dto.MentorFieldDTO;

public interface WannaService {
	public void insertProcess(MentorDTO dto);
	
	public void insertFieldMethod(MentorFieldDTO dto);
	
	public int getMentorNumMethod();
	
}
