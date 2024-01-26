package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.TBoardDto;
import com.java.www.mapper.TBoardMapper;

@Service
public class TBServiceImpl implements TBService{
	
	@Autowired
	TBoardMapper tBoardMapper;
	
	
	@Override
	public Map<String, Object> tb_selectAll(int page, String category, String searchWord) {
		//게시글 전체 가져오기 
		//하단넘버링 
		if(page<=0) page=1;
		int countPerPage = 10;
		int bottomPerNum = 10;
		int countAll = tBoardMapper.tb_selectCountAll(category, searchWord);
		int maxPage = (int)Math.ceil((double)countAll/countPerPage);
		int startPage =((page-1)/bottomPerNum)*bottomPerNum+1;
		int endPage =(startPage+bottomPerNum)-1;
		
		int startRow = (page-1)*countPerPage+1;
		int endRow = startRow+countPerPage-1;
		
		if(endPage>maxPage) endPage = maxPage;
		ArrayList<TBoardDto> list = tBoardMapper.tb_selectAll(category,searchWord);
		
		//데이터 전송
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("page", page);
		map.put("countAll", countAll);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		
		
		return map;
	}

}
