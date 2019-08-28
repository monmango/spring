package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dto.BoardDTO;
import dto.PageDTO;
import service.BoardService;

//http://localhost:8090/myboard/list.sb

@Controller
public class BoardController_s {
	private BoardService service;
	private int currentPage;
	private PageDTO pdto;

	public BoardController_s() {

	}

	public void setService(BoardService service) {
		this.service = service;
	}

	@RequestMapping("/list.sb")
	public ModelAndView listMethod(PageDTO pv, ModelAndView mav) {
		int totalRecord = service.countProcess();
		if (totalRecord >= 1) {
			if (pv.getCurrentPage() == 0) {
				currentPage = 1;
			} else {
				currentPage = pv.getCurrentPage();
			}

			pdto = new PageDTO(currentPage, totalRecord);
			mav.addObject("pv", pdto);
			mav.addObject("aList", service.listProcess(pdto));
		}

		mav.setViewName("board/list");
		return mav;
	}// end listMethod()//////////////////////////////////

	@RequestMapping("/view.sb")
	public ModelAndView viewMethod(int currentPage, int num, ModelAndView mav) {
		mav.addObject("dto", service.contentProcess(num));
		mav.addObject("currentPage", currentPage);
		mav.setViewName("board/view");
		return mav;
	}//end viewMethod()////////////////////////////////////

	@RequestMapping(value = "/write.sb", method = RequestMethod.GET)
	public ModelAndView writeMethod(PageDTO pv, BoardDTO dto, ModelAndView mav) {
		if (dto.getRef() != 0) { // 답변글이면??
			mav.addObject("currentPage", pv.getCurrentPage());
			mav.addObject("dto", dto);
		}
		mav.setViewName("board/write");
		return mav;
	}//end writeMethod()////////////////////////////////////

	@RequestMapping(value = "/write.sb", method = RequestMethod.POST)
	public String writeProMethod(BoardDTO dto, HttpServletRequest request) {

		MultipartFile file = dto.getFilename();
		if (!file.isEmpty()) {
			UUID random=saveCopyFile(file, request);
			dto.setUpload(random + "_" + file.getOriginalFilename());
		}

		dto.setIp(request.getRemoteAddr());

		// 답변글이면
		if (dto.getRef() != 0) {
			service.reStepProcess(dto);
		} else {// 제목글이면
			service.insertProcess(dto);
		}

		return "redirect:/list.sb";
	}//end writeProMethod()////////////////////////////////

	@RequestMapping(value = "/update.sb", method = RequestMethod.GET)
	public ModelAndView updateMethod(int num, int currentPage, 
			        ModelAndView mav) {
		mav.addObject("dto", service.updateSelectProcess(num));
		mav.addObject("currentPage", currentPage);
		mav.setViewName("board/update");
		return mav;
	}//end updateMethod()////////////////////////////////////
	
	@RequestMapping(value = "/update.sb", 
			method = RequestMethod.POST)
	public ModelAndView updateProc(BoardDTO dto, int currentPage,
			HttpServletRequest request, ModelAndView mav) {
		// 기존 첨부파일
		String filename = service.fileSelectprocess(dto.getNum());
		
		String root = request.getSession()
				     .getServletContext().getRealPath("/");
		String saveDirectory = root + "temp" + File.separator;

		// 수정할 첨부파일
		MultipartFile file = dto.getFilename();
		
		// 수정한 첨부파일이 있으면
       if (!file.isEmpty()) {
    	
    	// 기존 첨부파일이 있으면....
    	if (filename != null) {
    		File fe = new File(saveDirectory, filename);
    		fe.delete();
    	}
    	UUID random=saveCopyFile(file, request);
		dto.setUpload(random + "_" + file.getOriginalFilename());
       }       
       dto.setIp(request.getRemoteAddr());
       service.updateProcess(dto);
       mav.addObject("currentPage", currentPage);
	   mav.setViewName("redirect:/list.sb");
	   return mav;
	}//end updateProc()///////////////////////////////////////
	
	public UUID saveCopyFile(MultipartFile file, HttpServletRequest request) {
		String fileName = file.getOriginalFilename();
		// 중복파일명을 처리하기 위해 난수 발생
		UUID random = UUID.randomUUID();
		String root = request.getSession().getServletContext().getRealPath("/");
		// System.out.println(root);
		// C:\study\spring_workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\spring_07_board\
		// root + "temp/"
		String saveDirectory = root + "temp" + File.separator;
		File fe = new File(saveDirectory);
		if (!fe.exists())
			fe.mkdir();

		File ff = new File(saveDirectory, random + "_" + fileName);
		try {
			FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return random;
	}//end saveCopyFile()/////////////////////////////
}// end class





