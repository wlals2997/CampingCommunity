package com.ccommunity.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.ccommunity.model.member.dto.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	@Autowired
	private MemberMapper membermapper;
	
	//회원가입 쿼리 테스트 메서드
	/*@Test
	public void memberSignup() throws Exception{
		MemberVO member = new MemberVO();
		member.setId("456");
		member.setPw("5477");
		member.setName("basd");
		member.setAddr("dasd");
		member.setTel("asdd");
		membermapper.memberSignup(member);
	}
	*/

}
