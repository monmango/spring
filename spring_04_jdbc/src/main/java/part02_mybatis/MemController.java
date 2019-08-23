package part02_mybatis;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//http://localhost:8090/myjdbc/list.do

@Controller
public class MemController {

	private MemDAO dao;
	
	
	public void setDao(MemDAO dao) {
		this.dao = dao;
	}

	@RequestMapping("/list.do") /*1*/
	public ModelAndView process(ModelAndView mav) {
		mav.addObject("aList", dao.list());
		mav.setViewName("view/part02/list");
		return mav;
	}// end process()
	
	@RequestMapping(value="/insert.do", method=RequestMethod.GET)
	public String insertForm() {
		return "view/part02/insert";
	}//end insertForm()
	
	@RequestMapping(value="insert.do", method=RequestMethod.POST )
	public String insertData(MemDTO dto) {
		dao.insertMethod(dto);
		return "redirect:/list.do";/* 1번을 호출한다.*/
	}
	@RequestMapping(value="update.do", method=RequestMethod.GET) /*수정화면 보여주기*/
	public ModelAndView updateForm(int num, ModelAndView mav) { 
		mav.addObject("dto", dao.updateMethod(num));
		mav.setViewName("view/part02/update");
		return mav;
	}
	
	@RequestMapping(value="update.do", method=RequestMethod.POST) /*수정 하기*/
	public String updateData(MemDTO dto) {
		dao.updateMethod(dto);
		return "redirect:/list.do";/* 1번을 호출한다.*/
	}
	
	@RequestMapping("/delete.do")
	public String deleteForm(int num) {
		dao.deleteMethod(num);
		return "redirect:/list.do";/* 1번을 호출한다.*/
	}
}// end class
