package com.website.dto;

import java.util.ArrayList;

public class Mem {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String tel;
	private String regdate;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
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
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	public void join(Member member) {}
	public void login(String id, String pw) {}
	public Mem mem_info() {
		Mem member = null;
		return member;
	}
	public Mem mem2_edit()	{
		Mem member = null;
		return member;
	}
	public void logout() {}
	
	public void secession() {}
	
	public ArrayList<Mem> mem2_list() {
		ArrayList<Mem> Mem2List = null;
		return Mem2List;
	}
}
