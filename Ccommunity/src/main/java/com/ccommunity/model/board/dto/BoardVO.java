package com.ccommunity.model.board.dto;

public class BoardVO {
	
	public int f_seq;

	public String f_title;

	public String f_content;

	public int f_cnt;

	public String f_w_id;

	public String f_regdate;

	public String edit_date;

	public int getF_seq() {
		return f_seq;
	}

	public String getF_title() {
		return f_title;
	}

	public void setF_title(String f_title) {
		this.f_title = f_title;
	}

	public String getF_content() {
		return f_content;
	}

	public void setF_content(String f_content) {
		this.f_content = f_content;
	}

	public int getF_cnt() {
		return f_cnt;
	}

	public void setF_cnt(int f_cnt) {
		this.f_cnt = f_cnt;
	}

	public String getF_w_id() {
		return f_w_id;
	}

	public void setF_w_id(String f_w_id) {
		this.f_w_id = f_w_id;
	}

	public String getF_regdate() {
		return f_regdate;
	}

	public void setF_regdate(String f_regdate) {
		this.f_regdate = f_regdate;
	}

	public String getEdit_date() {
		return edit_date;
	}

	public void setEdit_date(String edit_date) {
		this.edit_date = edit_date;
	}

	public void setF_seq(int f_seq) {
		this.f_seq = f_seq;
	}

	
}
