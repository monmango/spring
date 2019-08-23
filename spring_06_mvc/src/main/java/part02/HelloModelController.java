package part02;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

//http://localhost:8090/mymvc/view/part02/helloModel.htm
@Controller
public class HelloModelController {
	
	@RequestMapping("/view/part02/helloModel.htm")
	public Model search() {
		Model model = new ExtendedModelMap();
		model.addAttribute("id", "korea");
		return model;
	}// end search()
}//end class
