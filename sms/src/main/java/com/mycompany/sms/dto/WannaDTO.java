package com.mycompany.sms.dto;

import org.springframework.web.multipart.MultipartFile;

public class WannaDTO {
	private int mentor_req_num, mentor_req_phone;
	private String mento_req_name, mento_req_co, mento_req_dept, mento_req_level,
			mento_req_field, mento_req_career, mento_req_info, mento_req_email;

	public WannaDTO() {

	}
	
	// board테이블의 파일첨부를 처리해주는 멤버변수
	private String mento_req_upload;

	// form 페이지에서 파일첨부를 받아 처리해주는 멤버변수
	private MultipartFile mento_req_filename;

	
	

	public int getMentor_req_num() {
		return mentor_req_num;
	}

	public void setMentor_req_num(int mentor_req_num) {
		this.mentor_req_num = mentor_req_num;
	}

	public int getMentor_req_phone() {
		return mentor_req_phone;
	}

	public void setMentor_req_phone(int mentor_req_phone) {
		this.mentor_req_phone = mentor_req_phone;
	}

	public String getMento_req_name() {
		return mento_req_name;
	}

	public void setMento_req_name(String mento_req_name) {
		this.mento_req_name = mento_req_name;
	}

	public String getMento_req_co() {
		return mento_req_co;
	}

	public void setMento_req_co(String mento_req_co) {
		this.mento_req_co = mento_req_co;
	}

	public String getMento_req_dept() {
		return mento_req_dept;
	}

	public void setMento_req_dept(String mento_req_dept) {
		this.mento_req_dept = mento_req_dept;
	}

	public String getMento_req_level() {
		return mento_req_level;
	}

	public void setMento_req_level(String mento_req_level) {
		this.mento_req_level = mento_req_level;
	}

	public String getMento_req_field() {
		return mento_req_field;
	}

	public void setMento_req_field(String mento_req_field) {
		this.mento_req_field = mento_req_field;
	}

	public String getMento_req_career() {
		return mento_req_career;
	}

	public void setMento_req_career(String mento_req_career) {
		this.mento_req_career = mento_req_career;
	}

	public String getMento_req_info() {
		return mento_req_info;
	}

	public void setMento_req_info(String mento_req_info) {
		this.mento_req_info = mento_req_info;
	}

	public String getMento_req_email() {
		return mento_req_email;
	}

	public void setMento_req_email(String mento_req_email) {
		this.mento_req_email = mento_req_email;
	}

	public String getMento_req_upload() {
		return mento_req_upload;
	}

	public void setMento_req_upload(String mento_req_upload) {
		this.mento_req_upload = mento_req_upload;
	}

	public MultipartFile getMento_req_filename() {
		return mento_req_filename;
	}

	public void setMento_req_filename(MultipartFile mento_req_filename) {
		this.mento_req_filename = mento_req_filename;
	}
	
	
	
	
	
	
	
}//end class
