package com.java.www.service;

import java.util.Map;

import com.java.www.dto.TSearchDto;

public interface TSearchService {
	//============== 테마검색 ==============
	
	//갤러리 1개 데이터 저장
	void insertTheme(TSearchDto tSearchDto);
	
	//테마검색 게시글 전체 가져오기
	Map<String, Object> ts_selectAll(int page);
	
	//테마검색 게시글 1개 가져오기
	Map<String, Object> ts_selectOne(int contentId);

	

}
