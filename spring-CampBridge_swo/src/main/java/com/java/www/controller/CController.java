package com.java.www.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("commuinty")
public class CController {
	
	//1.공지사항 리스트
	@GetMapping("nList")
	public String nList() {
		return "/commuinty/nList";
	}// nList()
	
	//1.공지사항 게시글 보기
	@GetMapping("nView")
	public String nView() {
		return "/commuinty/nView";
	}// nView()
	
	//1.공지사항 게시글작성 페이지
	@GetMapping("nWrite")
	public String nWrite() {
		return "/commuinty/nWrite";
	}// nWrite()
	
	//1.공지사항 글수정 페이지
	@GetMapping("nUpdate")
	public String nUpdate() {
		return "/commuinty/nUpdate";
	}// nUpdate()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////공지사항 게시판

	//2.파티원 모집 게시판Pg
	@GetMapping("pList")
	public String partyList() {
		return "/commuinty/pList";
	}// pList()
	
	//2.파티원 모집 게시글보기 Pg
	@GetMapping("pView")
	public String pView() {
		return "/commuinty/pView";
	}// pView()
	
	//2.파티원 모집 작성Pg
	@GetMapping("pWrite")
	public String pWrite() {
		return "/commuinty/pWrite";
	}// pView()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////파티원 모집 게시판
	
	//3.꿀팁 게시판 리스트Pg
	@GetMapping("tList")
	public String tipList() {
		return "/commuinty/tList";
	}// tList()
	
	//3.꿀팁 게시글 보기Pg
	@GetMapping("tView")
	public String tView() {
		return "/commuinty/tView";
	}// tView()
	
	//3.꿀팁 게시글 작성Pg
	@GetMapping("tWrite")
	public String tWrite() {
		return "/commuinty/tWrite";
	}// tWrite()
	
	//3. 꿀팁 게시글 수정Pg
	@GetMapping("tUpdate")
	public String tUpdate() {
		return "/commuinty/tUpdate";
	}// tUpdate()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////꿀팁 게시판
	
	//4.자유 게시판 리스트Pg
	@GetMapping("fList")
	public String fList() {
		return "/commuinty/fList";
	}// fList()

	//4.자유 게시글 보기Pg
	@GetMapping("fView")
	public String fView() {
		return "/commuinty/fView";
	}// fView()
	
	//4.자유 게시글 작성Pg
	@GetMapping("fWrite")
	public String fWrite() {
		return "/commuinty/fWrite";
	}// fWrite()
	
	//4.자유게시글 수정Pg
	@GetMapping("fUpdate")
	public String fUpdate() {
		return "/commuinty/fUpdate";
	}// fUpdate()
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////자유 게시판

}// CController
