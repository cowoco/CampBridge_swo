package com.java.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("admin")
public class AController {
	
	//관리자페이지
	@GetMapping("adminPage")
	public String adminPage() {
		return "/admin/adminPage";
	}// adminPage()
	
	@GetMapping("pages_faq")
	public String pages_faq() {
		return "/admin/pages_faq";
	}// pages_faq()
	
	//관리자-입점 캠핑장 페이지
	@GetMapping("pages_campsite")
	public String pages_campsite() {
		return "/admin/pages_campsite";
	}// pages_campsite()
	
	//관리자-진행중 이벤트 페이지
	@GetMapping("pages_events")
	public String pages_events() {
		return "/admin/pages_events";
	}// pages_events()
	
	//관리자-에러404 페이지
	@GetMapping("pages_error404")
	public String pages_error404() {
		return "/admin/pages_error404";
	}// pages_error404()
	
	//
	@GetMapping("pages_users")
	public String pages_users() {
		return "/admin/pages_users";
	}// pages_error404()

}
