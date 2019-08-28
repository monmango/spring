package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dao.BoardDAO;
import dto.BoardDTO;
import dto.PageDTO;

public class BoardServiceImp implements BoardService{
	
	private BoardDAO dao;
	
	public BoardServiceImp() {}

	public void setDao(BoardDAO dao) {
		this.dao = dao;
	}

	@Override
	public int countProcess() {
		return dao.count();
	}

	@Override
	public List<BoardDTO> listProcess(PageDTO pv) {
		return dao.list(pv);
	}
	/*제목글일때*/
	@Override
	public void insertProcess(BoardDTO dto) {
		dao.save(dto);
	}

	@Override
	public BoardDTO contentProcess(int num) {
		dao.readCount(num);
		return dao.content(num);
	}
	/*답변글일때*/
	@Override
	public void reStepProcess(BoardDTO dto) {
		dao.reStepCount(dto);
		dto.setRe_step(dto.getRe_step() + 1);
		dto.setRe_level(dto.getRe_level() + 1);
		dao.save(dto);
	}

	@Override
	public BoardDTO updateSelectProcess(int num) {
		return dao.updateNum(num);
	}

	@Override
	public void updateProcess(BoardDTO dto) {
		dao.update(dto);
	}

	@Override
	public void deleteProcess(int num) {
		dao.delete(num);
	}
	
	@Override
	public String fileSelectprocess(int num) {
		return dao.getFile(num);
	}
	
}// end class
