package com.java.www.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.TSearchDto;

@Mapper
public interface TSearchMapper {
	
	//갤러리 데이터 1개 저장
	void insertTheme(TSearchDto tSearchDto);
	
	//게시글 전체 가져오기
	ArrayList<TSearchDto> ts_selectAll(int startRow, int endRow);
	
	//게시글 1개 가져오기
	TSearchDto ts_selectOne(int contentId);

	int ts_selectCountAll();

	

}
