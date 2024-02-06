package com.java.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("search")
public class SController {

	//캠핑장 검색
	@GetMapping("campsearch")
	public String campsearch() {
		return "/search/campsearch";
	}// campsearch()
	
	//캠핑장 검색-페이지
	@GetMapping("campsearch_view")
	public String campsearch_view() {
		return "/search/campsearch_view";
	}// campsearch_view()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////캠핑장 검색
	
	//지도 검색
	@GetMapping("mapsearch")
	public String mapsearch() {
		return "/search/mapsearch";
	}// mapsearch()
	
	//지도 검색-페이지
	@GetMapping("mapsearch_view")
	public String mapsearch_view() {
		return "/search/mapsearch_view";
	}// mapsearch_view()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////지도 검색
	
	//추천검색
	@GetMapping("recommendsearch")
	public String recommendsearch() {
		return "/search/recommendsearch";
	}// recommendsearch()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////추천 검색
	
	//테마검색
	@GetMapping("tSearch")
	public String tSearch() {
		return "/search/tSearch";
	}// tSearch()
	
	//테마검색 데이터 전송
	@GetMapping("themeData")
	@ResponseBody //데이터 전송
	public String themeData(String themeTxt) {
		System.out.println("themeData txt : "+themeTxt);
		String page = 1+"";
		String servicekey="nPPQZrCKczmg%2FdIMJJdN8Zot7BoWCyT0LbxEA8xRBApq7Ahfh1u%2BdWpijsZbTseUr3sHT%2B9sJBV39afyi1K5dA%3D%3D";
		
		String result="";
		if(themeTxt == null || themeTxt.equals("")) {
		
			
		}
		
		
		
		return "/search/themeData";
	}// tSearch()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////테마 검색

}
