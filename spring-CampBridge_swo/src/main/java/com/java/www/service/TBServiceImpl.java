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
	TBoardMapper tboardMapper;
	
	@Override
	public Map<String, Object> tb_selectSearch(int page, String searchTitle, String searchWord) {
		//꿀팁 - 게시글 검색 가져오기
		if(page<=0) page=1;
		int countPerPage = 10;
		int bottomPerNum = 10;
		int countAll = tboardMapper.tb_selectSearchCount(searchTitle, searchWord);
		int maxPage = (int)Math.ceil((double)countAll/countPerPage);
		int startPage =((page-1)/bottomPerNum)*bottomPerNum+1;
		int endPage =(startPage+bottomPerNum)-1;
		int startRow = (page-1)*countPerPage+1;
		int endRow = startRow+countPerPage-1;
		
		if(endPage>maxPage) endPage = maxPage;
		ArrayList<TBoardDto> list = tboardMapper.tb_selectSearch(startRow,endRow,searchTitle,searchWord);
		
		//데이터 전송
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("countAll", countAll);
		map.put("page", page);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		return map;
	}
	
	
	
	@Override
	public Map<String, Object> tb_selectAll(int page, String searchTitle, String searchWord) {
		//게시글 전체 가져오기 
		//하단넘버링 
		if(page<=0) page=1;
		int countPerPage = 10;
		int bottomPerNum = 10;
		int countAll = tboardMapper.tb_selectCountAll(searchTitle, searchWord);
		int maxPage = (int)Math.ceil((double)countAll/countPerPage);
		
		int startPage =((page-1)/bottomPerNum)*bottomPerNum+1;
		int endPage =(startPage+bottomPerNum)-1;
		
		int startRow = (page-1)*countPerPage+1;
		int endRow = startRow+countPerPage-1;
		
		if(endPage>maxPage) endPage = maxPage;
		ArrayList<TBoardDto> list = tboardMapper.tb_selectAll(startRow,endRow,searchTitle,searchWord);
		
		//데이터 전송
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("page", page);
		map.put("countAll", countAll);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		return map;
	}//tb_selectAll//게시글 전체 가져오기 


	@Override
	public Map<String, Object> tb_selectOne(int t_bno) {
		//게시글 1개 가져오기
		TBoardDto tbdto = tboardMapper.tb_selectOne(t_bno);
		
		Map<String, Object> map = new HashMap<>();
		map.put("tbdto",tbdto);
		
		return map;
	}//tb_selectOne//게시글 1개 가져오기


	@Override
	public void tWrite(TBoardDto tbdto) {
		//글쓰기 저장
		int result = tboardMapper.tWrite(tbdto);
		System.out.println("TBServiceImpl tWrite reslt : "+result);
		
	}


}