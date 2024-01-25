package com.java.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FController {
	
	//★메인페이지
	@GetMapping("/")
	public String index() {
		return "index";
	}// index()
	
	//사이트소개
	@GetMapping("aboutCB")
	public String aboutCB() {
		return "aboutCB";
	}// adminPage()
	
	//campbridge 소개
	@GetMapping("developers")
	public String developers() {
		return "developers";
	}// developers()
	
}// FController
