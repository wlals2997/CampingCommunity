package com.ccommunity.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ccommunity.mapper.BoardMapper;
import com.ccommunity.model.board.Criteria;
import com.ccommunity.model.board.dto.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	//BoardMapper 인터페이스 주입
	@Autowired
	private BoardMapper boardmapper;
	
	//게시판 목록(리스트) 조회
	@Override
	public List<BoardVO> getBoardList() {
		
		return boardmapper.getBoardList();
	}
	
	//게시판 목록(리스트)(페이징 적용) 조회
		@Override
		public List<BoardVO> getBoardListPaging(Criteria cri) {
			
			return boardmapper.getBoardListPaging(cri);
		}
	
	//게시물 쓰기(작성)
	@Override
	public void insertBoard(BoardVO board) {
		
		boardmapper.insertBoard(board);
	}

	//게시물 상세 조회 and 조회수 UP
	@Override
	public BoardVO getBoardContent(int f_seq) {
		
		boardmapper.updateViewCnt(f_seq);
		return boardmapper.getBoardContent(f_seq);
	}

	//게시물 수정
	@Override
	public int updateBoard(BoardVO board) {
		
		return boardmapper.updateBoard(board);
	}
	
	//게시물 삭제
	@Override
	public int deleteBoard(int f_seq) {
		
		return boardmapper.deleteBoard(f_seq);
	}
	
	//게시물 총 갯수
	@Override
	public int getTotal(Criteria cri) {
		
		return boardmapper.getTotal(cri);
	}
	
}
