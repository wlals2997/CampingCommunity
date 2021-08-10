package com.ccommunity.model.camp.dto;

public class CampVO {
	private String c_name;
	private String c_type;
	private String c_addr;
	private String c_tel;
	private int c_code;
	private String sido;
	private String sigungu;
	
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_type() {
		return c_type;
	}
	public void setC_type(String c_type) {
		this.c_type = c_type;
	}
	public String getC_addr() {
		return c_addr;
	}
	public void setC_addr(String c_addr) {
		this.c_addr = c_addr;
	}
	public String getC_tel() {
		return c_tel;
	}
	public void setC_tel(String c_tel) {
		this.c_tel = c_tel;
	}
	public int getC_code() {
		return c_code;
	}
	public void setC_code(int c_code) {
		this.c_code = c_code;
	}
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getSigungu() {
		return sigungu;
	}
	public void setSigungu(String sigungu) {
		this.sigungu = sigungu;
	}
	@Override
	public String toString() {
		return "CampVO [c_name=" + c_name + ", c_type=" + c_type + ", c_addr=" + c_addr + ", c_tel=" + c_tel
				+ ", c_code=" + c_code + ", sido=" + sido + ", sigungu=" + sigungu + "]";
	}
	
	
}
