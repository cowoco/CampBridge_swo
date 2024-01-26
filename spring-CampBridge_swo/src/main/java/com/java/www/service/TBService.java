package com.java.www.service;

import java.util.Map;

public interface TBService {
	
	//게시글 전체 가져오기
	Map<String, Object> tb_selectAll(int page, String category, String searchWord);

}
