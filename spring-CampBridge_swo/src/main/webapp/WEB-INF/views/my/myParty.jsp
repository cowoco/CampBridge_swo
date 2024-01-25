<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지-마이파티</title>
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
		<link href="../assets/css/my/myParty.css" rel="stylesheet">
	    
	   
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	
		<section class="myParty">
		 <div class="allmyPostContainer">
	 	 <div class="myPostFeedContainer">
			<div class="myPartyTitlev">
				<h3>마이파티</h3>
			</div>
			<!-- 피드 전체 시작 -->
	 		<ul class="feedUlCont">
	 			<!-- 하나의 피드 시작 -->
	 			<li class="oneFeedv">
	 				<div class="imgContv">
		 		      <a href=""><img src="../assets/img/mypage/firev.png"></a>
	 				</div>
		 			<div class="postTextBoxv">
		 				<div class="wantParty">
		 					<p>파티참여</p>
		 				</div>
		 				<div class="wantParty2">
		 					<div class="lineTitv">
			 					<div class="partyTit">
			 						<strong> 필요했던 밤 - 불멍캠프</strong>
			 					</div>
			 					<div class="recruitv">
					 				<p>모집중</p>
					 			</div>
		 					</div>
		 					<div class="moim" >
				 				<div class="moimImg">
				 					<img src="../assets/img/mypage/groupUser.png">
				 				</div>
				 				<div class="moimText">
				 					<p>2/4<p>
				 				</div>
				 				<div class="moimPeriod">
				 					<p>참여기간 : 24.01.02~01.03<p>
				 				</div>
		 					</div><!--모집중  -->
			 			</div>
		 			</div>
	 			</li>
	 			<!-- 하나의 피드 끝 -->
	 			<!-- 하나의 피드 시작 -->
	 			<li class="oneFeedv">
	 				<div class="imgContv">
		 		      <a href=""><img src="../assets/img/mypage/valleyv.png"></a>
	 				</div>
		 			<div class="postTextBoxv">
		 				<div class="wantParty">
		 					<p>파티완료</p>
		 				</div>
		 				<div class="wantParty2">
		 					<div class="lineTitv">
			 					<div class="partyTit">
			 						<strong>계곡주변 캠핑장</strong>
			 					</div>
			 					<div class="recruitv">
					 				<p>모집중</p>
					 			</div>
		 					</div>
		 					<div class="moim" >
				 				<div class="moimImg">
				 					<img src="../assets/img/mypage/groupUser.png">
				 				</div>
				 				<div class="moimText">
				 					<p>3/4<p>
				 				</div>
				 				<div class="moimPeriod">
				 					<p>참여기간 : 23.08.25~08.26<p>
				 				</div>
		 					</div><!--모집중  -->
			 			</div>
		 			</div>
	 			</li>
	 			<!-- 하나의 피드 끝 -->
	 			<!-- 하나의 피드 시작 -->
	 			<li class="oneFeedv">
	 				<div class="imgContv">
		 		      <a href=""><img src="../assets/img/mypage/bbq.png"></a>
	 				</div>
		 			<div class="postTextBoxv">
		 				<div class="wantParty">
		 					<p>파티완료</p>
		 				</div>
		 				<div class="wantParty2">
		 					<div class="lineTitv">
			 					<div class="partyTit">
			 						<strong>황금주말 바베큐파티</strong>
			 					</div>
			 					<div class="recruitv">
					 				<p>모집완료</p>
					 			</div>
		 					</div>
		 					<div class="moim" >
				 				<div class="moimImg">
				 					<img src="../assets/img/mypage/groupUser.png">
				 				</div>
				 				<div class="moimText">
				 					<p>4/4</p>
				 				</div>
				 				<div class="moimPeriod">
				 					<p>참여기간 : 23.04.02~04.03<p>
				 				</div>
		 					</div><!--모집중  -->
			 			</div>
		 			</div>
	 			</li>
	 			<!-- 하나의 피드 끝 -->
	 			
	 		</ul>
	 		<!-- 피드 전체 끝 -->
	 	</div>
	 </div>
	 
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