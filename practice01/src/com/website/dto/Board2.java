package com.website.dto;

import java.util.ArrayList;

public class Board2 {
	private int no;
	private String title;
	private String content;
	private String author;
	private String resdate;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	
	public ArrayList<Board2> board2_list(){
		ArrayList<Board2> board2 = null;
		return board2;
	}
	public void board_read(Board2 board2){}
	public void board_write(String id, String pw){}	
	public void board_modify(Board2 board2){}
	public void board_del(int no){}
	
}
