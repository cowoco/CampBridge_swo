package com.java.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("my")
public class MyController {
	
	//로그인 페이지
	@GetMapping("login")
	public String login() {
		return "/my/login";
	}// login()
	
	//id 찾기
	@GetMapping("idpw_search")
	public String idpw_search() {
		return "/my/idpw_search";
	}// login()
	
	//id 찾기완료
	@GetMapping("idsearch")
	public String idsearch() {
		return "/my/idsearch";
	}// login()
	
	//pw 찾기완료
	@GetMapping("pwsearch")
	public String pwsearch() {
		return "/my/pwsearch";
	}// login()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////로그인(id, pw 찾기)
	
	//회원가입 페이지
	@GetMapping("signUp")
	public String signUp() {
		return "/my/signUp";
	}// signUp()
	
	//회원가입 완료
	@GetMapping("signUp02")
	public String signUp02() {
		return "/my/signUp02";
	}// signUp02()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////회원가입

	//마이 페이지
	@GetMapping("myPage")
	public String myPage() {
		return "/my/myPage";
	}// myPage()
	
	//마이 페이지-나의게시물
	@GetMapping("myList")
	public String myList() {
		return "/my/myList";
	}// myList()
	
	//마이 페이지-파티원
	@GetMapping("myParty")
	public String myParty() {
		return "/my/myParty";
	}// myParty()
	
	//마이 페이지-회원정보수정
	@GetMapping("myInfo")
	public String myInfo() {
		return "/my/myInfo";
	}// myInfo()
	
	//마이 페이지-렌탈
	@GetMapping("myRental")
	public String myRental() {
		return "/my/myRental";
	}// myRental()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////마이페이지

}
