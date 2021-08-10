package com.ccommunity.controller.board;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ccommunity.model.board.Criteria;
import com.ccommunity.model.board.PageMakerDTO;
import com.ccommunity.model.board.dto.BoardVO;
import com.ccommunity.service.board.BoardService;

@Controller
@RequestMapping(value = "/board")

public class BoardController {

	private static final Logger log = LoggerFactory.getLogger(BoardController.class);

	// BoardService 인터페이스 의존성 주입
	@Autowired
	private BoardService bservice;

	// 게시판 목록(리스트)(페이징 적용) 조회
	@RequestMapping(value = "/tables", method = RequestMethod.GET)
	public void tables(Model model, Criteria cri) {
		model.addAttribute("list", bservice.getBoardListPaging(cri));
		
		//게시물 총 갯수
		int total = bservice.getTotal(cri);
		PageMakerDTO pageMake = new PageMakerDTO(cri, total);
		model.addAttribute("pageMaker", pageMake);
	}

	// 게시물 등록 페이지 접속
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void write() {
		log.info("게시판 등록 페이지 진입");
	}

	// 게시물 쓰기(작성)
	@PostMapping("/write")
	public String writePOST(BoardVO board) {
	bservice.insertBoard(board);
	return "redirect:/board/tables";
	}

	// 게시물 상세 조회
	@RequestMapping(value = "/boardcontent", method = RequestMethod.GET)
	public void detail_page(int f_seq, Model model, Criteria cri) {

		model.addAttribute("pageInfo", bservice.getBoardContent(f_seq));
		model.addAttribute("cri", cri);
	}

	// 수정하기 버튼을 누를 떄 수정 페이지로 이동
	@RequestMapping(value = "/updateboard", method = RequestMethod.GET)
	public void modify(int f_seq, Model model, Criteria cri) {

		model.addAttribute("pageInfo", bservice.getBoardContent(f_seq));
		model.addAttribute("cri", cri);
	}

	// 게시물 수정
	@PostMapping("/updateboard")
	public String updateBoardPOST(BoardVO board, RedirectAttributes rttr) {
		bservice.updateBoard(board);
		rttr.addFlashAttribute("result", "modify success");
		return "redirect:/board/tables";
	}

	// 게시물 삭제
	@PostMapping("/deleteboard")
	public String deleteBoardPOST(int f_seq, RedirectAttributes rttr) {
		bservice.deleteBoard(f_seq);
		rttr.addFlashAttribute("result", "delete success");
		return "redirect:/board/tables";
	}
	
	// 게시물 총 갯수
}
