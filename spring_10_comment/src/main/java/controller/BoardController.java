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

import dto.BoardDTO;
import dto.ReplyDTO;
import service.BoardService;

//http://localhost:8090/mycomment/boardList.do

@Controller
public class BoardController {
	private BoardService service;
	private String path;

	public BoardController() {

	}

	public void setService(BoardService service) {
		this.service = service;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
	@RequestMapping("/boardList.do")
	public ModelAndView boardListPage(ModelAndView mav) {
		mav.addObject("list", service.boardListProcess());
		mav.setViewName("boardList");
		return mav;
	}//end boardListPage()

	@RequestMapping("/boardView.do")
	public ModelAndView boardViewPage(int bno, ModelAndView mav) {
		mav.addObject("boardDTO", service.boardViewProcess(bno));
		/*mav.setViewName("boardView");*/
		/*mav.setViewName("boardView2");*/
		mav.setViewName("boardView3");
		return mav;
		
	}//end boardViewPage
	
	@RequestMapping("/replyInsertList.do")
	public @ResponseBody List<ReplyDTO> replyListPage(ReplyDTO rdto,HttpServletRequest request){
		MultipartFile file = rdto.getFilename();
		saveCopyfile(file, rdto, request);
		return service.replyListProcess(rdto);
	}//end replyListPage
	
	@RequestMapping("/replyDelete.do")
	public @ResponseBody List<ReplyDTO> replyDeleteListPage(ReplyDTO rdto){
		return service.replyDeleteProcess(rdto);
	}
	
	@RequestMapping("/replyUpdate.do")
	public @ResponseBody List<ReplyDTO> replyUpdateListPage(ReplyDTO rdto){
		return service.replyUpdateProcess(rdto);
	}//end replyUPdateListPage()
	
	
	public void saveCopyfile(MultipartFile file, ReplyDTO rdto, HttpServletRequest request) {
		if(!file.isEmpty()) {//임시기억장치에있는 파일정보
			String fileName=file.getOriginalFilename();
			//중복파일명을 처리하기 위해 난수 발생
			UUID random = UUID.randomUUID();
			String root = request.getSession().getServletContext().getRealPath("/");
			//root 경로 : C:\study\spring_workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\spring_07_baord\
			//root + "temp/"
			//System.out.println(root);
			String saveDirectory=root+"temp"+File.separator;
			File fe = new File(saveDirectory);
			if(!fe.exists()) {
				fe.mkdir();
			}
			File ff = new File(saveDirectory, random + "_"+fileName);
			try {
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));//임시저장 장치에 있는 파일을 읽어와서 file에 저장시킨다.
			} catch (IOException e) {
				e.printStackTrace();
			}
			rdto.setRupload(random+"_"+fileName);
		}
	}//end saveCopyfile()///////////////////////////

	
}// end class
