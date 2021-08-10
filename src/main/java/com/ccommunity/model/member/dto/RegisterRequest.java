package com.ccommunity.model.member.dto;

public class RegisterRequest {
    
    private String email;
    private String id;
    private String name;
    private String pw;
    private String checkPw;
    private String tel;
    
    
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	//비밀번호와 비밀번호확인이 일치하는지 검사
    public boolean isPwEqualToCheckPw() {
        return pw.equals(checkPw);
    }
 
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
 
    public String getId() {
        return id;
    }
 
    public void setId(String id) {
        this.id = id;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    public String getPw() {
        return pw;
    }
 
    public void setPw(String pw) {
        this.pw = pw;
    }
 
    public String getCheckPw() {
        return checkPw;
    }
 
    public void setCheckPw(String checkPw) {
        this.checkPw = checkPw;
    }
    @Override
	public String toString() {
		return "RegisterRequest [email=" + email + ", id=" + id + ", name=" + name + ", pw=" + pw + ", checkPw="
				+ checkPw + "]";
	}

}