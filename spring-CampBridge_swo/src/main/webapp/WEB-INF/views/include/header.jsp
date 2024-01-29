<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Header</title>
	
	</head>
	<body>
	 <!-- ======= Header ======= -->
	  <header id="header" class="header fixed-top align-items-center">
	    <div id="nav" class="container align-items-center justify-content-between">
	    <div id="nav_top" class="nav_top d-flex">
	      <a href="/" class="logo align-items-center me-auto me-lg-0">
	        <!-- Uncomment the line below if you also wish to use an image logo -->
	        <!-- <img src="assets/img/logo.png" alt=""> -->
	        <h1>CampBridge<span>.</span></h1>
	      </a>
	      <div class="login d-flex">
	      <li><a href="/my/login">로그인</a></li>
	      <li><a href="/my/signUp">회원가입</a></li>
	      <li><a href="/community/nList">공지사항</a></li>
	      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
	      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
	      <a class="btn-book-a-table" href="/rent/cpRent">용품대여</a>
	      </div>
	    </div>
		  	
		<div id="nav_bottom" class="nav_bottom d-flex">
	      <nav id="navbar" class="navbar">
	        <ul>
	          <li class="dropdown"><a href="#">CampBridge 소개<i class="bi bi-chevron-down dropdown-indicator"></i></a>
		          <ul>
		              <li><a href="/aboutCB">CampBridge 소개</a></li>
		              <li><a href="/developers">손발을 do it! 소개</a></li>
		              <li><a href="/admin/adminPage">CampBridge 관리자</a></li>
		          </ul>
	          </li>
	          <li class="dropdown"><a href="#">캠핑장 검색</a>
	          	<ul>
		            <li><a href="/search/campsearch">캠핑장 검색</a></li>
		            <li><a href="/search/mapsearch">지도 검색</a></li>
		            <li><a href="/search/recommendsearch">campbridge 추천</a></li>
		        </ul>
	          </li>
	          <li><a href="/search/tSearch">테마검색</a></li>
	          <li class="dropdown"><a href="#"><span>커뮤니티</span></a>
	            <ul>
	              <li><a href="/community/pList">파티원모집</a></li>
		          <li><a href="/community/tList">캠핑꿀팁(Tip)</a></li>
	              <li><a href="/used/used">중고거래&캠핑장 양도</a></li>
	              <li><a href="/community/fList">자유게시판</a></li>
	            </ul>
	          </li>
	          <li class="dropdown"><a href="/review/review">리뷰</a>
		          <ul>
		              <li><a href="/review/siteReview">캠핑장 리뷰</a></li>
		              <li><a href="/review/equipReview">캠핑용품 리뷰</i></a></li>
		          </ul>
	          </li>
	          <li><a href="#contact">픽업장소</a></li>
	        </ul>
	      </nav><!-- .navbar -->
			<div id="search">
			<input name="input_search" type="text" class="input_search" placeholder="검색어를 입력하세요.">
			<input type="button" value="검색" class="button_search">
		  	</div>
		
	
	
	    </div>
	    </div>
	  </header><!-- End Header -->
	</body>
</html>