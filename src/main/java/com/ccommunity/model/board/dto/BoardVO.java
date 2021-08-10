package com.ccommunity.model.board.dto;

public class BoardVO {
	
	public int f_seq;

	public String title;

	public String content;

	public int cnt;

	public String w_id;

	public String reg_date;

	public String edit_date;

	public int getF_seq() {
		return f_seq;
	}

	public void setF_seq(int f_seq) {
		this.f_seq = f_seq;
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

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public String getW_id() {
		return w_id;
	}

	public void setW_id(String w_id) {
		this.w_id = w_id;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getEdit_date() {
		return edit_date;
	}

	public void setEdit_date(String edit_date) {
		this.edit_date = edit_date;
	}

	@Override
	public String toString() {
		return "BoardVO [f_seq=" + f_seq + ", title=" + title + ", content=" + content + ", cnt=" + cnt + ", w_id=" + w_id
				+ ", reg_date=" + reg_date + ", edit_date=" + edit_date + "]";
	}

}
