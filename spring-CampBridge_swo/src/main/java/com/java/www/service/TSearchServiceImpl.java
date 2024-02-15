package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.TSearchDto;
import com.java.www.mapper.TSearchMapper;

@Service
public class TSearchServiceImpl implements TSearchService{
	
	@Autowired TSearchMapper tSearchMapper;
	
	@Override
	public void insertTheme(TSearchDto tSearchDto) {
		tSearchMapper.insertTheme(tSearchDto);
		
		
	}

	@Override
	public Map<String, Object> ts_selectAll(int page) {
		//게시글 전체 가져오기 
		//테마검색 - 게사글 하단
		if(page<=0) page=1;
		int countPerPage = 12;
		int startRow = (page-1)*countPerPage+1;
		int endRow = startRow+countPerPage-1;
		int countAll = tSearchMapper.ts_selectCountAll();
		System.out.println("TSearchServiceImpl ts_selectAll countAll :"+countAll);
		//게시글 전체 가져오기 
		ArrayList<TSearchDto> list = tSearchMapper.ts_selectAll(startRow,endRow);
		System.out.println("TSearchServiceImpl ts_selectAll startRow :"+startRow);
		System.out.println("TSearchServiceImpl ts_selectAll endRow :"+endRow);
		
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("page", page);
		map.put("countAll", countAll);
		
		return map;
	}//ts_selectAll//게시글 전체 가져오기 

	@Override
	public Map<String, Object> ts_selectOne(int contentId) {
		//게시글 1개 가져오기
		TSearchDto tsdto = tSearchMapper.ts_selectOne(contentId);
		System.out.println("TSearchServiceImpl ts_selectOne tsdto : "+tsdto);
		
		Map<String, Object> map = new HashMap<>();
		map.put("tsdto", tsdto);
		
		
		
		return map;
	}//ts_selectOne//게시글 1개 가져오기


	
		
}
