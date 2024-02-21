package com.java.www.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.GoCampingDto;

@Mapper
public interface CampSearchMapper {

	//전체가져오기
	ArrayList<GoCampingDto> selectAll(int startRow, int endRow);

	//게시글 총개수
	int selectCountAll();

	//체크된 값
	List<GoCampingDto> chSelect(List<String> doNm);

	//게시글 1개
	GoCampingDto selectOne(int contentId);





}
