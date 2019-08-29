package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import dto.ReplyDTO;
import service.BoardService;


//http://localhost:8090/mycomment/boardList.do
@Controller
public class BoardController {
	
	private BoardService service;
	private String path;
	
	public BoardController() {}
	
	public void setPath(String path) {
		this.path = path;
	}
	 
	public void setService(BoardService service) {
		this.service = service;
	}
	
	@RequestMapping("/boardList.do")
	public ModelAndView boardListPage(ModelAndView mav) {
		mav.addObject("list", service.boardListProcess());
		mav.setViewName("boardList");
		return mav;
	}// end boardListPage()
	
	@RequestMapping("/boardView.do")
	public ModelAndView boardViewPage(ModelAndView mav, int bno) {
		mav.addObject("boardDTO", service.boardViewProcess(bno));
		mav.setViewName("boardView");
		return mav;
	} // 뷰
	
	/*@ResponseBody 넘어오는 값을 json 으로 받을 때 사용한다.*/
	@RequestMapping("/replyInsertList.do")
	public @ResponseBody List<ReplyDTO> replyListpage(ReplyDTO rdto, HttpServletRequest request){
		return service.replyListProcess(rdto);
	}// 삽입
	
	@RequestMapping("/replyDelete.do")
	public @ResponseBody List<ReplyDTO> replyDeleteProcess(ReplyDTO rdto){
		return service.replyDeleteProcess(rdto);
	}// 삭제
}// end class
 