package com.ccommunity.model.camp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ccommunity.mapper.CampMapper;
import com.ccommunity.model.board.Criteria;
import com.ccommunity.model.camp.dto.CampPagingVO;
import com.ccommunity.model.camp.dto.CampVO;

@Repository
public class CampDAOImpl implements CampDAO{
	
	@Autowired
	CampMapper campMapper;
	
	@Override
	public String[] getSigungu(String sido) {
		System.out.println("CampDAO 실행");
		return campMapper.getSigungu(sido);
	};
	
	@Override
	// 페이지 처리 후 캠핑 지역 조회
	public List<CampVO> getCampListPaging(Criteria cri){
		return campMapper.getCampListPaging(cri);
	}
	
	@Override
	public List<CampVO> getCampList(CampVO vo) {
		System.out.println("campDao실행");
		return campMapper.getCampList(vo);
	}
}
