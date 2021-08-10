package com.ccommunity.model.member.dao;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ccommunity.mapper.MemberMapper;
import com.ccommunity.model.member.dto.MemberVO;
import com.ccommunity.model.member.dto.RegisterRequest;

@Repository
public class MemberDAOImpl implements MemberDAO{
	@Autowired
	MemberMapper memberMapper;
	
	// 이메일 확인
	public String selectByEmail(String email) {
		System.out.println("MemberDAO <- 전달받음 " + email);
		return memberMapper.selectByEmail(email);
	}
	
	// 아이디 중복 확인
	public String selectById(String id) {
        return memberMapper.selectById(id);
    }
	
	// 회원 가입
	@Override
	public void memberSignup(RegisterRequest regq) {
		memberMapper.memberSignup(regq);
	}


	//로그인
	@Override
	public MemberVO memberLogin(MemberVO vo) {	
		System.out.println("DAO(VO):" + memberMapper.memberLogin(vo));
		return memberMapper.memberLogin(vo);
	}
	
	// 로그인 정보
	@Override
	public MemberVO memberInfo(MemberVO vo) {
		return memberMapper.memberInfo(vo);
	}
	
	// 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
	}
}	
