package com.mycompany.mytest;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.mytest.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private MemberService service;

	@RequestMapping(value = "/beginSpring/memberRegister.action", 
			method = { RequestMethod.POST })
	public ModelAndView memberRegisterEnd(HttpServletRequest request, 
			ModelAndView mv) {
		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String tel = request.getParameter("tel");
            String userid = request.getParameter("userid");
			
			HashMap<String, String> paraMap = new HashMap<String, String>();
            paraMap.put("name", name);
			paraMap.put("email", email);
			paraMap.put("tel", tel);			
			paraMap.put("userid", userid);
			
			int n = service.memberRegister(paraMap);

			String result = "";

			if (n == 1)

				result = "회원가입 성공!!";

			else

				result = "회원가입 실패!!";

			mv.addObject("result", result);

			mv.setViewName("memberRegisterResult");

		} catch (Exception e) {

			mv.addObject("error", "회원가입도중 오류가 발생하였습니다");

			mv.setViewName("error");

		}

		return mv;

	}
	
	
	@RequestMapping(value = "/mybatistest/mybatisTest3End.action", method = { RequestMethod.POST })
	public ModelAndView mybatisTest3End(HttpServletRequest request, 
			ModelAndView mv) {
		try {

			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String tel = request.getParameter("tel");
			String passwd = request.getParameter("passwd");
			String userid = request.getParameter("userid");

			HashMap<String, String> paraMap = new HashMap<String, String>();

			paraMap.put("name", name);
			paraMap.put("email", email);
			paraMap.put("tel", tel);
			paraMap.put("passwd", passwd);
			paraMap.put("userid", userid);

			int n = service.memberRegister(paraMap);
			String result = "";
			if (n == 1)
				result = "회원가입 성공!!";
			else
				result = "회원가입 실패!!";
			
			System.out.println(result);
			/*
			mv.addObject("result", result);
			mv.setViewName("home");
			*/
		} catch (Exception e) {
			//mv.addObject("error", "회원가입도중 오류가 발생하였습니다");
			//mv.setViewName("error");
		}
	//	return mv;

			return null;
	}
}
