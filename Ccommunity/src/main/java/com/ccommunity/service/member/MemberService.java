package com.ccommunity.service.member;

import javax.servlet.http.HttpSession;

import com.ccommunity.model.member.dto.MemberVO;
import com.ccommunity.model.member.dto.RegisterRequest;

public interface MemberService {
	//회원 가입
	public void memberSignup(RegisterRequest regReq) throws Exception;
	
	                    /* 로그인 관련 메서드 */
	// 로그인 
	public MemberVO memberLogin(MemberVO member);
	
	//로그인 정보
	public MemberVO memberInfo(MemberVO member) throws Exception;
	
	// 로그아웃
	public void logout(HttpSession session);

}
