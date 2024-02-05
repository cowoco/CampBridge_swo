package com.java.www.service;

import java.util.Map;

import com.java.www.dto.TBCommentDto;
import com.java.www.dto.TBoardDto;

public interface TBService {
  //============== 꿀팁 게시판 ==============
	
	//꿀팁 - 게시글 검색
	Map<String, Object> tb_selectSearch(int page, String searchTitle, String searchWord);
	
	//게시글 전체 가져오기
	Map<String, Object> tb_selectAll(int page, String searchTitle, String searchWord);
	
	//게시글 1개 가져오기 
	Map<String, Object> tb_selectOne(int t_bno);
	
	//글쓰기 저장
	void tWrite(TBoardDto tbdto);
	
	//게시글 삭제
	void tDelete(int t_bno);
	
	//게시글 수정저장
	void doTBUpdate(TBoardDto tbdto);
	
	//댓글입력 - ajax
	TBCommentDto TBCommentInsert(TBCommentDto tcdto);
	
	//댓글삭제 - ajax 
	String TBCommentDelete(int t_cno);
	
	//댓글수정 저장
	TBCommentDto t_BCommentUpdate(TBCommentDto tcdto);
	
	//답변달기 저장
	void doTBReply(TBoardDto tbdto);

	
	


}
