package com.ccommunity.controller.member;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ccommunity.exception.AlreadyExistingEmailException;
import com.ccommunity.exception.AlreadyExistingIdException;
import com.ccommunity.model.member.dto.MemberVO;
import com.ccommunity.model.member.dto.RegisterRequest;
import com.ccommunity.service.member.MemberService;
import com.ccommunity.util.member.RegisterRequestValidator;

@Controller
@RequestMapping(value = "/user")
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberService;

	// 회원 가입 페이지 이동
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signup() {
		logger.info("회원가입 페이지 진입");
		ModelAndView mv = new ModelAndView("user/signup");
		mv.addObject("registerRequest", new RegisterRequest());
		return mv;
	}

	// 로그인 페이지 이동
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login() {
		logger.info("로그인 페이지 진입");
	}

	// 회원가입
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signup(RegisterRequest regReq, Errors errors) throws Exception {
		new RegisterRequestValidator().validate(regReq, errors);
		if (errors.hasErrors()) {
			ModelAndView mv = new ModelAndView("user/signup");
			return mv;
		}
		try {
			memberService.memberSignup(regReq);
		}	catch (AlreadyExistingEmailException e) {
			errors.rejectValue("email", "duplicate", "이미 가입된 이메일입니다.");
			ModelAndView mv = new ModelAndView("user/signup");
			return mv;
		} catch (AlreadyExistingIdException e) {
			
			errors.rejectValue("id", "duplicate", "이미 가입된 아이디입니다.");
			ModelAndView mv = new ModelAndView("user/signup");
			return mv;
		}
		ModelAndView mv = new ModelAndView("redirect:/");
		return mv;
	}

	// 로그인 처리
	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public String loginCheck(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception {

		HttpSession session = request.getSession();
		System.out.println("MemberController로 member객체 전송: " + member);
		MemberVO vo = memberService.memberLogin(member);
		if (vo == null) {
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/user/login";
		}
		session.setAttribute("member", vo);
		System.out.println(session);
		return "redirect:/";
	}

	// 로그아웃 처리
	@RequestMapping(value = "/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request) throws Exception {
		logger.info("logout메서드 진입");
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}

}
