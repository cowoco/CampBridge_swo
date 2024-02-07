package com.java.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.TSearchDto;
import com.java.www.mapper.TSearchMapper;

@Service
public class TSearchServiceImpl implements TSearchService{
	
	@Autowired TSearchMapper tSearchMapper;
	
	@Override
	public void insertTheme(TSearchDto tSearchDto) {
		tSearchMapper.insertTheme(tSearchDto);
		
		
	}

	
		
}
