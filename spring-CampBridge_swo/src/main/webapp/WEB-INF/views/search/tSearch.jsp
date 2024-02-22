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
		<!-- javascript -->
		<script src="../assets/js/search/tSearch.js"></script>
	    
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
		<section class="tSearch">
		<!-- 체크박스 -->
		  <div class="t_check">
		  		<img src="../assets/img/tsearch/thema_icon.png">
		 		<h1>테마별로 떠나는 캠프</h1>
		  	
		  		<div class="thema">
				 <ul>
					 <li>
						 <input type="checkbox" id="thema1" name="themaEnvrnCl" value="일출명소" /> 
						 <label for="thema1">일출명소</label> 
					 </li>
			 		<li> 
				 		<input type="checkbox" id="thema2" name="themaEnvrnCl" value="일몰명소" />
				 		<label for="thema2">일몰명소</label> 
			 		</li>
					<li> 
						<input type="checkbox" id="thema3" name="themaEnvrnCl" value="항공레저" /> 
						<label for="thema3">항공레저</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema4" name="themaEnvrnCl" value="스키" /> 
						<label for="thema4">스키</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema5" name="themaEnvrnCl" value="낚시" /> 
						<label for="thema5">낚시</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema6" name="themaEnvrnCl" value="액티비티" /> 
						<label for="thema6">액티비티</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema7" name="themaEnvrnCl" value="봄꽃여행" /> 
						<label for="thema7">봄꽃여행</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema11" name="themaEnvrnCl" value="걷기길"/> 
						<label for="thema11">걷기길</label> 
					</li>
				</ul>
				<ul>	
					<li> 
						<input type="checkbox" id="thema8" name="themaEnvrnCl" value="여름물놀이" /> 
						<label for="thema8">여름물놀이</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema9" name="themaEnvrnCl" value="가을단풍명소"/> 
						<label for="thema9">가을단풍명소</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema10" name="themaEnvrnCl" value="겨울눈꽃명소"/> 
						<label for="thema10">겨울눈꽃명소</label> 
					</li>
		 		</ul>
		 		</div>
		  </div>
		  <div id="s_Btn">
		 	<button type="button">검색하기</button>
		  </div>
		  <div class="t_list">
            <ul>
                <li class="item" id="cont_item">
                <c:forEach var="tsdto" items="${map.list}">
                	<div class="t_contbox">
	                    <div class="image"><img class="image" src="${tsdto.firstImageUrl}"></div>
	                    <div class="cont">
	                        <strong>${tsdto.facltNm}</strong>
	                        <p>${tsdto.addr1}</p>
	                        <c:if test="${empty tsdto.tel}">
		                        <p>등록된 전화 번호가 없습니다.</p>
	                        </c:if>
	                        <c:if test="${not empty tsdto.tel}">
		                        <p>${tsdto.tel}</p>
	                        </c:if>
	                        <p>${tsdto.lineIntro}</p>
	                        <a href="tSearch_view?contentId=${tsdto.contentId}">바로가기</a>
	                    </div>
                	</div>
                </c:forEach>
                </li>
            </ul>
        </div>
		<div id="p_Btn">
		  <button type="button" class="tsMoreBtn">더보기</button>
		</div>
	</section>
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>