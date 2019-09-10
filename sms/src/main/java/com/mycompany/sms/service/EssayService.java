package com.mycompany.sms.service;

import java.util.List;

import com.mycompany.sms.dto.EssayDTO;
import com.mycompany.sms.dto.PageDTO;

public interface EssayService {
	public int countProcess();

	public List<EssayDTO> essayListProcess(PageDTO pv);
	public EssayDTO essayViewProcess(int essay_num);
	public void essayInsertProcess(EssayDTO dto);
	public String essayUpViImgProcess(int essay_num);
	public EssayDTO essayUpViewProcess(int essay_num);
	public EssayDTO essayUpdateProcess(EssayDTO dto);
	public void essayDeleteProcess(int essay_num);
}// end interface
