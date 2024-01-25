package com.java.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("review")
public class ReController {
	
	//캠핑리뷰 - 리스트(캠핑장)
	@GetMapping("siteReview")
	public String siteReview() {
		return "/review/siteReview";
	}// review()
	
	//캠핑리뷰 - 뷰(캠핑장)
	@GetMapping("review_site")
	public String review_site() {
		return "/review/review_site";
	}//siteReview()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////캠핑장 리뷰
	
	//캠핑리뷰 - 리스트(용품)
	@GetMapping("equipReview")
	public String equipReview() {
		return "/review/equipReview";
	}//equipReview()
	
	//캠핑리뷰 - 뷰(용품)
	@GetMapping("review_equip")
	public String review_equip() {
		return "/review/review_equip";
	}// review()

	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////캠핑용품 리뷰

}
