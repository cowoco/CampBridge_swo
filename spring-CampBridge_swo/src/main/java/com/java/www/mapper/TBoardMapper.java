package com.java.www.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.TBoardDto;

@Mapper
public interface TBoardMapper {
	//게시글 전체 가져오기
	ArrayList<TBoardDto> tb_selectAll(String category, String searchWord);

	//게시글 총 개수 , 게시글 검색 개수 
	int tb_selectCountAll(String category, String searchWord);//하단 넘버링
	
	

	

}
