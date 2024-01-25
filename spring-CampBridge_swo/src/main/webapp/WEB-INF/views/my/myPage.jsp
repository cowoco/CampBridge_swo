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
	    <link href="../assets/css/my/myPage.css" rel="stylesheet">
	
	    <!-- Template Main CSS File -->
	    <link href="../assets/css/main2.css" rel="stylesheet">
	    <link href="../assets/css/header.css" rel="stylesheet">
        
		<title>마이페이지</title>
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	<section>
		<div class="MF_all">
		<div class="titlePM">
			<h3>마이페이지</h3>
		</div>
		<div class="allCont">
			<div class="proF">
		     	<div class="photoPF">
		     		<img src="../assets/img/login/imgPF.png">
		     	</div>
		     	<div class="uerSetting">
					<div class="userPF">
						<p>스폰지밥 님</p>
					</div>
					<div class="setPF">
						<a href="myInfo" class="icon-link-sawtooth"><img src="../assets/img/login/mySetting.png" alt="나의 게시물"></a>
					</div>
		     	</div>
		    </div><!--proF -->
			 <div class="orderD">
			 	<div class="orderDHigh_top">
				 	<h3>주문/배송 조회</h3>
				 	<div class="myCartMF">
				 		<a href="myCart"><img src="../assets/img/mypage/mycart.png" alt="장바구니"><br><p>장바구니</p></a>
				 	</div>
			 	</div>
			 	<ul class="orderGrayBox">
			 		<li>
			 			<em>0</em>
			 			<span>주문접수</span>
			 		</li>
			 
			 		<li>
			 			<em>0</em>
			 			<span>결제완료</span>
			 		</li>
			 
			 		<li>
			 			<em>0</em>
			 			<span>배송준비중</span>
			 		</li>
			 
			 		<li>
			 			<em>0</em>
			 			<span>배송중</span>
			 		</li>
			 
			 		<li>
			 			<em>0</em>
			 			<span>배송완료</span>
			 		</li>
			 	</ul>
			    
			 </div>
		</div><!--allCont  -->
		<!-- allCont 끝  -->
		
		<div class="allCont2">
			<aside class="sideIcon">
				<h2></h2>
				<nav id="navIcon">
					<a href="myList"  class="icon-link"><img src="../assets/img/login/userME.png" alt="나의 게시물">
						<p>나의게시글<br>더보기</p>
					</a>
			
					<a href="myParty" class="icon-link"><img src="../assets/img/login/party.png" alt="마이파티">
						<p>마이파티<br>더보기</p>
					</a>
					<a href="myRental" class="icon-link"><img src="../assets/img/login/myRent.png" alt="나의 게시물">
						<p>용품 대여<br>더보기</p>
					</a>
				</nav>
			</aside>
			<div class="containMP">
				<div class="contMP"><strong>나의게시물</strong>
				<hr>
					<p>
					[팝니다] 씨투써밋 서모라이트 리액터 컴팩트 플러스 침낭 라이너<br>
					[캠핑 리뷰] 호수랑 오토캠핑장 사이트 간격도 넓고 조용하고 사장님도 친절하셔서 가족끼리 잘놀고 잘쉬다 갑니다. 비가와서 철수할때 힘든거만 빼고는 ㅎㅎ
					</p>
				</div>
				<div class="contMP"><strong>마이파티</strong><br>
				<hr>
					<p>
					[팝니다] 씨투써밋 서모라이트 리액터 컴팩트 플러스 침낭 라이너<br>
					[캠핑 리뷰] 호수랑 오토캠핑장 사이트 간격도 넓고 조용하고 사장님도 친절하셔서 가족끼리 잘놀고 잘쉬다 갑니다. 비가와서 철수할때 힘든거만 빼고는 ㅎㅎ
					</p>
				</div>
				<div class="contMP"><strong>용품대여</strong><br>
				<hr>
					<p>
					[파티 참여] 쉼이 필요했던 밤 - 불명캠프<br>
					[파티 개최] 양평 바베큐 파티 
					</p>
				</div>
				
				
			</div>
		</div>
		<!-- allCont2 끝  -->
		</div><!--MF_all  -->
		</section>
		  <!-- ======= Footer ======= -->
		  <%@include file="../include/footer.jsp" %>
		  <!-- End Footer -->
		
	</body>
</html>