package com.mycompany.sms.service;
import java.util.List;

import com.mycompany.sms.dto.FieldDTO;
import com.mycompany.sms.dto.MentorDTO;

public interface MentorService {
	public List<MentorDTO> listProcess();
	public MentorDTO viewProcess(int num);
	public List<FieldDTO> fieldviewProcess(int num);
}//end interface
