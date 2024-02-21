package com.java.www.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.TSearchDto;

@Mapper
public interface TSearchMapper {
	
	//갤러리 데이터 1개 저장
	void insertTheme(TSearchDto tSearchDto);
	
	//게시글 전체 가져오기
	ArrayList<TSearchDto> ts_selectAll(int startRow, int endRow);
	//게시글 전체 가져오기 ajax 더보기 버튼
	int ts_selectCountAll();
	
	//게시글 1개 가져오기
	TSearchDto ts_selectOne(int contentId);


	//테마검색 체크된 검색단어 배열로 가져오기
	List<TSearchDto> theme_Search(List<String> themaEnvrnCl);

	

	

}
