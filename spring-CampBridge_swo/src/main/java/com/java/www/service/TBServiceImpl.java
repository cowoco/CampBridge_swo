package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.www.dto.TBCommentDto;
import com.java.www.dto.TBoardDto;
import com.java.www.mapper.TBoardMapper;

@Service
public class TBServiceImpl implements TBService{
	
	@Autowired
	TBoardMapper tboardMapper;
	
	@Override
	public Map<String, Object> tb_selectSearch(int page, String searchTitle, String searchWord) {
		//꿀팁 - 게시글 검색 가져오기
		if(page<=0) page=1;
		int countPerPage = 10;
		int bottomPerNum = 10;
		int countAll = tboardMapper.tb_selectSearchCount(searchTitle, searchWord);
		int maxPage = (int)Math.ceil((double)countAll/countPerPage);
		int startPage =((page-1)/bottomPerNum)*bottomPerNum+1;
		int endPage =(startPage+bottomPerNum)-1;
		int startRow = (page-1)*countPerPage+1;
		int endRow = startRow+countPerPage-1;
		
		if(endPage>maxPage) endPage = maxPage;
		ArrayList<TBoardDto> list = tboardMapper.tb_selectSearch(startRow,endRow,searchTitle,searchWord);
		
		//데이터 전송
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("countAll", countAll);
		map.put("page", page);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		return map;
	}
	
	
	
	@Override
	public Map<String, Object> tb_selectAll(int page, String searchTitle, String searchWord) {
		//게시글 전체 가져오기 
		//하단넘버링 
		if(page<=0) page=1;
		int countPerPage = 10;
		int bottomPerNum = 10;
		int countAll = tboardMapper.tb_selectCountAll(searchTitle, searchWord);
		int maxPage = (int)Math.ceil((double)countAll/countPerPage);
		
		int startPage =((page-1)/bottomPerNum)*bottomPerNum+1;
		int endPage =(startPage+bottomPerNum)-1;
		
		int startRow = (page-1)*countPerPage+1;
		int endRow = startRow+countPerPage-1;
		
		if(endPage>maxPage) endPage = maxPage;
		ArrayList<TBoardDto> list = tboardMapper.tb_selectAll(startRow,endRow,searchTitle,searchWord);
		
		//데이터 전송
		Map<String, Object> map = new HashMap<>();
		map.put("list", list);
		map.put("page", page);
		map.put("countAll", countAll);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		return map;
	}//tb_selectAll//게시글 전체 가져오기 


	@Override
	public Map<String, Object> tb_selectOne(int t_bno) {
		//게시글 1개 가져오기
		TBoardDto tbdto = tboardMapper.tb_selectOne(t_bno);
		TBoardDto tprevdto = tboardMapper.tb_selectOnePrev(t_bno);
		TBoardDto tnextdto = tboardMapper.tb_selectOneNext(t_bno);
		
		Map<String, Object> map = new HashMap<>();
		List<TBCommentDto> TBCommentlist = tboardMapper.TBCommemtSelectAll(t_bno);
		map.put("tbdto",tbdto);
		map.put("tprevdto",tprevdto);
		map.put("tnextdto",tnextdto);
		map.put("TBCommentlist",TBCommentlist);
	
		return map;
	}//tb_selectOne//게시글 1개 가져오기


	@Override
	public void tWrite(TBoardDto tbdto) {
		//글쓰기 저장
		int result = tboardMapper.tWrite(tbdto);
		System.out.println("TBServiceImpl tWrite reslt : "+result);
		
	}



	@Override
	public void tDelete(int t_bno) {
		//게시글 삭제
		int result = tboardMapper.tDelete(t_bno);
		System.out.println("TBServiceImpl tDelete result : "+result);
		
	}



	@Override
	public void doTBoard(TBoardDto tbdto) {
		//게시글 수정 저장
		int result = tboardMapper.doTBoard(tbdto);
		System.out.println("TBServiceImpl doTBoard result : "+result);
		
	}



	@Override //db에 저장된 댓글 1개 가져오기
	public TBCommentDto TBCommentInsert(TBCommentDto tcdto) {
		//ajax 댓글입력
		tboardMapper.TBCommentInsert(tcdto);
		System.out.println("TBServiceImpl TBCommentInsert t_cno :"+tcdto.getT_cno());
		System.out.println("TBServiceImpl TBCommentInsert t_cdate :"+tcdto.getT_cdate());
		
		TBCommentDto tbCommentDto = new TBCommentDto();
		tbCommentDto = tboardMapper.TBCommemtSelectOne(tcdto.getT_cno());
		System.out.println("TBServiceImpl tbCommentDto t_ccontent :"+tcdto.getT_ccontent());
		return tbCommentDto;
	}



	@Override
	public String TBCommentDelete(int t_cno) {
		String result="";
		int re = tboardMapper.TBCommentDelete(t_cno);
		
		return result+re;
	}


}
