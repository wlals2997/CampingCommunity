package com.ccommunity.mapper;




import java.util.List;

import com.ccommunity.model.board.Criteria;
import com.ccommunity.model.camp.dto.CampPagingVO;
import com.ccommunity.model.camp.dto.CampVO;
public interface CampMapper {
	// 시군구 검색
	public String[] getSigungu(String sido);
	
	// 총 캠핑장 수
	public int countCamp();
	
	// 페이징 후 캠핑장 조회
	public List<CampVO> getCampListPaging(Criteria cri);
	
	public List<CampVO> getCampList(CampVO vo);
}	
