<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>로그인 페이지</title>
       <script src="http://code.jquery.com/jquery-latest.min.js"></script>
 	   
	    <meta content="" name="description">
	    <meta content="" name="keywords">
	 	 <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
		
	    <!-- Favicons -->
	    <link href="assets/img/favicon.png" rel="icon">
	    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
	
	    <!-- Google Fonts -->
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
	
	    <!-- Vendor CSS Files -->
	    <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	    <link href="../assets/vendor/aos/aos.css" rel="stylesheet">
	    <link href="../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	    <link href="../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	
	    <!-- Template Main CSS File -->
	    <link href="../assets/css/main2.css" rel="stylesheet">
	    <link href="../assets/css/header.css" rel="stylesheet">
        <link href="../assets/css/my/login.css" rel="stylesheet">
        
        <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
        
        
        
    	<script>
			$(function(){
				
				
				
				$("#signUpBtn").click(function(){
					alert("회원가입 페이지로 이동합니다.")
					location.href="signUp";
				});//#회원가입
		    //----------------아이디 저장하기--------------------
				var savedId = localStorage.getItem("rememberedId");
				if(savedId){
					$("#id").val(savedId);
					$("#remember-check").prop("checked",true);
				}//if
				
				$("#loginBtn").click(function(){
					var enteredId = $("#id").val();
			        var enteredPw = $("#pw").val();
					if(enteredId.length<1){
					alert("아이디를 입력하세요.")
					$("#id").focus();
					return false
					}//if-로그인 유효성
					
					if(enteredPw.length<4){
					alert("비밀번호를 다시 입력하세요.")
					$("#pw").focus();
					return false
					}//if-비밀번호 유효성
					
					if($("#remember-check").is(":checked")){
						localStorage.setItem("rememberedId", enteredId);
					}else{localStorage.removeItem("rememberedId");}//if-else
					
					loginFrm.submit();
				});//로그인버튼
				
				
				
				
				
				//----아이디 저장하기 체크박스 시작-------	
			});//제이쿼리 구문
			  function onSuccess(googleUser) {
			      console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
			    }
			    function onFailure(error) {
			      console.log(error);
			    }
			    function renderButton() {
			      gapi.signin2.render('my-signin2', {
			        'scope': 'profile email',
			        'width': 350,
			        'height': 53,
			        'longtitle': true,
			        'theme': 'dark',
			        'onsuccess': onSuccess,
			        'onfailure': onFailure,
			      });
			    }			
		</script>
		 <!--Google login 
       	<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer></script>
       	 -->
    </head>
    <body>
    <!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	 
	 <section class="loginback" >
	 	
        <div class="login_wap">
       		<img src="../assets/img/login/login02.png" style="margin-top: 30px;">
            <h2>로 그 인</h2>
            <form name="loginFrm" method="post" id="log_f" action="doLogin">
                <input type="text" name="id" placeholder="아이디" id="id">
                <input type="password" name="pw" placeholder=" 비밀번호" id="pw">
                <label for="remember-check" id="labelpw">
                    <input type="checkbox" id="remember-check"> 아이디 저장
                </label>
                <input type="button" value="LOGIN" id="loginBtn">
                <div id="find">
                	<span><a href="idpw_search" >아이디/비밀번호 찾기</a></span>
                </div>
                <script>
                	$(function(){
                		$("#kakaologinBtn").click(function(){
                			alert("카카오로그인");
                			location.href="https://kauth.kakao.com/oauth/authorize?client_id=6a62d12451f24681e508a5652789bd95&redirect_uri=http://localhost:8000/kakao/oauth&response_type=code";
                		});
                		
                		
                		
                		
                	});//j
                </script>
                <button type="button" id="kakaologinBtn">
                <img src="/assets/img/login/kakao_login.png">
                 </button>
              	 <div id="my-signin2"></div>
              	<div class="ex_join">
                <p class="askSingup">아직 계정이 없나요? &nbsp<span class="suGo"><a href="signUp">회원가입</a></span></p>
              	</div>
            </form>
        </div>
 		</section>
    </body>
  <!-- ======= Footer ======= -->
  <%@include file="../include/footer.jsp" %>
  <!-- End Footer -->
</html>