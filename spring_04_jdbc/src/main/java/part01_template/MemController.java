package part01_template;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//http://localhost:8090/myjdbc/list.html

@Controller
public class MemController {

	private MemDAO dao;
	
	
	public void setDao(MemDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/list.html") /*1*/
	public ModelAndView process(ModelAndView mav) {
		mav.addObject("aList", dao.list());
		mav.setViewName("view/part01/list");
		return mav;
	}// end process()
	
	@RequestMapping(value="/insert.html", method=RequestMethod.GET)
	public String insertForm() {
		return "view/part01/insert";
	}//end insertForm()
	
	@RequestMapping(value="insert.html", method=RequestMethod.POST )
	public String insertData(MemDTO dto) {
		dao.insertMethod(dto);
		return "redirect:/list.html";/* 1번을 호출한다.*/
	}
	@RequestMapping(value="update.html", method=RequestMethod.GET) /*수정화면 보여주기*/
	public ModelAndView updateForm(int num, ModelAndView mav) { 
		mav.addObject("dto", dao.updateMethod(num));
		mav.setViewName("view/part01/update");
		return mav;
	}
	
	@RequestMapping(value="update.html", method=RequestMethod.POST) /*수정 하기*/
	public String updateData(MemDTO dto) {
		dao.updateMethod(dto);
		return "redirect:/list.html";/* 1번을 호출한다.*/
	}
	
	@RequestMapping("/delete.html")
	public String deleteForm(int num) {
		dao.deleteMethod(num);
		return "redirect:/list.html";/* 1번을 호출한다.*/
	}
}// end class
