package com.java.www.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.TBoardDto;

@Mapper
public interface TBoardMapper {
	//게시글 전체 가져오기
	ArrayList<TBoardDto> tb_selectAll(int startRow, int endRow, String searchTitle, String searchWord);
	//검색된 게시글 가져오기
	ArrayList<TBoardDto> tb_selectSearch(int startRow, int endRow, String searchTitle, String searchWord);

	//게시글 총 개수
	int tb_selectCountAll(String searchTitle, String searchWord);//하단 넘버링
	//게시글 검색 개수 
	int tb_selectSearchCount(String searchTitle, String searchWord);
	
	//게시글 1개 가져오기- 현재글
	TBoardDto tb_selectOne(int t_bno);
	
	//글쓰기 저장
	int tWrite(TBoardDto tbdto);


	
	

	

}
