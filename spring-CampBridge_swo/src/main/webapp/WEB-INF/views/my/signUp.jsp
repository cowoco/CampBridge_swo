<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
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
	    <link href="../assets/css/my/signUp.css" rel="stylesheet" type="text/css">
	
	    <!-- Template Main CSS File -->
	    <link href="../assets/css/main2.css" rel="stylesheet">
	    <link href="../assets/css/header.css" rel="stylesheet">
        
		<title>회원가입 - 회원정보입력</title>
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
		<section>
			<form name="agree" method="get" action="/signUp02">
				<div id="subBanner"></div>
				<div id="sub_top_area">
					<h3>회원가입</h3>
				</div>
				<h4>
					필수 정보 입력 
					<span>(* 항목은 필수 항목입니다.)</span>
				</h4>
				<fieldset class="fieldset_class">
					<dl id="join_picture_dl">
						<dt>
							
							<label for="name">프로필 사진</label>
						</dt>
						<dd class="photoBoxMI">
							<div class="photoMI"><img src="../assets/img/login/photoMI.png"></div>
				          	<div class="inputMI" ><input type="file" name="file" id="file"></div>
						</dd>
					</dl>
					<dl id="join_name_dl">
						<dt>
							<div></div>
							<label for="name">이름</label>
						</dt>
						<dd>
							<input type="text" id="name" name="name" required/>
						</dd>
					</dl>
					<dl id="join_id_dl">
						<dt>
							<div></div>
							<label for="id">아이디</label>
						</dt>
						<dd>
							<input type="text" id="id" name="id" minlength="4" maxlength="16" required/>
							<input type="button" value="중복확인"/>
							<span>4~16자리의 영문, 숫자, 특수기호(_)만 사용하실 수 있습니다.</span>
							<span>첫 글자는 영문으로 입력해 주세요.</span>
						</dd>
					</dl>
					<dl id="join_pw1_dl">
						<dt>
							<div></div>
							<label for="pw1">비밀번호</label>
						</dt>
						<dd>
							<input type="password" id="pw1" name="pw1" minlength="8" required />
							<span>영문, 숫자, 특수문자 중 2종류 조합 시 10자리 이상 입력</span>
							<span>영문, 숫자, 특수문자 모두 조합 시 8자리 이상 입력</span>
						</dd>
					</dl>
					<dl id="join_pw2_dl">
						<dt>
							<div></div>
							<label for="pw2">비밀번호 확인</label>
						</dt>
						<dd>
							<input type="password" id="pw2" name="pw2" minlength="8" required />
							<span>비밀번호를 다시 한번 입력해 주세요.</span>
						</dd>
					</dl>
					<dl id="join_name_dl">
						<dt>
							<div></div>
							<label for="nickname">닉네임</label>
						</dt>
						<dd>
							<input type="text" id="name" name="name" required/>
							<span>5글자까지 입력해주세요.</span>
						</dd>
					</dl>
					<dl id="join_mail_dl">
						<dt>
							<div></div>
							<label for="mail_id">이메일</label>
						</dt>
						<dd>
							<input type="text" id="mail_id" name="mail_id" required />
							<span>@</span>
							<input type="text" id="main_tail" name="mail_tail" required />
							<select>
								<option selected>직접입력</option>
								<option>지메일</option>
								<option>네이버</option>
								<option>네이트</option>
								<option>핫메일</option>
								<option>파란</option>
								<option>엠팔</option>
								<option>야후</option>
								<option>드림위즈</option>
								<option>한메일(다음)</option>
							</select>
						</dd>
					</dl>
					
					<dl id="join_address_dl">
						<dt> 
							<div></div>
							<label for="">주소</label>
						</dt>
						<dd>
							<input type="text" id="f_postal" name="f_postal" required />
							<input type="button" value="우편번호"/>
							<input type="text" id="address1" name="address1" required />
							<input type="text" id="address2" name="address2" required />
						</dd>
						
					</dl>
					<dl id="join_gender_dl">
						<dt>
							<div></div>
							<label for="">성별</label>
						</dt>
						<dd>
							<div>
								<input type="radio" name="gender" id="male" value="male" checked="checked"/>
								<label for="male">남성</label>
								<input type="radio" name="gender" id="female" value="female" />
								<label for="female">여성</label>
							</div>
						</dd>
					</dl>
					
					<dl id="join_tell_dl">
						<dt>
							<div></div>
							<label for="f_tell">휴대전화</label>
						</dt>
						<dd>
							<input type="text" id="f_tell" name="f_tell" maxlength="3" required />
							<span> - </span>
							<input type="text" id="m_tell" name="m_tell" maxlength="4" required />
							<span> - </span>
							<input type="text" id="l_tell" name="l_tell" maxlength="4" required />
						</dd>
					</dl>
				
				</fieldset>

				
				
				<fieldset class="fieldset_class">
					
					<dl id="join_interests_dl">
						<dt>
							<label id="genderLb" >지역</label>
						</dt>
						<dd>
							<ul>
								<li>
									<input type="checkbox" name="searchDo" id="c_do01" class="check01" value="1" title="1"/>
									<label for="c_do01">서울시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do02" class="check01" value="2" title="2"/>
									<label for="c_do02">부산시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do03" class="check01" value="3" title="3"/>
									<label for="c_do03">대구시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do04" class="check01" value="4" title="4"/>
									<label for="c_do04">인천시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do05" class="check01" value="5" title="5"/>
									<label for="c_do05">광주시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do06" class="check01" value="6" title="6"/>
									<label for="c_do06">대전시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do07" class="check01" value="7" title="7"/>
									<label for="c_do07">울산시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do08" class="check01" value="8" title="8"/>
									<label for="c_do08">세종시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do09" class="check01" value="9" title="9"/>
									<label for="c_do09">경기도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do10" class="check01" value="10" title="10"/>
									<label for="c_do10">강원도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do11" class="check01" value="11" title="11"/>
									<label for="c_do11">충청북도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do12" class="check01" value="12" title="12"/>
									<label for="c_do12">충청남도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do13" class="check01" value="13" title="13"/>
									<label for="c_do13">전라북도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do14" class="check01" value="14" title="14"/>
									<label for="c_do14">전라남도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do015" class="check01" value="15" title="15"/>
									<label for="c_do15">경상북도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do16" class="check01" value="16" title="16"/>
									<label for="c_do16">경상남도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do17" class="check01" value="17" title="17"/>
									<label for="c_do17">제주도</label>
								</li>
							</ul>
						</dd>
					</dl>
				</fieldset>
				<div id="info_input_button">
					<input type="reset" value="취소하기" />
					<input type="submit" value="가입하기" />
				</div>
				
			</form>
		</section>
		  <!-- ======= Footer ======= -->
		  <%@include file="../include/footer.jsp" %>
		  <!-- End Footer -->
		
	</body>
</html>