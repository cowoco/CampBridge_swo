package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.TSearchDto;
import com.java.www.mapper.RSearchMapper;

@Service
public class RSearchServiceImpl implements RSearchService {
	
	@Autowired RSearchMapper rSearchMapper;

	@Override
	public Map<String, Object> rs_selectAll(int page) {
		//추천검색 게시글 전체 가져오기
		ArrayList<TSearchDto> listfam = rSearchMapper.rs_selectAllFam();
		ArrayList<TSearchDto> listsun = rSearchMapper.rs_selectAllSun();
		ArrayList<TSearchDto> liststar = rSearchMapper.rs_selectAllStar();
		
		Map<String, Object> map = new HashMap<>();
		map.put("listfam", listfam);
		map.put("listsun", listsun);
		map.put("liststar", liststar);
		map.put("page", page);
	
		
		return map;
	}


	

}
