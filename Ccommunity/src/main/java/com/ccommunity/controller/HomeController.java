package com.ccommunity.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ccommunity.model.board.dto.BoardVO;
import com.ccommunity.model.camp.dto.CampVO;
import com.ccommunity.service.board.BoardService;
import com.ccommunity.service.camp.CampService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	BoardService bservice;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		// model.addAttribute("getBoardListRank", bservice.getBoardListRank());
		return "index";
	}

	@Autowired
	CampService campService;
	
	// 캠핑장 검색 
	@RequestMapping(value = "/getSigungu.do", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, String> SidoBtn(CampVO vo) throws Exception {
		HashMap<String, String> sigungu = new HashMap<String, String>();
		String sido = vo.getSido();
		System.out.println(sido);
		String[] sigungu_data = campService.getSigungu(sido);

		for (int i = 0; i < sigungu_data.length; i++) {
			sigungu.put(sigungu_data[i], sigungu_data[i]);
		}
		return sigungu;
	}
	
	// 게시글 순위
	@ResponseBody
	@RequestMapping(value = "/listRank.do", method=RequestMethod.GET)
	public List<BoardVO> linkRank() {
		return bservice.getBoardListRank();
	}
}
