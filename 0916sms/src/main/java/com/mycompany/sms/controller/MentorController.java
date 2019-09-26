package com.mycompany.sms.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.sms.dto.MentorFieldDTO;
import com.mycompany.sms.dto.UserDTO;
import com.mycompany.sms.service.MentorService;
import com.mycompany.sms.service.UserService;

//http://localhost:8090/sms/mentor_list.do

@Controller
public class MentorController {
	@Autowired
	private MentorService mservice;

	@Autowired
	private UserService uservice;

	public MentorController() {

	}

	public void setMservice(MentorService mservice) {
		this.mservice = mservice;
	}

	@RequestMapping("/mentor_list.do")
	public ModelAndView listMethod(ModelAndView mav, HttpSession session, MentorFieldDTO mfdto) {
		if (session.getAttribute("user_id") != null) {
			UserDTO dto = new UserDTO();
			dto = uservice.userInfoMethod((String) session.getAttribute("user_id"));
			mav.addObject("userDTO", dto);
		}

		if (mfdto.getField_num() != 0) {
			List<MentorFieldDTO> mflist = mservice.fieldcheckProcess(mfdto.getField_num());
			mav.addObject("mentorList", mservice.listProcess(mflist));
		} else {
			mav.addObject("mentorList", mservice.listProcess());
		}

		mav.setViewName("mentor_list");
		return mav;
	}// end listMethod()

	@RequestMapping("/mentor_view.do")
	public ModelAndView viewMethod(int num, ModelAndView mav, HttpSession session) {
		// System.out.println("mento_num:"+num);
		if (session.getAttribute("user_id") != null) {
			UserDTO dto = new UserDTO();
			dto = uservice.userInfoMethod((String) session.getAttribute("user_id"));
			mav.addObject("userDTO", dto);
		}
		mav.addObject("mentorView", mservice.viewProcess(num));
		mav.addObject("fieldDTO", mservice.fieldviewProcess(num));

		mav.setViewName("mentor_view");
		return mav;
	}
}// end class
