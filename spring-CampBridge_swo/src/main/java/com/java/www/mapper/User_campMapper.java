package com.java.www.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.User_campDto;

@Mapper
public interface User_campMapper {

	//로그인
	User_campDto loginSelect(User_campDto ucdto);

	//아이디찾기-name,mail
	User_campDto idsearch(String name, String email);

	//비밀번호 찾기
	User_campDto pw_s(String id, String email);
	
	
	
	//============================회원가입
	//회원가입 저장
	void signUp(User_campDto ucdto);

	//아이디체크
	User_campDto idCheck(String id);




}
