package com.ccommunity.controller.camp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ccommunity.model.board.Criteria;
import com.ccommunity.model.camp.dto.CampVO;
import com.ccommunity.service.camp.CampService;

@Controller
@RequestMapping(value="/camp")
public class CampController {
	@Autowired
	CampService campService;
	@RequestMapping(value="/search", method=RequestMethod.GET)
	// 게시판 목록(리스트)(페이징 적용) 조회
	public String tables(Model model,CampVO vo) {
		model.addAttribute("camp_list", campService.getCampList(vo));
		return "camp/campboard";	
			//게시물 총 갯수
		//int total = bservice.getTotal(cri);
		//PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		//model.addAttribute("pageMaker", pageMake);
		}

}
