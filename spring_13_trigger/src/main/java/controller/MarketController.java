package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import service.MarketService;

//http://localhost:8090/mytrigger/itemList.do
@Controller
public class MarketController {
	private MarketService service;

	public MarketController() {}

	public void setService(MarketService service) {
		this.service = service;
	}
	
	@RequestMapping("/itemList.do")
	public ModelAndView itemSelectList(ModelAndView mav) {
		mav.addObject("aList", service.itemSelectProcess());
		mav.setViewName("itemList");
		return mav;
	}
}// end class
