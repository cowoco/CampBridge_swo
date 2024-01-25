<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑꿀팁(Tip) 게시판</title>
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
		<link href="../assets/css/commuinty/listStyle.css" rel="stylesheet">
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	
		<section class="notice">
			<!-- 꿀팁게시판 리스트 -->
	    	<h1 style="margin: 10px; font-weight: 700; position: relative; top: 40px; left: -550px; ">캠핑꿀팁(Tip)</h1>
		    <!-- 검색창 -->
		    <div class="searchDiv">
			  <form action="" method="get" name="searchFrm">
			    <select name="searchTitle" id="searchTitle" class="searchTitle">
			       <option value="all">전체</option>
			       <option value="btitle">제목</option>
			       <option value="bcontent">내용</option>
			       <option value="id">작성자</option>
			    </select>
			    	<input type="text" name="searchWord" id="searchWord" class="searchWord" placeholder=" 검색어를 입력해주세요.">
			    	<button type="button" onclick="searchBtn()" id="searchBtn" class="searchBtn">검색</button>
			  </form>
			</div>
			<table>
		  		<div class="page-title">
			      <colgroup>
			        <col width="10%">
			        <col width="55%">
			        <col width="15%">
			        <col width="10%">
			        <col width="10%">
			      </colgroup>
			      <tr>
			        <th>No.</th>
			        <th>제목</th>
			        <th>작성자</th>
			        <th>작성일</th>
			        <th>조회수</th>
			      </tr>
			      <tr>
			        <td id="No">1</td>
			        <td class="table-title"><a href="tView">게시글 내용이 들어갑니다.</a></td>
			        <td>관리자</td>
			        <td>2024-12-31</td>
			        <td>111</td>
			      </tr>
			      <tr>
			        <td id="No">2</td>
			        <td class="table-title">게시글 내용이 들어갑니다.</td>
			        <td>관리자</td>
			        <td>2024-12-31</td>
			        <td>111</td>
			      </tr>
			      <tr>
			        <td id="No">3</td>
			        <td class="table-title">게시글 내용이 들어갑니다.</td>
			        <td>관리자</td>
			        <td>2024-12-31</td>
			        <td>111</td>
			      </tr>
			      <tr>
			        <td id="No">4</td>
			        <td class="table-title">게시글 내용이 들어갑니다.</td>
			        <td>관리자</td>
			        <td>2024-12-31</td>
			        <td>111</td>
			      </tr>
			      <tr>
			        <td id="No">5</td>
			        <td class="table-title">게시글 내용이 들어갑니다.</td>
			        <td>관리자</td>
			        <td>2024-12-31</td>
			        <td>111</td>
			      </tr>
			      <tr>
			        <td id="No">6</td>
			        <td class="table-title">게시글 내용이 들어갑니다.</td>
			        <td>관리자</td>
			        <td>2024-12-31</td>
			        <td>111</td>
			      </tr>
			      <tr>
			        <td id="No">7</td>
			        <td class="table-title">게시글 내용이 들어갑니다.</td>
			        <td>관리자</td>
			        <td>2024-12-31</td>
			        <td>111</td>
			      </tr>
			      <tr>
			        <td id="No">8</td>
			        <td class="table-title">게시글 내용이 들어갑니다.</td>
			        <td>관리자</td>
			        <td>2024-12-31</td>
			        <td>111</td>
			      </tr>
			      <tr>
			        <td id="No">9</td>
			        <td class="table-title">게시글 내용이 들어갑니다.</td>
			        <td>관리자</td>
			        <td>2024-12-31</td>
			        <td>111</td>
			      </tr>
			      <tr>
			        <td id="No">10</td>
			        <td class="table-title">게시글 내용이 들어갑니다.</td>
			        <td>관리자</td>
			        <td>2024-12-31</td>
			        <td>111</td>
			      </tr>
		  		</div>
		    </table>
			 	<a href="tWrite"><button class="write">글쓰기</button></a>
  			 	<button class="write" onclick="location.href='/'">메인홈</button>
	    	
	    	<!-- 하단넘버링 시작 -->
		     <ul class="page-num">
			      <li class="first"></li>
			      <li class="prev"></li>
			      <li class="num">1</li>
			      <li class="num">2</li>
			      <li class="num">3</li>
			      <li class="num">4</li>
			      <li class="num">5</li>
			      <li class="num">6</li>
			      <li class="num">7</li>
			      <li class="num">8</li>
			      <li class="num">9</li>
			      <li class="num">10</li>
			      <li class="next"></li>
			      <li class="last"></li>
   			 </ul>
   			 <!-- 하단넘버링 끝 -->
		</section>
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>