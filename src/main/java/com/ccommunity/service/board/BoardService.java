package com.ccommunity.service.board;

import java.util.List;

import com.ccommunity.model.board.Criteria;
import com.ccommunity.model.board.dto.BoardVO;



public interface BoardService {
	
	//게시판 목록(리스트)(페이징 적용) 조회
	public List<BoardVO> getBoardList();
	
	//게시판 목록(페이징 적용) 조회
	public List<BoardVO> getBoardListPaging(Criteria cri);
	
	//게시물 쓰기(작성)
	public void insertBoard(BoardVO board);
	
	//게시물 상세 조회
	public BoardVO getBoardContent(int f_seq);
	
	//게시물 수정
	public int updateBoard(BoardVO board);
	
	//게시물 삭제
	public int deleteBoard(int f_seq);
	
	//게시물 총 갯수
	public int getTotal(Criteria cri);
	
}
