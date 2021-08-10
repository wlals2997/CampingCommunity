package com.ccommunity.service.camp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ccommunity.model.board.Criteria;
import com.ccommunity.model.board.dto.BoardVO;
import com.ccommunity.model.camp.dao.CampDAO;
import com.ccommunity.model.camp.dto.CampPagingVO;
import com.ccommunity.model.camp.dto.CampVO;

@Service
public class CampServiceImpl implements CampService{
	
	@Autowired
	CampDAO campDao;
	
	@Override
	public String[] getSigungu(String sido) {
		System.out.println("CampService 실행 ");
		return campDao.getSigungu(sido);
	}
	
	@Override
	public List<CampVO> getBoardListPaging(Criteria cri) {
		return campDao.getCampListPaging(cri);
	}
	
	@Override
	public List<CampVO> getCampList(CampVO vo){
		System.out.println("service = " + vo.getSido());
		return campDao.getCampList(vo);
	}
}
