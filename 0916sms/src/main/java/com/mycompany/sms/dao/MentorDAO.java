package com.mycompany.sms.dao;

import java.util.List;

import com.mycompany.sms.dto.FieldDTO;
import com.mycompany.sms.dto.MentorDTO;
import com.mycompany.sms.dto.MentorFieldDTO;

public interface MentorDAO {
	public List<MentorDTO> list();
	public List<MentorDTO> list(List<MentorFieldDTO> mflist);
	public MentorDTO view(int num);
	public List<FieldDTO> fieldview(int num);
	public List<MentorFieldDTO> fieldcheck(int field_num);
}
