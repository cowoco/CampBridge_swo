package com.java.www.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.www.dto.TBCommentDto;
import com.java.www.dto.TBoardDto;

@Mapper
public interface TBoardMapper {
	//게시글 전체 가져오기
	ArrayList<TBoardDto> tb_selectAll(int startRow, int endRow, String searchTitle, String searchWord);
	//검색된 게시글 가져오기
	ArrayList<TBoardDto> tb_selectSearch(int startRow, int endRow, String searchTitle, String searchWord);

	//게시글 총 개수
	int tb_selectCountAll(String searchTitle, String searchWord);//하단 넘버링
	//게시글 검색 개수 
	int tb_selectSearchCount(String searchTitle, String searchWord);
	
	//게시글 1개 가져오기- 현재글
	TBoardDto tb_selectOne(int t_bno);
	//게시글 1개 가져오기- 이전글
	TBoardDto tb_selectOnePrev(int t_bno);
	//게시글 1개 가져오기- 다음글
	TBoardDto tb_selectOneNext(int t_bno);
	//조회수 1증가
	void t_bhitUp(int t_bno);
	
	//글쓰기 저장
	int tWrite(TBoardDto tbdto);
	
	//게시글 삭제
	int tDelete(int t_bno);
	
	//게시글 수정 저장
	int doTBUpdate(TBoardDto tbdto);

	//댓글 전체 가져오기
	List<TBCommentDto> TBCommemtSelectAll(int t_bno);
	
	//db에 저장된 댓글 1개 가져오기
	void TBCommentInsert(TBCommentDto tcdto);
	
	//저장된 댓글 1개 가져오기
	TBCommentDto TBCommemtSelectOne(int t_cno);
	
	//댓글 삭제 
	int TBCommentDelete(int t_cno);
	
	//댓글 수정저장
	void t_BCommentUpdate(TBCommentDto tcdto);
	
	//------  답변달기  ------
	//다른게시글 bstep 1증가
	void tbstepUp(TBoardDto tbdto);
	//답변달기 저장
	int doTBReply(TBoardDto tbdto);
	
	


	
	

	

}
