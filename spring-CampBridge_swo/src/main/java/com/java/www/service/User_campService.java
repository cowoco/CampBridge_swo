package com.java.www.service;

import com.java.www.dto.User_campDto;

public interface User_campService {

	
	//로그인
	User_campDto loginSelect(User_campDto ucdto);

	//아이디찾기
	String idsearch(String name, String email);

	//회원가입 저장
	String signUp(User_campDto ucdto);

	//아이디체크
	String idCheck(String id);

	//비밀번호찾기
	String pw_s(String id, String email);


	

}
