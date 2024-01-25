package com.java.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("used")
public class UController {
	
	//중고거래 및 양도
	@GetMapping("used")
	public String used() {
		return "/used/used";
	}// used()
	
	//중고거래 및 양도 - 뷰
	@GetMapping("usedcontent")
	public String usedcontent() {
		return "/used/usedcontent";
	}// usedcontent()
	
	//중고거래 및 양도 - 글쓰기
	@GetMapping("usedWrite")
	public String usedWrite() {
		return "/used/usedWrite";
	}// usedWrite()

}
