<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>테마 검색</title>
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
	    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	    <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
	    <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	    <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	
	    <!-- Template Main CSS File -->
	    <link href="/assets/css/main2.css" rel="stylesheet">
	    <link href="/assets/css/header.css" rel="stylesheet">
		<link href="/assets/css/search/tsearch.css" rel="stylesheet">
	    
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
			<section class="tSearch">
			
			<!-- 체크박스 -->
		  <div class="t_check">
		  		<img src="../assets/img/tsearch/thema_icon.png">
		 		<h1>테마별로 떠나는 캠프</h2>
		  		<div class="thema">
				 <ul>
					 <li>
						 <input type="checkbox" id="thema1" name="thema" value="일출명소" onClick="clkOftenAddr(this);"/> 
						 <label for="thema1">일출명소</label> 
					 </li>
			 		<li> 
				 		<input type="checkbox" id="thema2" name="thema" value="일몰명소" onClick="clkOftenAddr(this);"/> 
				 		<label for="thema2">일몰명소</label> 
			 		</li>
					<li> 
						<input type="checkbox" id="thema4" name="thema" value="항공레저" onClick="clkOftenAddr(this);"/> 
						<label for="thema4">항공레저</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema4" name="thema" value="스키" onClick="clkOftenAddr(this);"/> 
						<label for="thema4">스키</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema5" name="thema" value="낚시" onClick="clkOftenAddr(this);"/> 
						<label for="thema5">낚시</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema6" name="thema" value="액티비티" onClick="clkOftenAddr(this);"/> 
						<label for="thema6">액티비티</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema7" name="thema" value="봄꽃여행" onClick="clkOftenAddr(this);"/> 
						<label for="thema7">봄꽃여행</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema11" name="thema" value="걷기길" onClick="clkOftenAddr(this);"/> 
						<label for="thema11">걷기길</label> 
					</li>
				</ul>
				<ul>	
					<li> 
						<input type="checkbox" id="thema8" name="thema" value="여름물놀이" onClick="clkOftenAddr(this);"/> 
						<label for="thema8">여름물놀이</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema9" name="thema" value="가을단풍명소" onClick="clkOftenAddr(this);"/> 
						<label for="thema9">가을단풍명소</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema10" name="thema" value="겨울눈꽃명소" onClick="clkOftenAddr(this);"/> 
						<label for="thema10">겨울눈꽃명소</label> 
					</li>
		 		</ul></div>
		  </div>
		  
		  <div id="s_Btn">
		  <a href="#"><button>검색하기</button></a>
		  </div>
		  
		  
		  <div class="t_list">
            <ul>
                <li class="item item1">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item2">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item3">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item4">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item5">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item6">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item7">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item8">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item9">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item10">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item11">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item12">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
            </ul>
        </div>
		
		
		<div id="p_Btn">
		  <a href="#"><button>더보기</button></a>
		  </div>
					
			</section>
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>