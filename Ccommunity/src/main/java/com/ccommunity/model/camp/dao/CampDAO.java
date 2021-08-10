package com.ccommunity.model.camp.dao;

import java.util.List;

import com.ccommunity.model.board.Criteria;
import com.ccommunity.model.camp.dto.CampPagingVO;
import com.ccommunity.model.camp.dto.CampVO;

public interface CampDAO {
	public String[] getSigungu(String sido);
	
	public List<CampVO> getCampListPaging(Criteria cri);
	
	public List<CampVO> getCampList(CampVO vo);
}
