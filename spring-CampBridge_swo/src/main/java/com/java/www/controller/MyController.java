package com.java.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.www.dto.User_campDto;
import com.java.www.service.User_campService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("my")
public class MyController {
	
	@Autowired
	User_campService userCampService;
	
	@Autowired
	HttpSession session;
	
	
	
	@GetMapping("/")
	public String index() {
		return "index";
	}// index()
	
	@GetMapping("login")
	public String login() {
		return "/my/login";
	}// login()
	
	@GetMapping("logout")
	public String logout() {
		session.invalidate();
		return "/my/logout";
	}// logout()
	
	@RequestMapping("doLogin")
	public String doLogin(User_campDto ucdto, Model model, HttpServletRequest request) {
		int result = 0;
		System.out.println("FC id : "+ucdto.getId());
		System.out.println("FC pw : "+ucdto.getPw());
		
		User_campDto usercampDto = userCampService.loginSelect(ucdto);
		if(usercampDto != null) {
			session.setAttribute("session_id", usercampDto.getId());
			session.setAttribute("session_name", usercampDto.getName());
			
			result = 1;
		}else {
			System.out.println("FC userDto : null");
		}
		
		model.addAttribute("result", result);
		return "/my/doLogin";
	}// doLogin()
	
	
	
	
	
	
	
	

	
	//////////////////////////////////////////로그인(id, pw 찾기)
	//id 찾기
	@GetMapping("idpw_search") //idsearch페이지열기
	public String idpw_search() {
		return "/my/idpw_search";
	}// idpw_search()
	
	
	
	@PostMapping("id_s") //ajax 아이디찾기- name,email
	@ResponseBody
	public String id_s(String name, String email) {
		System.out.println("FC idsearch name : "+name);
		System.out.println("FC idsearch email : "+email);
		String result = userCampService.idsearch(name,email);
					
		return result;
	}// id_s()

	
	//id 찾기완료
	@GetMapping("idsearch")
	public String idsearch() {
		return "/my/idsearch";
	}// login()
	
	
	
	
	
	
	
	
	
	//비밀번호 찾기
	@PostMapping("pw_s")
	@ResponseBody
	public String pw_s(String id, String email) {
		System.out.println("MyController id_s : "+id);
		//service연결 비밀번호 찾기-아이디,이메일검색
		String result = userCampService.pw_s(id,email);
		return result;
	}
	
	

	
	@PostMapping("pwChk") //인증코드 확인
	@ResponseBody
	public String pwChk(String pwcode) {
		System.out.println("MController pwcode : "+pwcode);
		String pw = (String) session.getAttribute("email_pwcode");
		String result ="fail";
		if(pw.equals(pwcode)) result="success";
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	//pw 찾기완료
	@GetMapping("pwsearch")
	public String pwsearch() {
		return "/my/pwsearch";
	}// login()
	
	
	//회원가입 페이지
	@GetMapping("signUp")
	public String signUp() {
		return "/my/signUp";
	}// signUp()
	
	
	//회원가입 저장
	@PostMapping("signUp")
	@ResponseBody
	public String signUp(User_campDto ucdto) {
		
		String result = userCampService.signUp(ucdto);
		return result;
	}// signUp()
	
	
	@PostMapping("idCheck")
	@ResponseBody
	public String idCheck(String id) {
		String result = userCampService.idCheck(id);
		return result;
	}

	
	//회원가입 완료
	@GetMapping("signUp02")
	public String signUp02() {
		return "/my/signUp02";
	}// signUp02()
	
	
	
	
	
	@RequestMapping("myPage")
	public String myPage() {
		return "/my/myPage";
	}// myPage()
	
}
