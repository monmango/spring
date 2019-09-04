package service;

import java.util.List;


import dto.EssayDTO;
import dto.PageDTO;

public interface EssayService {
	public int countProcess();

	public List<EssayDTO> essayListProcess(PageDTO pv);
	public  EssayDTO essayViewProcess(int essay_num);
	public void essayInsertProcess(EssayDTO dto);
	public EssayDTO essayUpViewProcess(int essay_num);
	public void essayUpdateProcess(EssayDTO dto);
	public void essayDeleteProcess(int essay_num);
}// end interface
