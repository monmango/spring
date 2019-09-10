package com.mycompany.sms.dao;

import java.util.List;

import com.mycompany.sms.dto.FieldDTO;
import com.mycompany.sms.dto.MentorDTO;

public interface MentorDAO {
	public List<MentorDTO> list();
	public MentorDTO view(int num);
	public List<FieldDTO> fieldview(int num);
}
