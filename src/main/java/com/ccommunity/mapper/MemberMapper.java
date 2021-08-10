package com.ccommunity.mapper;

import com.ccommunity.model.member.dto.MemberVO;
import com.ccommunity.model.member.dto.RegisterRequest;

public interface MemberMapper {
	//회원가입
	public void memberSignup(RegisterRequest regq);
	
	//이메일 중복 체크
	public String selectByEmail(String email);
	
	//아이디 중복 체크
	public String selectById(String id);
	
	//로그인 정보
	public MemberVO memberInfo(MemberVO member);
	
	//로그인 체크
	public MemberVO memberLogin(MemberVO member);
	
	}
