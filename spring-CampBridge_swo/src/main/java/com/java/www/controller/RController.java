package com.java.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("rent")
public class RController {
	
	//용품대여
	@GetMapping("cpRent")
	public String cpRent() {
		return "/rent/cpRent";
	}// cpRent()
	
	//용품대여-상세페이지1
	@GetMapping("cpRent_v1")
	public String cpRent_v1() {
		return "/rent/cpRent_v1";
	}// cpRent_v1()
	
	//용품대여-상세페이지2
	@GetMapping("cpRent_v2")
	public String cpRent_v2() {
		return "/rent/cpRent_v2";
	}// cpRent_v2()
	
	//용품대여-상세페이지3
	@GetMapping("cpRent_v3")
	public String cpRent_v3() {
		return "/rent/cpRent_v3";
	}// cpRent_v3()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////용품대여
	
	//장바구니 1
	@GetMapping("cp_Cart")
	public String cp_Cart() {
		return "/rent/cp_Cart";
	}// cp_Cart()
	
	//장바구니 2
	@GetMapping("cp_Cart02")
	public String cp_Cart02() {
		return "/rent/cp_Cart02";
	}// cp_Cart02()
	
	//장바구니 3
	@GetMapping("cp_Cart03")
	public String cp_Cart03() {
		return "/rent/cp_Cart03";
	}// cp_Cart03()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////장바구니

}
