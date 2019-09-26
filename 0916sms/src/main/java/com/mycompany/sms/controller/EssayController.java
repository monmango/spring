package com.mycompany.sms.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.mycompany.sms.dto.EssayDTO;
import com.mycompany.sms.dto.PageDTO;
import com.mycompany.sms.service.EssayService;

//http://localhost:8090/sms/essaylist.do
@Controller
public class EssayController {
	
	@Autowired
	private EssayService service;
	private int currentPage;
	private PageDTO pdto;

	
	public EssayController() {}
	
	public void setService(EssayService service) {
		this.service = service;
	}
	
	@RequestMapping("/essaylist.do")
	public ModelAndView essayListPage(PageDTO pv, ModelAndView mav) {
		int totalRecord = service.countProcess();
		if (totalRecord >= 1) {
			if (pv.getCurrentPage() == 0) {
				currentPage = 1;
			} else {
				currentPage = pv.getCurrentPage();
			}
			pdto = new PageDTO(currentPage, totalRecord);
			mav.addObject("pv", pdto);
			mav.addObject("e_list",service.essayListProcess(pdto));
		}
		mav.setViewName("views/essay_list");
		return mav;
	}
	
	@RequestMapping("/essayview.do")
	public ModelAndView essayViewPage(ModelAndView mav, int essay_num, int currentPage) {
		mav.addObject("essayDto", service.essayViewProcess(essay_num));
		mav.addObject("currentPage", currentPage);		
		mav.setViewName("views/essay_view");
		return mav;
	}
	
	
	@RequestMapping(value = "/essaywrite.do", method = RequestMethod.GET)
	public String essayInsertPage() {
		return "views/essay_write";
	}
	
	@RequestMapping(value = "/essaywrite.do", method = RequestMethod.POST)
	public String essayInsertProPage(EssayDTO dto, HttpServletRequest request) {

		System.out.println("시작");
		MultipartFile file = dto.getFilepath();
		if (!file.isEmpty()) {
			UUID random = saveCopyFile(file, request);
			dto.setEssay_img(random + "_" + file.getOriginalFilename());
		}	
			
		System.out.println("끝");
		service.essayInsertProcess(dto);
		return "redirect:/essaylist.do";
	}
	
	@RequestMapping(value = "/essayupdate.do", method = RequestMethod.GET)
	public ModelAndView essayUpViewPage(ModelAndView mav, int essay_num, int currentPage) {
		mav.addObject("essayDto", service.essayUpViewProcess(essay_num));
		mav.setViewName("views/essay_update");
		return mav;
	}
	
	@RequestMapping(value = "/essayupdate.do", method = RequestMethod.POST)
	public ModelAndView essayUpdatePage(ModelAndView mav, HttpServletRequest request, EssayDTO dto, int currentPage) {
		service.essayUpdateProcess(dto);
		mav.addObject("currentPage", currentPage);
		mav.setViewName("redirect:/essaylist.do");
		return mav;
	}
	
	@RequestMapping("/essaydelete.do")
	public String essayDeletePage(int essay_num) {
		System.out.println("delete");
		service.essayDeleteProcess(essay_num);
		return "redirect:/essaylist.do";
	}
		
	public UUID saveCopyFile(MultipartFile file, HttpServletRequest request) {
		String fileName = file.getOriginalFilename();
		// 중복파일명을 처리하기 위해 난수 발생
		UUID random = UUID.randomUUID();
		String root = request.getSession().getServletContext().getRealPath("/");
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
	}//end saveCopyFile()
}
