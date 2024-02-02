package com.java.www.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
	
	// 내용부분 - 이미지추가시 파일업로드
	@PostMapping("uploadImage")
	@ResponseBody
	public String uploadImage(@RequestParam MultipartFile file) throws Exception {
		String urlLink = "";
		if(!file.isEmpty()) {
			String oriFName = file.getOriginalFilename();
			long time = System.currentTimeMillis();
			String upFName = time+"_"+oriFName;
			String fupload = "c:/upload/";
			
			//파일서버에 업로드 부분
			File f = new File(fupload+upFName);
			file.transferTo(f);
			
			//파일저장위치
			urlLink = "/upload/"+upFName;
			System.out.println("summernoteUpload 파일 저장위치 : "+ urlLink);
		}
		return urlLink;
	}
	
	
}// FController
