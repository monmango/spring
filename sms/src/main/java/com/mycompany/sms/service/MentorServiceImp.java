package com.mycompany.sms.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.sms.dao.MentorDAO;
import com.mycompany.sms.dto.FieldDTO;
import com.mycompany.sms.dto.MentorDTO;
@Service
public class MentorServiceImp implements MentorService {
	@Autowired
	private MentorDAO mentodao;
	
	public MentorServiceImp() {
		
	}
	
	public void setMentodao(MentorDAO mentodao) {
		this.mentodao = mentodao;
	}

	@Override
	public List<MentorDTO> listProcess() {
		return mentodao.list();
	}

	@Override
	public MentorDTO viewProcess(int num) {
		return mentodao.view(num);
	}

	@Override
	public List<FieldDTO> fieldviewProcess(int num) {
		return mentodao.fieldview(num);
	}

	
}//end class
