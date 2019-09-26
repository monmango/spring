package com.mycompany.sms.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.sms.dto.MeetingDTO;
import com.mycompany.sms.dto.MentorDTO;
import com.mycompany.sms.dto.MentorFollowDTO;
import com.mycompany.sms.dto.UserDTO;
import com.mycompany.sms.service.MeetingService;

@Controller
public class MeetingController {
	@Autowired
	private MeetingService service;

	public MeetingController() {

	}

	public void setService(MeetingService service) {
		this.service = service;
	}

	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public ModelAndView main(ModelAndView mav, HttpSession session, MeetingDTO dto, int meeting_num) {
		String user_id = null;
		String pId = null;
		if (session.getAttribute("user_id") != null) {
			user_id = (String) session.getAttribute("user_id");
		}
		;

		// 모임글을쓴 맨토의 아이디값
		mav.addObject("meuser", service.meuser(service.date(meeting_num).get(0).getMentor_num()));
		// 로그인한 유저 아이디값
		mav.addObject("userId", user_id);
		// 글을쓴 멘토의 모임데이터값
		mav.addObject("meeting", service.date(meeting_num));
		// 글을쓴 멘토의 정보값
		mav.addObject("mentor", service.mem(service.date(meeting_num).get(0)));
		mav.setViewName("meeting_detail");

		return mav;
	}

	@RequestMapping("/list.do")
	public ModelAndView mettinglist(ModelAndView mav, HttpSession session) {
		String user_id = null;

		if (session.getAttribute("user_id") != null) {
			user_id = (String) session.getAttribute("user_id");
			if (service.login(user_id) > 0) {

				mav.addObject("user", service.login(user_id));
			}
		}
		;
		mav.addObject("mm", service.mentorList());
		mav.setViewName("meeting_list");
		return mav;
	}

	@RequestMapping(value = "/write.do", method = RequestMethod.GET) // 리스트에서 글쓰기로 넘어감
	public String mettingwrite() {
		return "meeting_write";
	}

	@RequestMapping(value = "/write.do", method = RequestMethod.POST) // write 글쓰기 컨트롤
	public String meetingInsert(HttpServletRequest request, MeetingDTO dto, HttpSession session) {
		MultipartFile file = dto.getMeeting_file();
		saveCopyfile(file, dto, request);
		String user_id = (String) session.getAttribute("user_id");
		int mentor_num = service.getMentorNumMethod(user_id);
		dto.setMentor_num(mentor_num);
		service.meetingInsertProcess(dto);
		return "redirect:/list.do";
	}

	public void saveCopyfile(MultipartFile file, MeetingDTO dto, HttpServletRequest request) {
		if (!file.isEmpty()) {// 임시기억장치에있는 파일정보
			String fileName = file.getOriginalFilename();
			UUID random = UUID.randomUUID();
			String root = request.getSession().getServletContext().getRealPath("/");
			String saveDirectory = root + "temp" + File.separator;
			File fe = new File(saveDirectory);
			if (!fe.exists()) {
				fe.mkdir();
			}
			File ff = new File(saveDirectory, random + "_" + fileName);
			try {
				FileCopyUtils.copy(file.getInputStream(), new FileOutputStream(ff));// 임시저장 장치에 있는 파일을 읽어와서 file에 저장시킨다.
			} catch (IOException e) {
				e.printStackTrace();
			}
			dto.setMeeting_img_name(random + "_" + fileName);
		}
	}// end saveCopyfile()

}// end class
