package com.mycompany.sms.service;
import java.util.List;

import com.mycompany.sms.dto.FieldDTO;
import com.mycompany.sms.dto.MentorDTO;
import com.mycompany.sms.dto.MentorFieldDTO;

public interface MentorService {
	public List<MentorDTO> listProcess();
	public List<MentorDTO> listProcess(List<MentorFieldDTO> mflist);
	public MentorDTO viewProcess(int num);
	public List<FieldDTO> fieldviewProcess(int num);
	public List<MentorFieldDTO> fieldcheckProcess(int field_num);
}//end interface
