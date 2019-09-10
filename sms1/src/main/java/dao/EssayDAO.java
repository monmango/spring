package dao;

import java.util.List;

import dto.EssayDTO;
import dto.PageDTO;

public interface EssayDAO {
	public int count();

	public void essayInsetMethod(EssayDTO dto); 
	public List<EssayDTO> essayListMethod(PageDTO pv);
	public EssayDTO essayViewMethod(int essay_num);
	public EssayDTO essayUpViewMethod(int essay_num);
	public void essayUpdateMethod(EssayDTO dto);
	public void essayDeleteMethod(int essay_num);
}// end interface
