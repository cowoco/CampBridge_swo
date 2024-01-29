<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파티원 모집</title>
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
			<!-- 공지사항 리스트 -->
	    	<h1 style="margin: 10px; font-weight: 700; position: relative; top: 70px; left: -560px; ">파티원 모집</h1>
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
			        <col width="10%">
			        <col width="30%">
			        <col width="10%">
			        <col width="10%">
			        <col width="10%">
			        <col width="10%">
			        <col width="10%">
			      </colgroup>
			      <tr>
			        <th>No.</th>
			        <th>캠핑유형</th>
			        <th>제목</th>
			        <th>작성자</th>
			        <th>지역</th>
			        <th>모집인원</th>
			        <th>작성일</th>
			        <th>모집상태</th>
			      </tr>
			      <tr>
			        <td id="No">1</td>
			        <td>오토캠핑</td>
			        <td class="table-title"><a href="pView">게시글 내용이 들어갑니다.</a></td>
			        <td>캠브릿지</td>
			        <td>양평</td>
			        <td>1/5</td>
			        <td>2024-12-31</td>
			        <td>모집중</td>
			      </tr>
			      <tr>
			        <td id="No">2</td>
			        <td>오토캠핑</td>
			        <td class="table-title"><a href="pView">게시글 내용이 들어갑니다.</a></td>
			        <td>송승민</td>
			        <td>서울</td>
			        <td>1/5</td>
			        <td>2024-12-31</td>
			        <td>모집중</td>
			      </tr>
			      <tr>
			        <td id="No">3</td>
			        <td>오토캠핑</td>
			        <td class="table-title"><a href="pView">게시글 내용이 들어갑니다.</a></td>
			        <td>조민진</td>
			        <td>천안</td>
			        <td>1/5</td>
			        <td>2024-12-31</td>
			        <td>모집중</td>
			      </tr>
			      <tr>
			        <td id="No">4</td>
			        <td>오토캠핑</td>
			        <td class="table-title"><a href="pView">게시글 내용이 들어갑니다.</a></td>
			        <td>정보람</td>
			        <td>서천</td>
			        <td>1/5</td>
			        <td>2024-12-31</td>
			        <td>모집중</td>
			      </tr>
			      <tr>
			        <td id="No">5</td>
			        <td>오토캠핑</td>
			        <td class="table-title"><a href="pView">게시글 내용이 들어갑니다.</a></td>
			        <td>최창윤</td>
			        <td>서울</td>
			        <td>1/5</td>
			        <td>2024-12-31</td>
			        <td>모집중</td>
			      </tr>
			      <tr>
			        <td id=오토캠핑>6</td>
			        <td>박은경</td>
			        <td class="table-title"><a href="pView">게시글 내용이 들어갑니다.</a></td>
			        <td>박은경</td>
			        <td>광명</td>
			        <td>1/5</td>
			        <td>2024-12-31</td>
			        <td>모집중</td>
			      </tr>
			      <tr>
			        <td id="No">7</td>
			        <td>오토캠핑</td>
			        <td class="table-title"><a href="pView">게시글 내용이 들어갑니다.</a></td>
			        <td>박현수</td>
			        <td>광주</td>
			        <td>1/5</td>
			        <td>2024-12-31</td>
			        <td>모집중</td>
			      </tr>
			      <tr>
			        <td id="No">8</td>
			        <td>오토캠핑</td>
			        <td class="table-title"><a href="pView">게시글 내용이 들어갑니다.</a></td>
			        <td>김승우</td>
			        <td>광주</td>
			        <td>1/5</td>
			        <td>2024-12-31</td>
			        <td>모집중</td>
			      </tr>
			      <tr>
			        <td id="No">9</td>
			        <td>오토캠핑</td>
			        <td class="table-title"><a href="pView">게시글 내용이 들어갑니다.</a></td>
			        <td>지피티</td>
			        <td>양평</td>
			        <td>1/5</td>
			        <td>2024-12-31</td>
			        <td>모집중</td>
			      </tr>
			      <tr>
			        <td id="No">10</td>
			        <td>오토캠핑</td>
			        <td class="table-title"><a href="pView">게시글 내용이 들어갑니다.</a></td>
			        <td>손발을</td>
			        <td>양평</td>
			        <td>1/5</td>
			        <td>2024-12-31</td>
			        <td>모집중</td>
			      </tr>
		  		</div>
		    </table>
			 	<a href="pWrite"><button class="write">글쓰기</button></a>
  			 	<button class="write" onclick="location.href='/'">메인홈</button>
	    	
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
		</section>
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>