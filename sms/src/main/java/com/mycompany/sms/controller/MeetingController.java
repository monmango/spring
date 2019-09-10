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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.sms.dto.MeetingDTO;
import com.mycompany.sms.dto.MentorDTO;
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
	public ModelAndView main(ModelAndView mav, MeetingDTO dto, int meeting_num) {		
		String d = service.date();
		int sum = d.indexOf(' ');
		String str = d.substring(0, sum);
		System.out.println("meeting_num: "+meeting_num);
		mav.addObject("date", str);
		mav.addObject("dto", dto);
		mav.addObject("aList", service.detailProcess(meeting_num));
		mav.setViewName("views/meeting_detail");

		return mav;
	}

	@RequestMapping("/list.do")
	public ModelAndView mettinglist(ModelAndView mav) {
		String d = service.date();
		int num = d.indexOf(' ');
		String str = d.substring(0, num);
		mav.addObject("date", str);
		mav.addObject("mm",service.mentorList());
		mav.setViewName("views/meeting_list");
		return mav;
	}

	@RequestMapping(value = "/write.do", method = RequestMethod.GET) // 리스트에서 글쓰기로 넘어감
	public String mettingwrite() {

		return "views/meeting_write";
	}

	@RequestMapping(value = "/write.do", method = RequestMethod.POST) // write 글쓰기 컨트롤
	public String meetingInsert(HttpServletRequest request, MeetingDTO dto) {
		MultipartFile file = dto.getMeeting_file();
		saveCopyfile(file, dto, request);
		service.meetingInsertProcess(dto);
		return "redirect:/list.do";
	}

	public void saveCopyfile(MultipartFile file, MeetingDTO dto, HttpServletRequest request) {
		if (!file.isEmpty()) {// 임시기억장치에있는 파일정보
			String fileName = file.getOriginalFilename();
			// 중복파일명을 처리하기 위해 난수 발생
			UUID random = UUID.randomUUID();
			String root = request.getSession().getServletContext().getRealPath("/");
			// root 경로 :
			// C:\study\spring_workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\spring_07_baord\
			// root + "temp/"
			System.out.println(root);
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
	}// end saveCopyfile()///////////////////////////

}// end class
