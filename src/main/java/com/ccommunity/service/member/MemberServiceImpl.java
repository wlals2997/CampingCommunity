package com.ccommunity.service.member;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ccommunity.exception.AlreadyExistingEmailException;
import com.ccommunity.exception.AlreadyExistingIdException;
import com.ccommunity.mapper.MemberMapper;
import com.ccommunity.model.member.dao.MemberDAO;
import com.ccommunity.model.member.dto.MemberVO;
import com.ccommunity.model.member.dto.RegisterRequest;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDao;
	private SqlSessionTemplate sqlsession;

	// 회원 가입
	@Override
	public void memberSignup(RegisterRequest regReq) throws Exception {
		System.out.println("MemberServiceImpl <- " + regReq.toString() + "을 전달 받았습니다.");
		
		String email = memberDao.selectByEmail(regReq.getEmail());
		String id = memberDao.selectById(regReq.getId());
		System.out.println("memberDao -> "+ email);
		
		if(email != null) {
			throw new AlreadyExistingEmailException(regReq.getEmail()+" is duplicate email.");
		}
		
		if(id!=null) {
            throw new AlreadyExistingIdException(regReq.getId()+" is duplicate id.");
        }
		memberDao.memberSignup(regReq);
    }

	/* 로그인 관련 메서드 */
	// 로그인 정보
	@Override
	public MemberVO memberInfo(MemberVO member) throws Exception {
		return memberDao.memberInfo(member);
	}

	// 로그인
	@Override
	public MemberVO memberLogin(MemberVO member) {
		return memberDao.memberLogin(member);
	}

	// 로그아웃
	@Override
	public void logout(HttpSession session) {
		session.invalidate(); // 세션 정보 초기화
	}
}
