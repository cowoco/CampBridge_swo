package com.java.www.controller;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.www.dto.TBCommentDto;
import com.java.www.dto.TBoardDto;
import com.java.www.service.TBService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("community")
public class CController {

	@Autowired TBService tbService;
	@Autowired HttpSession session;

	// 1.공지사항 리스트
	@GetMapping("nList")
	public String nList() {
		return "/community/nList";
	}// nList()

	// 1.공지사항 게시글 보기
	@GetMapping("nView")
	public String nView() {
		return "/community/nView";
	}// nView()

	// 1.공지사항 게시글작성 페이지
	@GetMapping("nWrite")
	public String nWrite() {
		return "/community/nWrite";
	}// nWrite()

	// 1.공지사항 글수정 페이지
	@GetMapping("nUpdate")
	public String nUpdate() {
		return "/community/nUpdate";
	}// nUpdate()

	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 공지사항
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 게시판

	// 2.파티원 모집 게시판Pg
	@GetMapping("pList")
	public String partyList() {
		return "/community/pList";
	}// pList()

	// 2.파티원 모집 게시글보기 Pg
	@GetMapping("pView")
	public String pView() {
		return "/community/pView";
	}// pView()

	// 2.파티원 모집 작성Pg
	@GetMapping("pWrite")
	public String pWrite() {
		return "/community/pWrite";
	}// pView()

	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 파티원
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 모집
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 게시판
    //3.꿀팁
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 꿀팁
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 게시판

	// 4.자유 게시판 리스트Pg
	@GetMapping("fList")
	public String fList() {
		return "/community/fList";
	}// fList()

	// 4.자유 게시글 보기Pg
	@GetMapping("fView")
	public String fView() {
		return "/community/fView";
	}// fView()

	// 4.자유 게시글 작성Pg
	@GetMapping("fWrite")
	public String fWrite() {
		return "/community/fWrite";
	}// fWrite()

	// 4.자유게시글 수정Pg
	@GetMapping("fUpdate")
	public String fUpdate() {
		return "/community/fUpdate";
	}// fUpdate()

	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 자유
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// 게시판

}// CController
