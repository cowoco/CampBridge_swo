
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
	    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
	    <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
	    <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
	    <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
	
	    <!-- Template Main CSS File -->
	    <link href="/assets/css/main2.css" rel="stylesheet">
	    <link href="/assets/css/header.css" rel="stylesheet">
	    <link href="/assets/css/search/recommendsearch.css" rel="stylesheet">
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	
		<section class="notice_search_cardstyle">
			<!-- 캠핑장 검색 -->
				<img src="/assets/img/recommend_icon.png">
		    	<h1>campbridge 추천</h1>
		   <!-- 카드형 리스트 -->
		    <div class="list_wrap">
            <ul>
				<div class="list_wrap_theme_main">
					<div class="list_wrap_theme_bottom">
						<li class="item" id="cont_item">
					
						<div class="list_wrap_theme_top">
							<h2>별 보기 좋은</h2>
						</div><!--End list_wrap_theme_top   -->
						<c:forEach var="rsdto" items="${map.liststar}">
			                	<div class="r_contbox">
				                    <div class="image">
					                    <c:if test="${not empty rsdto.firstImageUrl }">
					                    	<img class="image" src="${rsdto.firstImageUrl}"></div>
					                    </c:if>
					                    <c:if test="${empty rsdto.firstImageUrl }">
					                    	<img class="image" src="../assets/img/noPhoto_s.jpg"></div>
					                    </c:if>
				                    <div class="cont">
				                        <strong>${rsdto.facltNm}</strong>
				                        <p>${rsdto.addr1}</p>
				                        <c:if test="${empty rsdto.tel}">
					                        <p>등록된 전화 번호가 없습니다.</p>
				                        </c:if>
				                        <c:if test="${not empty rsdto.tel}">
					                        <p>${rsdto.tel}</p>
				                        </c:if>
				                        <p>${rsdto.lineIntro}</p>
				                        <a href="tSearch_view?contentId=${rsdto.contentId}">바로가기</a>
				                    </div>
			                	</div>
			            
		                 </c:forEach>
						</li>
					</div><!-- End list_wrap_theme_bottom -->
				</div><!--End list_wrap_theme_main  -->

				<div class="list_wrap_theme_main">
					<div class="list_wrap_theme_bottom">
						<li class="item" id="cont_item">
					
						<div class="list_wrap_theme_top">
							<h2>가족친화</h2>
						</div><!--End list_wrap_theme_top   -->
						<c:forEach var="rsdto" items="${map.listfam}">
			                	<div class="r_contbox">
				                    <div class="image"><img class="image" src="${rsdto.firstImageUrl}"></div>
				                    <div class="cont">
				                        <strong>${rsdto.facltNm}</strong>
				                        <p>${rsdto.addr1}</p>
				                        <c:if test="${empty rsdto.tel}">
					                        <p>등록된 전화 번호가 없습니다.</p>
				                        </c:if>
				                        <c:if test="${not empty rsdto.tel}">
					                        <p>${rsdto.tel}</p>
				                        </c:if>
				                        <p>${rsdto.lineIntro}</p>
				                        <a href="tSearch_view?contentId=${rsdto.contentId}">바로가기</a>
				                    </div>
			                	</div>
		                 </c:forEach>
		                 
		                 
						</li>
					</div><!-- End list_wrap_theme_bottom -->
				</div><!--End list_wrap_theme_main  -->
				
				<div class="list_wrap_theme_main">
					<div class="list_wrap_theme_bottom">
						<li class="item" id="cont_item">
					
						<div class="list_wrap_theme_top">
							<h2>일몰맛집</h2>
						</div><!--End list_wrap_theme_top   -->
						<c:forEach var="rsdto" items="${map.listsun}">
			                	<div class="r_contbox">
				                    <div class="image"><img class="image" src="${rsdto.firstImageUrl}"></div>
				                    <div class="cont">
				                        <strong>${rsdto.facltNm}</strong>
				                        <p>${rsdto.addr1}</p>
				                        <c:if test="${empty rsdto.tel}">
					                        <p>등록된 전화 번호가 없습니다.</p>
				                        </c:if>
				                        <c:if test="${not empty rsdto.tel}">
					                        <p>${rsdto.tel}</p>
				                        </c:if>
				                        <p>${rsdto.lineIntro}</p>
				                        <a href="tSearch_view?contentId=${rsdto.contentId}">바로가기</a>
				                    </div>
			                	</div>
			            
		                 </c:forEach>
						</li>
					</div><!-- End list_wrap_theme_bottom -->
				</div><!--End list_wrap_theme_main  -->
				
				

			</ul>
        </div><!-- End list_wrap -->
		</section>
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>