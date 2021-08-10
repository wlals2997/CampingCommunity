package com.ccommunity.model.board.dao;

import java.util.List;
import com.ccommunity.model.board.dto.BoardVO;

public interface BoardDAO {
	public List<BoardVO> getBoardListRank();
}
