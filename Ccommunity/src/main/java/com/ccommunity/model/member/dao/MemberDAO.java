package com.ccommunity.model.member.dao;

import javax.servlet.http.HttpSession;

import com.ccommunity.model.member.dto.MemberVO;
import com.ccommunity.model.member.dto.RegisterRequest;

public interface MemberDAO {
	// 이메일 중복 체크
	public String selectByEmail(String email);
	
	//아이디 중복 체크
	public String selectById(String id);
	// 회원 가입
	public void memberSignup(RegisterRequest regq);
	
	
	// 로그인 체크
	public MemberVO memberLogin(MemberVO vo);
	
	//로그인 정보
	public MemberVO memberInfo(MemberVO vo);
	
	//로그아웃
	public void logout(HttpSession session);
}
