package com.java.www.service;

import java.util.Map;

public interface RSearchService {
	
	//추천검색 게시글 전체 가져오기
	Map<String, Object> rs_selectAll(int page);


}
