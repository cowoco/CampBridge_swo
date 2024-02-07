package com.java.www.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.java.www.dto.TSearchDto;
import com.java.www.service.TSearchService;

@Controller
@RequestMapping("search")
public class SController {
	
	@Autowired TSearchService tSearchService;
	

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
	public String themeData(String themeTxt) throws Exception {
		System.out.println("themeData txt : "+themeTxt);
		String page = 1+"";
		String servicekey="nPPQZrCKczmg%2FdIMJJdN8Zot7BoWCyT0LbxEA8xRBApq7Ahfh1u%2BdWpijsZbTseUr3sHT%2B9sJBV39afyi1K5dA%3D%3D";
		
		String result="";
		if(themeTxt == null || themeTxt.equals("")) {
			//검색단어가 없을때
			result = themeList(page,servicekey);
		}else {
			//검색단어가 있을때
			result = themeSearchList(themeTxt,page,servicekey);
		}
		
		return result;
	}// tSearch()
	
	// 테마조회 메소드 
	public String themeSearchList(String themeTxt,String page,String serviceKey) throws Exception {
		StringBuilder urlBuilder = new StringBuilder("https://apis.data.go.kr/B551011/GoCamping/basedList"); /*URL*/
		 urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "="+serviceKey); /*Service Key*/
		 urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8"));/*목록건수*/
		 urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode(page, "UTF-8"));/*페이지 번호*/
		 urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8"));/*OS 구분*/
		 urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8"));/*페이지 번호*/
		 urlBuilder.append("&" + URLEncoder.encode("keyword","UTF-8") + "=" + URLEncoder.encode(themeTxt, "UTF-8"));/*검색어*/
		 urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8"));/*응답페이지 번호*/
		 URL url = new URL(urlBuilder.toString());
		 HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		 conn.setRequestMethod("GET");
		 conn.setRequestProperty("Content-type", "application/json");
		 System.out.println("Response code : "+ conn.getResponseCode());
		 BufferedReader rd;
		 if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			 rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		 } else {
			 rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		 }
		 StringBuilder sb = new StringBuilder();
		 String line;
		 while((line = rd.readLine()) != null) {
			 sb.append(line);
		 }
		 rd.close();
		 conn.disconnect();
		 System.out.println(sb.toString());
		 
		
		return toString();
	}//themeSearchList
	
	//테마목록 메소드
	@Transactional
	public String themeList(String page,String serviceKey) throws Exception {
		StringBuilder urlBuilder = new StringBuilder("https://apis.data.go.kr/B551011/GoCamping/basedList"); /*URL*/
		 urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "="+serviceKey); /*Service Key*/
		 urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8"));/*목록건수*/
		 urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode(page, "UTF-8"));/*페이지 번호*/
		 urlBuilder.append("&" + URLEncoder.encode("MobileOS","UTF-8") + "=" + URLEncoder.encode("ETC", "UTF-8"));/*OS 구분*/
		 urlBuilder.append("&" + URLEncoder.encode("MobileApp","UTF-8") + "=" + URLEncoder.encode("AppTest", "UTF-8"));/*페이지 번호*/
		 urlBuilder.append("&" + URLEncoder.encode("_type","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8"));/*응답페이지 번호*/
		 URL url = new URL(urlBuilder.toString());
		 HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		 conn.setRequestMethod("GET");
		 conn.setRequestProperty("Content-type", "application/json");
         System.out.println("Response code: " + conn.getResponseCode());
         BufferedReader rd;
         if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
             rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
         } else {
             rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
         }
         StringBuilder sb = new StringBuilder();  //String 을 계속 더하면 String변수를 계속 새롭게 만듬.
         String line;
         while ((line = rd.readLine()) != null) {
             sb.append(line); //json데이터를 sb에 1줄씩 저장
         }
         rd.close();
         conn.disconnect();
         
         System.out.println("-------------------------");
         System.out.println(sb.toString());
         System.out.println("[ json파싱 ]");
         JSONParser jsonParser = new JSONParser();
         JSONObject jsonObject = (JSONObject) jsonParser.parse(sb.toString());
         System.out.println("jsonObject : "+jsonObject);
         //json에서 특정값 찾기
         JSONObject jsonObject2 = (JSONObject) jsonObject.get("response");
         JSONObject jsonObject3 = (JSONObject) jsonObject2.get("body");
         JSONObject jsonObject4 = (JSONObject) jsonObject3.get("items");
         JSONArray docuArray = (JSONArray) jsonObject4.get("item");
         System.out.println("docuArray 개수 : "+docuArray.size());
         for(int i=0; i<10; i++) {
        	 JSONObject jObject = (JSONObject) docuArray.get(i);
        	 System.out.println("jObject themeTitle : "+jObject.get("galTitle"));
        	 
        	 //json데이터를 java 오브젝트로 변환 : ObjectMapper
        	 ObjectMapper objectMapper = new ObjectMapper();
        	 TSearchDto tSearchDto = null;
        	 
        	 //json데이터를 java오브젝트로 변경 
        	 try {
        		 tSearchDto = objectMapper.readValue(jObject.toString(),TSearchDto.class);
        	
        	 } catch (Exception e) {e.printStackTrace();}
        	
        	 //테마 데이터 1개 저장
        	 tSearchService.insertTheme(tSearchDto);
        	 System.out.println("테마 데이터가 저장되었습니다.");
        	 
         }
         //------------------------------------------------------
         
		return sb.toString();
	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////테마 검색

}
