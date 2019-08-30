package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
		/*mav.setViewName("boardView");*/
		/*mav.setViewName("boardView2");*/
		mav.setViewName("boardView3");
		return mav;
	} // 뷰
	
	/*@ResponseBody 넘어오는 값을 json 으로 받을 때 사용한다.*/
	@RequestMapping("/replyInsertList.do")
	public @ResponseBody List<ReplyDTO> replyListpage(ReplyDTO rdto, HttpServletRequest request){
		MultipartFile multi = rdto.getFilename(); //for문
		String fileName = multi.getOriginalFilename();
		UUID random = saveCopyFile(multi, request);
		rdto.setRupload(random+"_"+fileName);
		return service.replyListProcess(rdto);
	}// 삽입
	
	public UUID saveCopyFile(MultipartFile multi, HttpServletRequest request) {
		String fileName = multi.getOriginalFilename();
		// 중복파일명을 처리하기 위해 난수 발생
		UUID random = UUID.randomUUID();
		String root = request.getSession().getServletContext().getRealPath("/"); //자동 가상 저장경로 설정
		String saveDirectory = root + "temp" + File.separator; // File.separator("/")
		File fe = new File(saveDirectory);
		System.out.println(root);
		if (!fe.exists())
			fe.mkdir();

		File ff = new File(saveDirectory, random + "_" + fileName);
		try {
			FileCopyUtils.copy(multi.getInputStream(), new FileOutputStream(ff));
			//임시 저장소에서 실제 저장소에 저장한다. .copy()
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return random;
	}//end saveCopyFile()/////////////////////////////
	
	@RequestMapping("/replyDelete.do")
	public @ResponseBody List<ReplyDTO> replyDeleteProcess(ReplyDTO rdto){
		return service.replyDeleteProcess(rdto);
	}// 삭제
	
	@RequestMapping("/replyUpdate.do")
	public @ResponseBody List<ReplyDTO> replyUpdateListPage (ReplyDTO rdto){
		return service.replyUpdateProcess(rdto);
	}// 수정
	
	
}// end class
 