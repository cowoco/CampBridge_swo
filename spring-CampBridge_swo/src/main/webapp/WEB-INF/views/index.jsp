<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CampBridge_메인 페이지</title>
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Swiper -->
	<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
	<link href="assets/css/main_swiper1.css" rel="stylesheet">
	<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
  
  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main2.css" rel="stylesheet">
  <link href="assets/css/header.css" rel="stylesheet">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	0c74f5d01be449a3dcaa336db1cd0d99"></script>
  <!-- =======================================================
  * Template Name: Yummy
  * Updated: Jan 09 2024 with Bootstrap v5.3.2
  * Template URL: https://bootstrapmade.com/yummy-bootstrap-restaurant-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
<!-- ======= Header ======= -->
<%@include file="include/header.jsp" %>
<!-- End Header -->

  <main id="main">

  
      <!-- ======= 추천 캠핑 Section (Events Section) ======= -->
    <section id="events" class="events">
   	 <h2>김승우 구현목록</h2>
		  <ul>
		    <li><a href="commuinty/tList">글목록 리스트-꿀팁게시판</a></li>
		    <li><a href="login">로그인</a></li>
		    <li><a href="join">회원가입</a></li>
		    <li><a href="logout">로그아웃</a></li>
		    <li>회원정보수정</li>
		    <li><a href="memberAll">전체회원보기</a></li>
		  </ul>
      <div class="container-fluid" data-aos="fade-up">

        <div class="section-header">
       	 <h2>Recommend</h2>
          <p><span>CampBridge</span> 와 여행가자<i class="fa-solid fa-exclamation"></i>   <i class="fa-solid fa-trailer"></i></p>
        </div>
        <div class="slides-3 swiper" data-aos="fade-up" data-aos-delay="100">
        <div id="search_go_top">
        <p class="search_go"><a href="#">더보기</a></p>  
        </div>
          <div class="swiper-wrapper">

            <div class="swiper-slide event-item d-flex flex-column justify-content-end" style="background-image: url(assets/img/main/events-1.jpg)">
              <h3>(주)아웃오브파크</h3>
              <div class="price align-self-start">강원도</div>
              <p class="description">
             이국적인 캐러밴과 알찬 부대시설
              </p>
            </div><!-- End Event item -->

            <div class="swiper-slide event-item d-flex flex-column justify-content-end" style="background-image: url(assets/img/main/events-2.jpg)">
              <h3>동강전망휴양림오토캠핑장</h3>
              <div class="price align-self-start">강원도</div>
              <p class="description">
              운해와 야경이 일품인 휴양림 속 야영장
              </p>
            </div><!-- End Event item -->

            <div class="swiper-slide event-item d-flex flex-column justify-content-end" style="background-image: url(assets/img/main/events-3.jpg)">
              <h3>충주카누캠핑장</h3>
              <div class="price align-self-start">충청북도</div>
              <p class="description">
               아름다운 충주호가 눈앞에 펼쳐지는 오토캠핑장
              </p>
            </div><!-- End Event item -->

          </div>
          <div class="swiper-pagination"></div>
          
        </div>

      </div>
    </section><!-- End 추천캠핑 Section -->
   
  
 <!-- ======= review Section(Swiper) ======= -->
		 <div class="section-header">
       	 <h2>Review</h2>
          <p><span>CampBridge</span> 리뷰 <i class="fa-solid fa-magnifying-glass"></i></p>
        </div>
        
  	<section class="review_all">
		<div class="swiper mySwiper container">
			<div class="swiper-wrapper content1">
				<!--  카드형 반복 -->
				<div class="swiper-slide card1"> 
					<div class="box1"></div>
					<div class="card-content">
						<div class="image"> 
						<img src="/assets/img/main/review_img01.jpg" alt="" >
						</div>
					</div>
					<div class="name_profession">
						<span class="main_name">리뷰제목</span>
						<span class="main_profession">작성자</span>
					</div>
					<div class="main_rating">
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
					</div>
					<div class="main_about">
						<p>여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!</p>
					</div>
					<div class="button b1">
						<button class="review_moredetail">더보기</button>
					</div>
				</div>
				<!-- 반복 끝 -->
				
				<div class="swiper-slide card1">
					<div class="box1"></div>
					<div class="card-content">
						<div class="image">
						<img src="/assets/img/main/review_img02.jpg" alt="" >
						</div>
					</div>
					<div class="name_profession">
						<span class="main_name">리뷰제목</span>
						<span class="main_profession">작성자</span>
					</div>
					<div class="main_rating">
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
					</div>
					<div class="main_about">
						<p>여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!</p>
					</div>
					<div class="button b1">
						<button class="review_moredetail">더보기</button>
					</div>
				</div>
				
				
				<div class="swiper-slide card1">
					<div class="box1"></div>
					<div class="card-content">
						<div class="image">
						<img src="/assets/img/main/review_img03.jpg" alt="" >
						</div>
					</div>
					<div class="name_profession">
						<span class="main_name">리뷰제목</span>
						<span class="main_profession">작성자</span>
					</div>
					<div class="main_rating">
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
					</div>
					<div class="main_about">
						<p>여기는 너무 좋고 좋아서 좋지만 좋으니 사랑해서 다시 사랑할 때!</p>
					</div>
					<div class="button b1">
						<button class="review_moredetail">더보기</button>
					</div>
				</div>
				
				<div class="swiper-slide card1">
					<div class="box1"></div>
					<div class="card-content">
						<div class="image">
						<img src="/assets/img/main/review_img04.jpg" alt="" >
						</div>
					</div>
					<div class="name_profession">
						<span class="main_name">리뷰제목</span>
						<span class="main_profession">작성자</span>
					</div>
					<div class="main_rating">
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-regular fa-star"></i>
						<i class="fa-regular fa-star"></i>
					</div>
					<div class="main_about">
						<p>졸려서 졸립고 졸립다</p>
					</div>
					<div class="button b1">
						<button class="review_moredetail">더보기</button>
					</div>
				</div>
				<div class="swiper-slide card1">
					<div class="box1"></div>
					<div class="card-content">
						<div class="image">
						<img src="/assets/img/main/review_img05.jpg" alt="" >
						</div>
					</div>
					<div class="name_profession">
						<span class="main_name">리뷰제목</span>
						<span class="main_profession">작성자</span>
					</div>
					<div class="main_rating">
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-solid fa-star"></i>
						<i class="fa-regular fa-star"></i>
					</div>
					<div class="main_about">
						<p>여기가 좋으니깐 좋다고 이야기를 하죠!</p>
					</div>
					<div class="button b1">
						<button class="review_moredetail">더보기</button>
					</div>
				</div>
				
			</div>
		</div>
		<div class="swiper-button-next"></div>
		<div class="swiper-button-prev"></div>
		<div class="swiper-pagination"></div>
	</section><!-- End Review section  -->

  <!-- 날씨 Section -->
      <section id="hero1">
  		<div class="section-header">
          <h2>Weather</h2>
          <p><i class="fa-solid fa-sun"></i><span> CampBridge</span> 날씨 </p>
        </div>
		<div id="weather_bg"><div id="id47f855e105530" a='{"t":"r","v":"1.2","lang":"ko","locs":[295],"ssot":"c","sics":"ds","cbkg":"rgb(69,90,100)","cfnt":"#FFFFFF","codd":"rgb(84,110,122)","cont":"#E0E0E0"}'>날씨 데이터 소스: <a href="https://sharpweather.com/weather_south_korea/30_days/">weather South Korea 30 days</a></div>
        </div>
		<script async src="https://static1.sharpweather.com/widgetjs/?id=id47f855e105530"></script>
  </section><!-- End hero1 Section -->
    <!-- End 날씨 Section -->




    <!-- ======= Rent Section(Menu Section) ======= -->
    <section id="menu" class="menu">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>RENT</h2>
          <p><span> CampBridge   </span><i class="fa-solid fa-tents"></i>대여해드려요 <span id="rent_more"><a href="#">더보기</a></span></p>
        </div>

        <ul class="nav nav-tabs d-flex justify-content-center" data-aos="fade-up" data-aos-delay="200">

          <li class="nav-item">
            <a class="nav-link active show" data-bs-toggle="tab" data-bs-target="#menu-starters">
              <h4>침구</h4>
            </a>
          </li><!-- End tab nav item -->

          <li class="nav-item">
            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#menu-breakfast">
              <h4>가구</h4>
            </a><!-- End tab nav item -->

          <li class="nav-item">
            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#menu-lunch">
              <h4>식기</h4>
            </a>
          </li><!-- End tab nav item -->

          <li class="nav-item">
            <a class="nav-link" data-bs-toggle="tab" data-bs-target="#menu-dinner">
              <h4>기타</h4>
            </a>
          </li><!-- End tab nav item -->

        </ul>

        <div class="tab-content" data-aos="fade-up" data-aos-delay="300">

          <div class="tab-pane fade active show" id="menu-starters">

            <div class="tab-header text-center">
              <p>BEDDING</p>
              <h3>침구</h3>
            </div>

            <div class="row gy-5">

              <div class="col-lg-4 menu-item">
                <a href="assets/img/main/bedding1.jpg"  class="glightbox"><img src="assets/img/main/bedding1.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>침낭</h4>
                <p class="price">
                 1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="assets/img/main/bedding2.jpg"  class="glightbox"><img src="assets/img/main/bedding2.jpg"class="menu-img img-fluid" alt=""></a>
                <h4>발포매트</h4>
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="assets/img/main/bedding3.jpg"  class="glightbox"><img src="assets/img/main/bedding3.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>전기장판</h4>
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="assets/img/main/bedding4.jpg"  class="glightbox"><img src="assets/img/main/bedding4.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>베개</h4>
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->
            </div>
          </div><!-- End Starter Menu Content -->

          <div class="tab-pane fade" id="menu-breakfast">

            <div class="tab-header text-center">
              <p>FURNITURE</p>
              <h3>가구</h3>
            </div>

            <div class="row gy-5">

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/funiture1.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>의자</h4>
               
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/funiture2.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>테이블</h4>
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/funiture3.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>야전침대</h4>
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

            </div>
          </div><!-- End Breakfast Menu Content -->

          <div class="tab-pane fade" id="menu-lunch">

            <div class="tab-header text-center">
              <p>TABLEWARE</p>
              <h3>식기</h3>
            </div>

            <div class="row gy-5">

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/tableware1.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>코펠2인</h4>
                <p class="price">
                 1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/tableware2.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>코펠4인</h4>
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/tableware3.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>아이스박스28L</h4>
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/tableware4.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>아이스박스40L</h4>
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

            
            </div>
          </div><!-- End Lunch Menu Content -->

          <div class="tab-pane fade" id="menu-dinner">

            <div class="tab-header text-center">
              <p>OHTER</p>
              <h3>기타</h3>
            </div>

            <div class="row gy-5">

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/other1.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>타프</h4>
            
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/other2.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>버너</h4>
           
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/other3.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>랜턴</h4>
          
                <p class="price">
                 1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/other4.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>화로대</h4>
           
                <p class="price">
                 1,000원
                </p>
              </div><!-- Menu Item -->

              <div class="col-lg-4 menu-item">
                <a href="#"><img src="assets/img/main/other5.jpg" class="menu-img img-fluid" alt=""></a>
                <h4>전기릴선</h4>
          
                <p class="price">
                  1,000원
                </p>
              </div><!-- Menu Item -->

            </div>
          </div><!-- End Dinner Menu Content -->

        </div>

      </div>
    </section><!-- End Rent Section -->

        <div class="section-header">
          <h2>NOTICE</h2>
          <p><i class="fa-solid fa-bullhorn"></i><span>  CampBridge</span>가 알려드려요.</p>
        </div>
    <!-- ======= Notice(캠핑꿀팁, 자유게시판, 공지사항) (Testimonials Section) ======= -->
    <section id="testimonials" class="testimonials section-bg">
      <div class="container" data-aos="fade-up">
      
	      <div class="main-visual-news-section first">
	      	
	      	<h3 class="main-visual-news-title notice">캠핑꿀팁(Tip)</h3>
	        <div class="main-visual-news-txt">
	          <ul class="main-list">
	          
	          	<li class="main-list-item">
	          	   <a href="#">2024 스카이트랙스 최고공항상 투표에 참여해주세요!</a>
	            </li>
	            
	          	<li class="main-list-item">
	          	  <a href="#">대중교통 프로모션 #1. 어린이와 청소년은 공항버스 무료</a>
	            </li>
	            
	          	<li class="main-list-item">
	          	   <a href="#">주차장 혼잡 안내</a>
	            </li>
	            
	          	<li class="main-list-item">
	          	   <a href="#"> 국가유공자 우선주차구역 운영개시 알림 및 협조요청</a>
	            </li>
	          </ul>
	          <a href="#" class="more-link-plus">더보기</a>
	        </div>
	      </div><!-- End main-visual-news-section first -->
	
	      <div class="main-visual-news-section middle">
	        
	        <h3 class="main-visual-news-title press">자유게시판</h3>
	        <div class="main-visual-news-txt">
	          <ul class="main-list">
	            
	          	<li class="main-list-item">
	              <a href="#">만 4년만에 일일 여객 20만명 돌파!!</a>
	            </li>
	            
	          	<li class="main-list-item">
	          	  <a href="#">2024년도신년인사회 개최</a>
	            </li>
	            
	          	<li class="main-list-item">
	              <a href="#">‘2023년 고용노동행정 유공포상’ 지역산업고용정책분야 고용노동부 장관상 수상 !</a>
	            </li>
	            
	          	<li class="main-list-item">
	          	  <a href="#">인천공항 제2공항물류단지에 글로벌 배송센터(GDC) 신규 유치 !!!</a>
	            </li>
	          </ul>
	          <a href="#" class="more-link-plus">더보기</a>
	        </div>
	      </div><!-- End main-visual-news-section middle -->
	
	      <div class="main-visual-news-section last">
	      	<h3 class="main-visual-news-title notice">공지사항</h3>
	        <div class="main-visual-news-txt">
	          <ul class="main-list">
	          
	          	<li class="main-list-item">
	          	   <a href="#">2024 스카이트랙스 최고공항상 투표에 참여해주세요!</a>
	            </li>
	            
	          	<li class="main-list-item">
	          	  <a href="#">대중교통 프로모션 #1. 어린이와 청소년은 공항버스 무료</a>
	            </li>
	            
	          	<li class="main-list-item">
	          	   <a href="#">주차장 혼잡 안내</a>
	            </li>
	            
	          	<li class="main-list-item">
	          	   <a href="#"> 국가유공자 우선주차구역 운영개시 알림 및 협조요청</a>
	            </li>
	          </ul>
	          <a href="#" class="more-link-plus">더보기</a>
	      </div><!-- End main-visual-news-section last -->

      </div>
     </div> 
    </section><!-- End Testimonials Section -->




    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-header">
          <h2>Contact</h2>
          <p><span> CampBridge </span>Contact <i class="fa-solid fa-phone-flip"></i></p>
        </div>
	
        <div id="map" style="width:100%; height:350px;"></div>
      
      
		 <!-- 카카오지도 위치  -->
      <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0c74f5d01be449a3dcaa336db1cd0d99"></script>
        <script>
      		  var mapContainer = document.getElementById('map'),
        		 mapOption = {
      			 center: new kakao.maps.LatLng(37.48549, 126.8982),
        				level:3
      		  };
      		var map = new kakao.maps.Map(mapContainer, mapOption); 
      		var markerPosition  = new kakao.maps.LatLng(37.48549, 126.8982); 
      		var marker = new kakao.maps.Marker({
      		    position: markerPosition
      		});
      		marker.setMap(map);
        </script>
			  

        <div class="row gy-4">

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="icon bi bi-map flex-shrink-0"></i>
              <div class="contact_details">
                <h3>회사주소</h3>
                <p>08378 서울 구로구 디지털로34길 27<br> (구로동) 1106-7호 한국직업전문학교<br><strong>[항공 5기] 손발이 Do it팀</strong></p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item d-flex align-items-center">
              <i class="icon bi bi-envelope flex-shrink-0"></i>
              <div class="contact_details">
                <h3>Email(이메일)</h3>
                <p>campBridge@example.com</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="icon bi bi-telephone flex-shrink-0"></i>
              <div class="contact_details">
                <h3>연락처</h3>
                <p>02)7777-7777</p>
              </div>
            </div>
          </div><!-- End Info Item -->

          <div class="col-md-6">
            <div class="info-item  d-flex align-items-center">
              <i class="icon bi bi-share flex-shrink-0"></i>
              <div class="contact_details">
                <h3>서비스 상담</h3>
                <div>월(Mon)-금(Fri) : <strong>10AM - 18PM</strong><br>
                  주말(Weekend) : <strong>자동음성 안내</strong>
                </div>
              </div>
            </div>
          </div><!-- End Info Item -->

        </div>


      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->




  <!-- ======= Footer ======= -->
  <%@include file="include/footer.jsp" %>
  <!-- End Footer -->

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>