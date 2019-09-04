package service;

import java.util.HashMap;
import java.util.List;

import dao.LibDAO;
import dto.LibmapDTO;

public class LibServiceImp implements LibService{
	
	private LibDAO dao;
	
	public LibServiceImp() {}
	
	public void setDao(LibDAO dao) {
		this.dao = dao;
	}

	@Override
	public List<LibmapDTO> f_listProcess(int pageNo, int pageSize, String keyword) { 
		/*dto에 변수가 없기 때문에 jsp에서 ajax로 넘어오는 값을 메소드 인자값으로 작성하여 받는다*/
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("startPage", (pageNo - 1) * pageSize +1);
		map.put("endPage", pageNo * pageSize);
		map.put("keyword", keyword);
		return dao.lib_list(map);
	}

	@Override
	public int f_countAllProcess(String data) {
		return dao.lib_countAll(data);
	}
	
	
}
