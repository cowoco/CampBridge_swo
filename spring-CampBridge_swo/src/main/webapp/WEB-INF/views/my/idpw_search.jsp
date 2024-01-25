<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>아이디,비밀번호 찾기</title>
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
	    <link href="../assets/css/my/idpw_search.css" rel="stylesheet">
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	
	
	
	
			<section id="searchIP_container"> 
			<!-- contents -->
			<div id="searchIP_contents">
				<div id="searchIP_member">
					<div id="searchIP_title">
					<img src="../assets/img/idpwsearch.png">
					<h1>아이디/비밀번호 찾기</h1>
					</div>
					
					<div id ="idsearch">
					<h3>아이디 찾기</h3>
					<div class="searchIP_informbox">
						<div class="searchIP_inform">
							<ul>
								<li><input type="text" class="idsearch_name" name="idsearch_name" placeholder="이름"/></li>
								<li><input type="text" class="idsearch_email" name="idsearch_email" placeholder="이메일" /></li>
							</ul>

							<input type="button" class="btn searchIP_gbtn" name="searchIP_gbtn" value="아이디 찾기">
						</div><!-- searchIP_inform -->
					</div><!-- searchIP_informbox -->
					</div>

					<div id="pwsearch">
					<h3>비밀번호 찾기</h3>
					<div class="searchIP_informbox">
						<div class="searchIP_inform">
							<ul>
								<li><input type="text" class="pwsearch_id" name="pwsearch_id" placeholder="아이디"/></li>
								<li><input type="text" class="pwsearch_email" name="pwsearch_email" placeholder="이메일"/></li>
							</ul>

							<input type="button" class="btn searchIP_gbtn" name="searchIP_gbtn" value="비밀번호찾기">
						</div><!--searchIP_inform  -->
					</div><!-- searchIP_informbox -->
					</div>


				</div><!--searchIP_member -->
			</div><!--searchIP_contents  -->
			<!-- //contents -->


		</section>
	<!-- //container -->
		

	<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->

	</body>
</html>