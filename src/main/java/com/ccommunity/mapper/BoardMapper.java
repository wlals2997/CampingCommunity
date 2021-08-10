package com.ccommunity.mapper;

import java.util.List;

import com.ccommunity.model.board.Criteria;
import com.ccommunity.model.board.dto.BoardVO;

public interface BoardMapper {
		
		//게시판 목록(리스트)(페이징 적용) 조회 [getBoardList]
		public List<BoardVO> getBoardList();
		
		//게시판 목록(페이징 적용) 조회 [getBoardListPaging]
		public List<BoardVO> getBoardListPaging(Criteria cri);
		
		//게시물 쓰기(작성)[insertBoard]
		public void insertBoard(BoardVO board);
		
		//게시물 상세 조회[getBoardContent]
		public BoardVO getBoardContent(int f_seq);
		
		//게시물 수정[updateBoard]
		public int updateBoard(BoardVO board);
		
		//게시물 삭제[deleteBoard]
		public int deleteBoard(int f_seq);
		
		//조회수 UP[updateViewCnt]
		public int updateViewCnt(int f_seq);
		
		 //게시물 총 갯수
	    public int getTotal(Criteria cri);
}