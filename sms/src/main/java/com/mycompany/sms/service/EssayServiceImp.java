package com.mycompany.sms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.sms.dao.EssayDAO;
import com.mycompany.sms.dto.EssayDTO;
import com.mycompany.sms.dto.PageDTO;
@Service
public class EssayServiceImp implements EssayService{
	
	@Autowired
	private EssayDAO essaydao;
	
	public EssayServiceImp() {}
	
	public void setDao(EssayDAO essaydao) {
		this.essaydao = essaydao;
	}
	
	@Override
	public int countProcess() {
		return essaydao.count();
	}
	
	@Override
	public List<EssayDTO> essayListProcess(PageDTO pv) {
		return essaydao.essayListMethod(pv);
	}

	@Override
	public EssayDTO essayViewProcess(int essay_num) {
		return essaydao.essayViewMethod(essay_num);
	}

	@Override
	public void essayInsertProcess(EssayDTO dto) {
		essaydao.essayInsetMethod(dto);
	}

	public String essayUpViImgProcess(int essay_num) {
		return essaydao.essayUpViImgMethod(essay_num);
	}
	
	@Override
	public EssayDTO essayUpViewProcess(int essay_num) {
		System.out.println(essay_num);
		return essaydao.essayUpViewMethod(essay_num);
	}

	@Override
	public EssayDTO essayUpdateProcess(EssayDTO dto) {
		return essaydao.essayUpdateMethod(dto);
		
	}

	@Override
	public void essayDeleteProcess(int essay_num) {
		essaydao.essayDeleteMethod(essay_num);
		
	}

}
