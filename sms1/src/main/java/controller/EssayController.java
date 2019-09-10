package controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dto.EssayDTO;
import dto.PageDTO;
import service.EssayService;

//http://localhost:8090/comsms/essaylist.es
@Controller
public class EssayController {
	
	private EssayService service;
	private int currentPage;
	private PageDTO pdto;
	
	public EssayController() {}
	
	public void setService(EssayService service) {
		this.service = service;
	}

	@RequestMapping("/essaylist.es")
	public ModelAndView essayListPage(PageDTO pv, ModelAndView mav) {
		System.out.println("gma");
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
		mav.setViewName("essay_list");
		return mav;
	}
	
	@RequestMapping("/essayView.es")
	public ModelAndView essayViewPage(ModelAndView mav, int essay_num, int currentPage ) {
		mav.addObject("essayDto", service.essayViewProcess(essay_num));
		mav.addObject("currentPage", currentPage);		
		mav.setViewName("essay_view");
		return mav;
	}
	
	
	@RequestMapping(value = "/essayWrite.es", method = RequestMethod.GET)
	public String essayInsertPage() {
		return "essay_write";
	}
	
	@RequestMapping(value = "/essayWrite.es", method = RequestMethod.POST)
	public String essayInsertProPage(EssayDTO dto) {
		service.essayInsertProcess(dto);
		return "redirect:/essaylist.es";
	}
	
	@RequestMapping(value = "/essayUpdate.es", method = RequestMethod.GET)
	public ModelAndView essayUpViewPage(ModelAndView mav, int essay_num) {
		mav.addObject("essayDto", service.essayViewProcess(essay_num));
		mav.setViewName("essay_update");
		return mav;
	}
	
	@RequestMapping(value = "/essayUpdate.es", method = RequestMethod.POST)
	public String essayUpdatePage(EssayDTO dto) {
		System.out.println(dto.getEssay_content());
		System.out.println(dto.getEssay_subject());
		service.essayUpdateProcess(dto);
		return "redirect:/essaylist.es";
	}
	
	@RequestMapping("/essayDelete.es")
	public String essayDeletePage(int essay_num) {
		service.essayDeleteProcess(essay_num);
		return "redirect:/essaylist.es";
	}
}
