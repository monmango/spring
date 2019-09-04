package service;

import java.util.List;

import dao.EssayDAO;
import dto.EssayDTO;
import dto.PageDTO;

public class EssayServiceImp implements EssayService{

	private EssayDAO dao;
	
	public EssayServiceImp() {}
	
	public void setDao(EssayDAO dao) {
		this.dao = dao;
	}
	
	@Override
	public List<EssayDTO> essayListProcess(PageDTO pv) {
		return dao.essayListMethod(pv);
	}

	@Override
	public EssayDTO essayViewProcess(int essay_num) {
		return dao.essayViewMethod(essay_num);
	}

	@Override
	public void essayInsertProcess(EssayDTO dto) {
		System.out.println("여기2");
		dao.essayInsetMethod(dto);
	}

	@Override
	public int countProcess() {
		return dao.count();
	}

	@Override
	public EssayDTO essayUpViewProcess(int essay_num) {
		return dao.essayViewMethod(essay_num);
	}

	@Override
	public void essayUpdateProcess(EssayDTO dto) {
		dao.essayUpdateMethod(dto);
		
	}

	@Override
	public void essayDeleteProcess(int essay_num) {
		dao.essayDeleteMethod(essay_num);
		
	}

}
