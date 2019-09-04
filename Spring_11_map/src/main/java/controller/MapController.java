package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dto.LibmapDTO;
import service.LibService;

@Controller
public class MapController {

	private LibService service;
		
	public MapController() {}
	
	public void setService(LibService service) {
		this.service = service;
	}
	
	@RequestMapping("/map.do")
	public String mapForm() {
		return "map";
	}
	
	@RequestMapping("/libmap.do")
	public @ResponseBody ModelAndView libraryMap(int pageNo, int pageSize, String keyword, ModelAndView mav) {
		int countAll = service.f_countAllProcess(keyword);
		int totalPage = countAll/pageSize;
		if((countAll%pageSize)>0) {
			totalPage++;
		}
		
		List<LibmapDTO> aList= service.f_listProcess(pageNo, pageSize, keyword);
		mav.addObject("aList", aList);
		mav.addObject("pageNo", pageNo);
		mav.addObject("totalPage", totalPage);
		mav.setViewName("jsonView");
		return mav;
	}
	
}// end class
