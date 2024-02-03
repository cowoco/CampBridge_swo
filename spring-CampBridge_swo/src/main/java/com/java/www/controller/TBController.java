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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.www.dto.TBCommentDto;
import com.java.www.dto.TBoardDto;
import com.java.www.service.TBService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("community")
public class TBController {
	
	@Autowired TBService tbService;
	@Autowired HttpSession session;
	
	

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
	public String tWrite(TBoardDto tcdto, @RequestPart MultipartFile tfile, Model model) throws Exception {

		if (!tfile.isEmpty()) {// 파일 첨부가 있을 시 (파일이 비어있지 않다면)
			String orgName = tfile.getOriginalFilename();
			System.out.println("CController 파일첨부 이름 : " + orgName);
			long time = System.currentTimeMillis();
			String newName = time + "_" + orgName; // 중복방지를 위해 새로운 이름
			String upload = "c:/upload/";
			File f = new File(upload + newName);
			tfile.transferTo(f); // 파일을 저장위치에 저장시킴
			tcdto.setT_bfile(newName); // 파일이름을 TBoardDto에 저장시킴
		} else {// 파일첨부가 없다면
			tcdto.setT_bfile("");
			System.out.println("파일첨부가 없습니다.");
		}
		// db로 전송
		tbService.tWrite(tcdto);
		// model
		model.addAttribute("result", "tWrite_Save");
		return "/community/doTBoard";
	}// tWrite() //글쓰기저장, 오버로딩

	// 3. 꿀팁 게시글 삭제Pg
	// 게시글 삭제
	

	// 3. 꿀팁 게시글 수정Pg
	// 게시글 수정페이지 보기
	public String tUpdate(@RequestParam(defaultValue = "1") int t_bno, Model model) {
		System.out.println("CController tUpdate t_bno :" + t_bno);
		Map<String, Object> map = tbService.tb_selectOne(t_bno);
		model.addAttribute("map", map);
		return "/community/tUpdate";
	}// tUpdate()//게시글 수정페이지 보기

	// 3. 꿀팁 게시글 수정Pg
	// 게시글 수정페이지 저장
	
	
	
	
	// 3.꿀팁 댓글 작성Pg
	@PostMapping("t_BCommentInsert")//댓글 1개 입력 
	@ResponseBody //ajax-데이터전송
	public TBCommentDto t_BCommentInsert(TBCommentDto tcdto) {
		System.out.println("CController t_BCommentInsert t_cpw : "+tcdto.getT_cpw());
		System.out.println("CController t_BCommentInsert t_ccontent : "+tcdto.getT_ccontent());
		System.out.println("CController  t_BCommentInsert t_bno : "+tcdto.getT_bno());
		
		//db에 저장된 댓글 1개 가져오기 -cno,cdate 가 포함되어 있음
		TBCommentDto tbCommentDto = tbService.TBCommentInsert(tcdto);
		
		return tbCommentDto;
	}//t_BCommentInsert() //댓글 1개 입력 
	
	// 3.꿀팁 댓글 삭제Pg
	@PostMapping("t_BCommentDelete")//댓글 1개 삭제
	@ResponseBody//ajax-데이터전송
	public String t_BCommentDelete(int t_cno) {
		System.out.println("TBController  t_BCommentDelete t_cno : "+t_cno);
		//service연결
		String result = tbService.TBCommentDelete(t_cno);
		return "삭제처리";
	}
	
	// 3.꿀팁 댓글 수정Pg
	@PostMapping("t_BCommentUpdate")//댓글 수정 저장
	@ResponseBody //ajax -데이터 전송
	public TBCommentDto t_BCommentUpdate(TBCommentDto tcdto) {
		System.out.println("TBController t_BCommentUpdate cno : "+tcdto.getT_cno());
		//service연결 - 댓글수정저장
		TBCommentDto tbCommentDto = tbService.t_BCommentUpdate(tcdto);
		return tbCommentDto;
	}
	
	
	

}
