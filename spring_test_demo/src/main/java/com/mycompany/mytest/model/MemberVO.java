package com.mycompany.mytest.model;

public class MemberVO {
	private int num;
	private String name;
	private String email;
	private String tel;
	private String addr;
	private String writeday;
	public int getNum() {
		return num;
	}
	public void setNum(int no) {
		this.num = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	@Override
	public String toString() {
		return "MemberVO [num=" + num + ", name=" + name + ", email=" + email + ", tel=" + tel + ", addr=" + addr
				+ ", writeday=" + writeday + "]";
	}
	
}
