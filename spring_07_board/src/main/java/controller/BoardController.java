package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sun.org.apache.xpath.internal.operations.Mod;

import dto.BoardDTO;
import dto.PageDTO;
import service.BoardService;

//http://localhost:8090/myboard/list.sb
@Controller
public class BoardController {

	private BoardService service;

	private int currentPage;

	private PageDTO pdto;

	public BoardController() {
	}

	public void setService(BoardService service) {
		this.service = service;
	}

	public void fileCheckDel(MultipartFile file, BoardDTO dto, HttpServletRequest request) {

		if (!file.isEmpty()) { /* 첨부파일이 있으면 */
			String fileName = file.getOriginalFilename();
			// 중복파일명을 처리하기 위해 난수 발생
			UUID random = UUID.randomUUID();
			String root = request.getSession().getServletContext().getRealPath("/");
			System.out.println(root); /* 저장 위치를 확인 할 수 있다. root + "temp/" */
			/* String saveDirectory = root + "temp/ + File.separtor"; 또는 */
			String saveDirectory = root + "temp/";
			File fe = new File(saveDirectory);
			if (!fe.exists()) {
				fe.mkdir();
			}
			File ff = new File(saveDirectory, random + "_" + fileName);
			try {
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff)); /* 임시기억장치에서 가져와서 ff에 저장하는 과정 */
			} catch (IOException e) {
				e.printStackTrace();
			}
			dto.setUpload(random + "_" + fileName);
		}
	}// end fileCheckDel()

	@RequestMapping("/list.sb")
	public ModelAndView listMethod(PageDTO pv, ModelAndView mav) {
		int totalRecord = service.countProcess();
		/* System.out.println("cnt : " + totalRecord); */
		if (totalRecord >= 1) {
			if (pv.getCurrentPage() == 0) { /* 처음 불러올때 0이므로 1을 준다. 게시판을 들어갈때 한번 실행됨 */
				currentPage = 1;
			} else {
				currentPage = pv.getCurrentPage(); /* getCurrentPage() 클릭한 값을 나타냄 */
			}
			pdto = new PageDTO(currentPage, totalRecord); /* 현재페이지값과 전체 개수를 넘겨준다. */
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
	}// end viewMethod()

	@RequestMapping(value = "/write.sb", method = RequestMethod.GET)
	public ModelAndView writeMethod(PageDTO pv, BoardDTO dto, ModelAndView mav) {
		if (dto.getRef() != 0) { // 답변글이면? 0이 아니면 답변글
			mav.addObject("currentPage", pv.getCurrentPage());
			mav.addObject("dto", dto);
		}
		mav.setViewName("board/write");
		return mav;
	}// end writeMethod()

	@RequestMapping(value = "/update.sb", method = RequestMethod.GET)
	   public ModelAndView updateMethod(int num, int currentPage, ModelAndView mav) {
	      
	      mav.addObject("dto",service.updateSelectProcess(num));
	      mav.addObject("currentPage", currentPage);
	      mav.setViewName("board/update");
	   
	      return mav;
	   }//end updateMethod()
	
	@RequestMapping(value = "/write.sb", method = RequestMethod.POST)
	public String writeProMethod(BoardDTO dto, HttpServletRequest request) {
		/*
		 * System.out.println("ex1: " + dto.getUpload());// 첨부파일 관련메소드
		 * System.out.println("ex2: " + dto.getFilename());// 첨부파일 관련메소드
		 */
		MultipartFile file = dto.getFilename();

		/* 중복파일 체크 삭제 */
		fileCheckDel(file, dto, request);

		dto.setIp(request.getRemoteAddr()); /* 첨부파일 유무 상관 없이 클라이언트 ip 주소를 dto에 저장한다. */

		/* 답변글이면 */
		if (dto.getRef() != 0) {
			service.reStepProcess(dto);
		} else { /* 제목글이면 */
			service.insertProcess(dto);
		}

		return "redirect:/list.sb";
	}// end writeProMethod()

	@RequestMapping(value = "/update.sb", method = RequestMethod.POST)
	public ModelAndView updatProc(BoardDTO dto, int currentPage, HttpServletRequest request, ModelAndView mav) {
		// 기존에 저장되어 있는 첨부파일 가져오기
		String filename = service.fileSelectprocess(dto.getNum());
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "temp" + File.separator;

		// 수정할 첨부파일 가져오기
		MultipartFile file = dto.getFilename();

		// 수정할 첨부파일 있으면
		/* 중복파일 체크 삭제 */
		fileCheckDel(file, dto, request);

		dto.setIp(request.getRemoteAddr());
		service.updateProcess(dto);
		mav.addObject("currentPage", currentPage);
		mav.setViewName("redirect:/list.sb");
		return mav;
	}// end updatProc()
	
	@RequestMapping("/delete.sb")
	public ModelAndView deleteMethod(int num, int currentPage, HttpServletRequest request, ModelAndView mav) {
		String upload = service.fileSelectprocess(num);
		if(upload != null) {
			String root = request.getSession().getServletContext().getRealPath("/");
			String saveDirectory = root + "temp" + File.separator;
			File fe = new File(saveDirectory, upload);
			fe.delete();
		}
		
		service.deleteProcess(num);
		PageDTO pv = new PageDTO(currentPage, service.countProcess());
		if(pv.getTotalPage() <= currentPage) {
			mav.addObject("currentPage", currentPage);
		}else {
			mav.addObject("currentPage", currentPage);
		}
		mav.setViewName("redirect:/list.sb");
		return mav;
	}// end deleteMethod()

	@RequestMapping("/contentdownload.sb")
	public ModelAndView downMethod(int num, ModelAndView mav) {
		mav.addObject("num", num);
		mav.setViewName("download"); /* download로 되어 있는 <bean id="download"> 를 찾으라는 의미*/
		return mav;
	}
}// end class

/*
 * ModelAndView를 선언하고 나서 .setviewName("test"); 를 하게되면, servlet-context.xml
 * 의ViewResolver에 따라서 prefix "/", suffix ".jsp"로 되어있으니 루트의 text.jsp로 가야한다. [출처]
 * ModelAndView .setViewName
 */

/*setViewName("board/update"); dispatcher에서 뷰에 선언덴 우선순위 빈의 ID를 검색 후 없을 때 InternalResourceViewResolver 이동 후 정보를 사용하여 파일을 찾는다. */
/* return "redirect:/list.sb"; */