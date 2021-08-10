package com.ccommunity.service.camp;

import java.util.List;

import com.ccommunity.model.board.Criteria;
import com.ccommunity.model.camp.dto.CampPagingVO;
import com.ccommunity.model.camp.dto.CampVO;

public interface CampService {
	
	public String[] getSigungu(String sido);
	//페이징 검색
	public List<CampVO> getBoardListPaging(Criteria cri); 
	
	public List<CampVO> getCampList(CampVO vo);
}
