package com.mycompany.sms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.mycompany.sms.dto.EssayDTO;
import com.mycompany.sms.dto.PageDTO;

@Repository
public interface EssayDAO {
	public int count();
	public List<EssayDTO> essayListMethod(PageDTO pv);
	public List<EssayDTO> essayViewMethod(int essay_num);
	public void essayInsetMethod(EssayDTO dto); 
	public String essayUpViImgMethod(int essay_num);
	public EssayDTO essayUpViewMethod(int essay_num);
	public EssayDTO essayUpdateMethod(EssayDTO dto);
	public void essayDeleteMethod(int essay_num);
}// end interface
