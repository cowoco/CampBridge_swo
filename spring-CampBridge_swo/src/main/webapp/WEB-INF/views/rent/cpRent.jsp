<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑장 검색</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	    <meta content="" name="description">
	    <meta content="" name="keywords">
	
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
		<link href="../assets/css/rent/rentcart.css" rel="stylesheet">
	    
	    
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	
		<section class="cp_Rent">
			<h1 style="color:red;">※ 안내사항 ※</h1><br>
			<div><img src="../assets/img/rent/cpRent0.png"></div>
		
		   
			<!-- 캠핑용품대여 -->
		    	<h1>캠핑용품 대여</h1>
		   <!-- 카드형 패키지 -->
		    <div class="packList">
		    <h3>패키지 상품</h3>
            <ul>
                <li class="item item1">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>2인 패키지</strong>
                        <p>텐트, 의자, 테이블, 코펠, 랜턴, 발포매트, 버너, 그라운드시트, 가렌더</p>
                        <p>55,000</p>
                        <a href="cpRent_v1">상세보기</a>
                    </div>
                </li>
                <li class="item item2">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>3인 패키지</strong>
                        <p>텐트, 의자, 타프, 테이블, 코펠, 랜턴2, 발포매트, 버너, 그라운드시트, 가렌더</p>
                        <p>65,000</p>
                        <a href="cpRent_v2">상세보기</a>
                    </div>
                </li>
                <li class="item item3">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>4인 패키지</strong>
                        <p>텐트, 의자, 타프, 테이블, 코펠, 랜턴2, 화로대, 발포매트, 버너, 그라운드시트, 가렌더 ···</p>
                        <p>105,000</p>
                        
                        <a href="cpRent_v3">상세보기</a>
                    </div>
                </li>
            </ul>
        </div>
        
        
        <!-- 체크박스 -->
		  <div class="cp_check">
		  		<h3>패키지 선택</h3>
		  		<dl class="pack">
			 	<dt>캠핑 패키지 선택</dt><br><br>
				 <ul>
					 <li>
						 <input type="checkbox" id="package1" name="package" value="2인용" onClick="clkOftenAddr(this);"/> 
						 <label for="package1">2인용 패키지</label> 
					 </li>
			 		<li> 
				 		<input type="checkbox" id="package2" name="package" value="3인용" onClick="clkOftenAddr(this);"/> 
				 		<label for="package2">3인용 패키지</label> 
			 		</li>
					<li> 
						<input type="checkbox" id="package3" name="package" value="4인용" onClick="clkOftenAddr(this);"/> 
						<label for="package3">4인용 패키지</label> 
					</li>
		 		</ul></dl>
		 		
		 		<h3>용품 선택 사항</h3>
		 		<h2 style="color:red;">※ 수령방법 필수 선택 ※</h2>
		  		<dl class="pack">
			 	<dt>침구 선택 </dt>
				 <ul>
					 <li>
						 <input type="checkbox" id="bedding1" name="bedding" value="침낭" onClick="clkOftenAddr(this);"/> 
						 <label for="bedding1">침낭(6,000원)</label> 
					 </li>
			 		<li> 
				 		<input type="checkbox" id="bedding2" name="bedding" value="발포매트" onClick="clkOftenAddr(this);"/> 
				 		<label for="bedding2">발포매트(3,000원)</label> 
			 		</li>
					<li> 
						<input type="checkbox" id="bedding3" name="bedding" value="전기장판" onClick="clkOftenAddr(this);"/> 
						<label for="bedding3">전기장판(7,000원)</label> 
					</li>
					<li> 
						<input type="checkbox" id="bedding3" name="bedding" value="베개" onClick="clkOftenAddr(this);"/> 
						<label for="bedding3">베개(2,000원)</label> 
					</li>
		 		</ul>
			 	<br><dt>가구 선택 </dt>
				 <ul>
					 <li>
						 <input type="checkbox" id="furniture1" name="furniture" value="의자" onClick="clkOftenAddr(this);"/> 
						 <label for="furniture1">의자(7,000원)</label> 
					 </li>
			 		<li> 
				 		<input type="checkbox" id="furniture2" name="furniture" value="테이블" onClick="clkOftenAddr(this);"/> 
				 		<label for="furniture2">테이블(9,000원)</label> 
			 		</li>
					<li> 
						<input type="checkbox" id="furniture3" name="furniture" value="야전침대" onClick="clkOftenAddr(this);"/> 
						<label for="furniture3">야전침대(11,000원)</label> 
					</li>
					
		 		</ul>
			 	<br><dt>식기 선택 </dt>
				 <ul>
					 <li>
						 <input type="checkbox" id="tableware1" name="tableware" value="코펠 2인" onClick="clkOftenAddr(this);"/> 
						 <label for="tableware1">코펠 2인(5,000원)</label> 
					 </li>
			 		<li> 
				 		<input type="checkbox" id="tableware2" name="tableware" value="코펠 4인" onClick="clkOftenAddr(this);"/> 
				 		<label for="tableware2">코펠 4인(6,000원)</label> 
			 		</li>
					<li> 
						<input type="checkbox" id="tableware3" name="tableware" value="아이스박스 28L" onClick="clkOftenAddr(this);"/> 
						<label for="tableware3">아이스박스 28L(6,000원)</label> 
					</li>
					<li> 
						<input type="checkbox" id="tableware3" name="tableware" value="아이스박스 40L" onClick="clkOftenAddr(this);"/> 
						<label for="tableware3">아이스박스 40L(9,000원)</label> 
					</li>
					
		 		</ul>
			 	<br><dt>기타 선택 </dt>
				 <ul>
					 <li>
						 <input type="checkbox" id="etc1" name="etc" value="타프" onClick="clkOftenAddr(this);"/> 
						 <label for="etc1">타프(15,000원)</label> 
					 </li>
			 		<li> 
				 		<input type="checkbox" id="etc2" name="etc" value="버너" onClick="clkOftenAddr(this);"/> 
				 		<label for="etc2">버너(6,000원)</label> 
			 		</li>
					<li> 
						<input type="checkbox" id="etc3" name="etc" value="랜턴" onClick="clkOftenAddr(this);"/> 
						<label for="etc3">랜턴(5,000원)</label> 
					</li>
					<li> 
						<input type="checkbox" id="etc3" name="etc" value="화로대" onClick="clkOftenAddr(this);"/> 
						<label for="etc3">화로대(14,000원)</label> 
					</li>
					<li> 
						<input type="checkbox" id="etc3" name="etc" value="전기릴선" onClick="clkOftenAddr(this);"/> 
						<label for="etc3">전기릴선(6,000원)</label> 
					</li>
					
		 		</ul>
		 		<br><dt>수령 방법 </dt>
				 <ul>
					 <li>
						 <input type="checkbox" id="delivery1" name="delivery" value="방문수령" onClick="clkOftenAddr(this);"/> 
						 <label for="delivery1">방문수령</label> 
					 </li>
			 		<li> 
				 		<input type="checkbox" id="delivery2" name="delivery" value="택배수령" onClick="clkOftenAddr(this);"/> 
				 		<label for="delivery2">택배수령(5,000원)</label> 
			 		</li>
					
					
		 		</ul>
		 		
		 		
		 		</dl>
		  </div>
		  <a href="/"><button>메인으로</button></a> 
		  <a href="cp_Cart"><button>선택품목 담기</button></a> 
        
        
		
		  </section>
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>