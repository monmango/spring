package com.mycompany.sms.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.sms.dao.WannaDAO;
import com.mycompany.sms.dto.MentorDTO;
import com.mycompany.sms.dto.MentorFieldDTO;

@Service
public class WannaServiceImp implements WannaService {
	@Autowired
	private WannaDAO wannabedao;

	public WannaServiceImp() {
		
	}
	
	public void setDao(WannaDAO wannabedao) {
		this.wannabedao = wannabedao;
	}
	
	@Override
	public void insertProcess(MentorDTO dto) {
		wannabedao.save(dto);
	}

	@Override
	public void insertFieldMethod(MentorFieldDTO dto) {
		wannabedao.fieldInsertMethod(dto);
		
	}

	@Override
	public int getMentorNumMethod() {
		return wannabedao.getMentorNumMethod();
	}


	
	
	
	
}//end class
