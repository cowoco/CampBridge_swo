package com.java.www.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.TSearchDto;

@Mapper
public interface TSearchMapper {
	
	//갤러리 데이터 1개 저장
	void insertTheme(TSearchDto tSearchDto);

}
