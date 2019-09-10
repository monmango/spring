package com.mycompany.sms.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.sms.dto.UserDTO;
import com.mycompany.sms.service.UserService;

//http://localhost:8090/sms/home.do
@Controller
public class MainController {
	@Autowired
	private UserService service;

	public void setService(UserService service) {
		this.service = service;
	}

	public MainController() {
	}

	@RequestMapping(value="/home.do", method=RequestMethod.GET)
	public ModelAndView homeGetProcess(HttpSession session, ModelAndView mav) {
		String user_id = (String) session.getAttribute("user_id");
		if(user_id != null) {
		mav.addObject("userDTO", service.userInfoMethod((String) session.getAttribute("user_id")));
		}
		mav.setViewName("home");
		return mav;
	}

	@RequestMapping("/about.do")
	public String aboutProcess() {
		return "views/about";
	}

	@RequestMapping("/blank.do")
	public String blankProcess() {
		return "views/blank";
	}

	@RequestMapping("/blog-post.do")
	public String blogProcess() {
		return "views/blog-post";
	}

	@RequestMapping("/category.do")
	public String categoryProcess() {
		return "views/category";
	}

	@RequestMapping("/contact.do")
	public String contactProcess() {
		return "views/contact";
	}

	
	@RequestMapping(value="/home.do", method=RequestMethod.POST)
	public ModelAndView indexProcess(UserDTO dto, ModelAndView mav, HttpSession session) {
		System.out.println("check:method=" + service.userCheckMethod(dto));
		if(service.userCheckMethod(dto) != 0) {
			session.setAttribute("user_id", service.userInfoMethod(dto.getUser_id()).getUser_id());
			mav.addObject("userDTO", service.userInfoMethod(dto.getUser_id()));
			mav.setViewName("home");
		}else {
			mav.setViewName("views/login_form");
		}
		return mav;
	}
	
	@RequestMapping("/userLogout.do")
	public String logOutProcess(HttpSession session) {
		session.removeAttribute("user_id");
		return "redirect:/home.do";
	}

	@RequestMapping("/signUp.do")
	public String signUpProcess() {
		return "views/signup_form";
	}

	@RequestMapping("/userLogin.do")
	public String logInProcess() {
		return "views/login_form";
	}
	
	@RequestMapping(value="/userProfile.do", method=RequestMethod.GET)
	public ModelAndView userProfileGetProcess(String user_id, ModelAndView mav,HttpSession session) {
			session.setAttribute("user_id", user_id);
			UserDTO udto = new UserDTO();
			udto = service.userInfoMethod(user_id);
			mav.addObject("userDTO", udto);
			mav.setViewName("user_profile");
			return mav;
	}
	

	@RequestMapping(value= "/userSetting.do", method=RequestMethod.GET)
	public ModelAndView userSettingGetProcess(String user_id, ModelAndView mav,HttpSession session) {
		session.setAttribute("user_id", user_id);
		UserDTO udto = new UserDTO();
		udto = service.userInfoMethod(user_id);
		mav.addObject("userDTO", udto);
		mav.setViewName("user_setting");
		return mav;
	}
	
	@RequestMapping(value= "/userSetting.do", method=RequestMethod.POST)
	public ModelAndView userSettingPostProcess(UserDTO dto, ModelAndView mav,HttpSession session) {
		session.setAttribute("user_id", dto.getUser_id());
		UserDTO udto = new UserDTO();
		udto = service.userInfoMethod(dto.getUser_id());
		mav.addObject("userDTO", udto);
		mav.setViewName("views/user_setting");
		return mav;
	}

	@RequestMapping(value = "/userInsert.do", method = RequestMethod.POST)
	public String userInsertMethod(UserDTO dto, HttpServletRequest request) {
		service.userInsertServiceMethod(dto);
		return "redirect:/home.do";
	}
	
	@RequestMapping(value= "/userUpdate.do", method=RequestMethod.POST)
	public ModelAndView userUpdateMethod(UserDTO dto, ModelAndView mav, HttpServletRequest request,HttpSession session) {
		session.setAttribute("user_id", dto.getUser_id());
		UserDTO udto = new UserDTO();
		MultipartFile file = dto.getUser_image_filename();
		//기존 첨부파일
		String filename=service.userSelectFile(dto);
		String root = request.getSession().getServletContext().getRealPath("/");
		String saveDirectory = root + "temp" + File.separator;
		//수정할 첨부파일

		if(!file.isEmpty()) {
			if(filename!=null) {
				File fe = new File(saveDirectory, filename);
				fe.delete();
			}
			UUID random = saveCopyFile(file, request);
			dto.setUser_image(random + "_" + file.getOriginalFilename());
		}
		service.userSettingUploadServiceMethod(dto);
		udto = service.userInfoMethod(dto.getUser_id());
		mav.addObject("userDTO",udto);
		mav.setViewName("user_profile");
		return mav;
	}
	
	public UUID saveCopyFile(MultipartFile file, HttpServletRequest request) {
		String fileName = file.getOriginalFilename();
		// 중복파일명을 처리하기 위해 난수 발생
		UUID random = UUID.randomUUID();
		String root = request.getSession().getServletContext().getRealPath("/");
		// System.out.println(root);
		//C:/study/spring_workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/sms/temp/
		// root + "temp/"
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
	}//end saveCopyFile()/////////////////////////////
	
	
}
