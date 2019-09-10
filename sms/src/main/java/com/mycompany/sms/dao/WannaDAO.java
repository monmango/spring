package com.mycompany.sms.dao;

import com.mycompany.sms.dto.MentorDTO;
import com.mycompany.sms.dto.MentorFieldDTO;

public interface WannaDAO {	
	public void save(MentorDTO dto);
	
	public void fieldInsertMethod(MentorFieldDTO dto);

	public int getMentorNumMethod();
}// end WannaDAO
