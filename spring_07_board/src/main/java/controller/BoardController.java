package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dto.BoardDTO;
import dto.PageDTO;
import service.BoardService;

//http://localhost:8090/myboard/list.sb
@Controller
public class BoardController {
	
	private BoardService service;
	
	private int currentPage;
	
	private PageDTO pdto;
	
	public BoardController() {}

	public void setService(BoardService service) {
		this.service = service;
	}
	@RequestMapping("/list.sb")
	public ModelAndView listMethod(PageDTO pv, ModelAndView mav) {
		int totalRecord = service.countProcess();
		/*System.out.println("cnt : " + totalRecord);*/
		if (totalRecord >= 1) {
			if (pv.getCurrentPage() == 0) { /*처음 불러올때 0이므로 1을 준다. 게시판을 들어갈때 한번 실행됨*/
				currentPage = 1;
			}else {
				currentPage = pv.getCurrentPage(); /*getCurrentPage() 클릭한 값을 나타냄*/
			}
			pdto = new PageDTO(currentPage, totalRecord); /*현재페이지값과 전체 개수를 넘겨준다.*/
			mav.addObject("pv", pdto);
			mav.addObject("aList", service.listProcess(pdto));
		}
		mav.setViewName("board/list");
		return mav;
	}// end ModelAndView()
	
	@RequestMapping("/view.sb")	
	public ModelAndView viewMethod(int currentPage, int num, ModelAndView mav) {
		mav.addObject("dto", service.contentProcess(num));
		mav.addObject("currentPage", currentPage);
		mav.setViewName("board/view");
		return mav;
	}
	
	@RequestMapping(value="/write.sb", method = RequestMethod.GET)
	public ModelAndView writeMethod(PageDTO pv, BoardDTO dto, ModelAndView mav) {
		mav.setViewName("board/write");
		return mav;
	}
}// end class
