package com.java.www.controller;

import java.io.File;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.java.www.dto.TBoardDto;
import com.java.www.service.TBService;

@Controller
@RequestMapping("community")
public class CController {

	@Autowired
	TBService tbService;

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

	// 3.꿀팁 게시판 리스트Pg
	@GetMapping("tsearch") // 꿀팁 - 게시글 검색
	public String tsearch(@RequestParam(defaultValue = "1") int page,
			@RequestParam(required = false) String searchTitle, @RequestParam(required = false) String searchWord,
			Model model) {

		System.out.println("CController tsearch searchTitle : " + searchTitle);
		System.out.println("CController tsearch searchWord : " + searchWord);

		// db에서 가져오기
		Map<String, Object> map = tbService.tb_selectSearch(page, searchTitle, searchWord);
		// model에 저장
		model.addAttribute("map", map);
		System.out.println("게시글 총 개수 : " + (int) map.get("countAll"));
		return "/community/tList";
	}// tsearch() //꿀팁 - 게시글 검색

	// 3.꿀팁 게시판 리스트Pg
	@GetMapping("tList") // 게시글 전체 가져오기
	public String tipList(@RequestParam(defaultValue = "1") int page,
			@RequestParam(required = false) String searchTitle, @RequestParam(required = false) String searchWord,
			Model model) {
		// db에서 가져오기
		Map<String, Object> map = tbService.tb_selectAll(page, searchTitle, searchWord);
		// model에 저장
		model.addAttribute("map", map);
		System.out.println("게시글 총 개수 :" + (int) map.get("countAll"));
		return "/community/tList";
	}// tList()//게시글 전체 가져오기

	// 3.꿀팁 게시글 보기Pg
	@GetMapping("tView") // 게시글 1개 가져오기
	public String tView(@RequestParam(defaultValue = "1") int t_bno, Model model) {
		System.out.println("CController tView t_bno : " + t_bno);
		// 게시글 1개 가져오기
		Map<String, Object> map = tbService.tb_selectOne(t_bno);
		// model에 저장
		model.addAttribute("map", map);
		return "/community/tView";
	}// tView()//게시글 1개 가져오기

	// 3.꿀팁 게시글 작성Pg
	@GetMapping("tWrite") // 글쓰기 화면보기
	public String tWrite() {
		return "/community/tWrite";
	}// tWrite() //글쓰기 화면보기

	// 3.꿀팁 게시글 작성Pg
	@PostMapping("tWrite") // 글쓰기저장, 오버로딩
	public String tWrite(TBoardDto tbdto, @RequestPart MultipartFile tfile, Model model) throws Exception {

		if (!tfile.isEmpty()) {// 파일 첨부가 있을 시 (파일이 비어있지 않다면)
			String orgName = tfile.getOriginalFilename();
			System.out.println("CController 파일첨부 이름 : " + orgName);
			long time = System.currentTimeMillis();
			String newName = time + "_" + orgName; // 중복방지를 위해 새로운 이름
			String upload = "c:/upload/";
			File f = new File(upload + newName);
			tfile.transferTo(f); // 파일을 저장위치에 저장시킴
			tbdto.setT_bfile(upload); // 파일이름을 TBoardDto에 저장시킴
		} else {// 파일첨부가 없다면
			tbdto.setT_bfile("");
			System.out.println("파일첨부가 없습니다.");
		}
		// db로 전송
		tbService.tWrite(tbdto);
		// model
		model.addAttribute("result", "tWrite_Save");
		return "/community/doTBoard";
	}// tWrite() //글쓰기저장, 오버로딩

	// 3. 꿀팁 게시글 삭제Pg
	@PostMapping("tDelete") // 게시글 삭제
	public String tDelete(@RequestParam(defaultValue = "1") int t_bno, Model model) {
		System.out.println("CController tDelete t_bno : " + t_bno);
		// service 연결
		tbService.tDelete(t_bno);
		// model
		model.addAttribute("result", "tView_Del");
		return "/community/doTBoard";
	}// tDelete() //게시글 삭제

	// 3. 꿀팁 게시글 수정Pg
	@PostMapping("tUpdate") // 게시글 수정페이지 보기
	public String tUpdate(@RequestParam(defaultValue = "1") int t_bno, Model model) {
		System.out.println("CController tUpdate t_bno :" + t_bno);
		Map<String, Object> map = tbService.tb_selectOne(t_bno);
		model.addAttribute("map", map);
		return "/community/tUpdate";
	}// tUpdate()//게시글 수정페이지 보기

	// 3. 꿀팁 게시글 수정Pg
	@PostMapping("doTBoard") // 게시글 수정페이지 저장
	public String doTBoard(TBoardDto tbdto, @RequestPart MultipartFile tfile, Model model) throws Exception {

		System.out.println("CController tUpdate tbdto :" + tbdto.getT_bno());
		String orgName = "";
		String newName = "";
		if (!tfile.isEmpty()) {
			orgName = tfile.getOriginalFilename();
			long time = System.currentTimeMillis();
			newName = time + "_" + orgName;
			String upload = "c:/upload"; // 파일저장위치
			File f = new File(upload + newName);
			tfile.transferTo(f);// 파일전송
			tbdto.setT_bfile(newName);
		}
		// db연결
		tbService.doTBoard(tbdto);
		// model
		model.addAttribute("result", "tUpdate");
		return "/community/doTBoard";
	}

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
