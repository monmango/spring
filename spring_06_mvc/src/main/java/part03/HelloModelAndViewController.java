package part03;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//http://localhost:8090/mymvc/helloModelView.htm
@Controller
public class HelloModelAndViewController {
	
	@RequestMapping("/helloModelView.htm")
	public ModelAndView search(ModelAndView mav) {
		mav.addObject("name", "kim");
		mav.addObject("age", 30);
		mav.setViewName("view/part03/helloModelView");
		return mav;
	}// end search()
}// end class
