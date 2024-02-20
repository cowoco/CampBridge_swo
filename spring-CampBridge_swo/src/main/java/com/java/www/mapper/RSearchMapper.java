package com.java.www.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.TSearchDto;

@Mapper
public interface RSearchMapper {
	
	//게시글 전체 가져오기
	ArrayList<TSearchDto> rs_selectAllFam();

	ArrayList<TSearchDto> rs_selectAllSun();

	ArrayList<TSearchDto> rs_selectAllStar();

}
