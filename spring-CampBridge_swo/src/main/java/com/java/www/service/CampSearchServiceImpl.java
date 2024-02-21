package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.GoCampingDto;
import com.java.www.mapper.CampSearchMapper;

@Service
public class CampSearchServiceImpl implements CampSearchService {

	
	@Autowired CampSearchMapper campsearchMapper;
	

	@Override //전체가져오기
	public Map<String, Object> selectAll(int page) {
		//하단넘버링
		if(page<=0) page=1;
		int countPerPage = 9; //1페이지당 게시글 갯수
		int bottomPerNum = 10; //하단넘버링 갯수
		int countAll = campsearchMapper.selectCountAll();
		int maxPage = (int)Math.ceil((double)countAll/countPerPage);
		int startPage = ((page-1)/bottomPerNum)*bottomPerNum+1;
		int endPage = (startPage+bottomPerNum)-1;
		int startRow = (page-1)*countPerPage+1;
		int endRow = startRow+countPerPage-1;
		
		if(endPage>maxPage) endPage = maxPage;
		ArrayList<GoCampingDto> list = campsearchMapper.selectAll(startRow,endRow);
		
		//데이터전송s
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("page", page);
		map.put("countAll", countAll);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		
		return map;
	}//selectAll



	@Override //게시글 1개
	public Map<String, Object> selectOne(int contentId) {
		
		GoCampingDto gcdto = campsearchMapper.selectOne(contentId);
		
		Map<String, Object> map = new HashMap<>();
		map.put("gcdto", gcdto);
		
		return map;
	}



	@Override//체크 된 값
	public List<GoCampingDto> chSelect(List<String> doNm) {
		List<GoCampingDto> list = campsearchMapper.chSelect(doNm);
		return list;
	}







}
