package part02_search_xml;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


//http://localhost:8090/myajax/empseach.do
@Controller
public class EmpController {
	
	private EmpDAO dao;
	
	public EmpController() {}
	
	public void setDao(EmpDAO dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/empseach.do")
	public String doGet() {
		return "part02_search_xml/searchForm";
	}
	
	@RequestMapping(value="/searchProcess.do")
	@ResponseBody 
	public EmpList process(String data, HttpServletResponse response){
		//System.out.println(dao.search(data));
		//EmpList empList = new EmpList();
		//empList.setEmployess(dao.search(data));
		//return empList.getEmployess();
		response.setContentType("(text/xml);charset=UTF-8");
		return new EmpList(dao.search(data));
	}
}
