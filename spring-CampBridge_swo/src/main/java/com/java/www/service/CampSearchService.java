package com.java.www.service;

import java.util.List;
import java.util.Map;

import com.java.www.dto.GoCampingDto;


public interface CampSearchService {

	//전체가져오기
	Map<String, Object> selectAll(int page);

	//체크된값
	List<GoCampingDto> chSelect(List<String> doNm);
	
	//게시글1개
	Map<String, Object> selectOne(int contentId);




}
