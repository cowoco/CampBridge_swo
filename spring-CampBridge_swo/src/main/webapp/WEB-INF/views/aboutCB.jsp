<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CampBridge_사이트 소개</title>
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
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@200&family=Rubik+Doodle+Shadow&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main2.css" rel="stylesheet">
  <link href="assets/css/header.css" rel="stylesheet">

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
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="hero d-flex align-items-center ">
    <div class="container">
      <div class="row justify-content-between gy-5">
        <div class="col-lg-5"><img src="assets/img/Camp+Bridge.png"
         style="width:1300px; height:700px;">
         </div>
          
          <h2 data-aos="fade-up"
          style="color: green; font-size:70px; font-weight:300; text-align:center;
          font-family: 'Rubik Doodle Shadow', system-ui;">
           <br>We make your camp greater !</h2>
          <br><br><br><br>
          <p data-aos="fade-up" data-aos-delay="100"
          style="font-size:18px; font-weight:700; text-align:center; font-family:'Noto Sans KR', sans-serif;">
          ‘초보’ 캠린이부터 ‘베테랑’ 캠달프까지, 아름다운 대한민국으로 떠나는 모든 캠퍼에게
          <br><br>
          단순 야영 이상의 풍성한 캠프경험을 선물하는 캠핑 커뮤니티 서비스
		  <br>	
          <div class="d-flex" data-aos="fade-up" data-aos-delay="200"
           style="font-size:55px; font-weight:300; text-align:center; font-family:'Noto Sans KR', sans-serif;">
            <a href="/developers" class="btn-book-a-table"> 　　　　　Meet Us　　　　</a>
            <a href="https://www.youtube.com/watch?v=LXb3EKWsInQ" class="glightbox btn-watch-video d-flex align-items-center"
             style="font-size:55px; font-weight:300; text-align:center; font-family:'Noto Sans KR', sans-serif;">
            <i class="bi bi-play-circle"><br><br></i><span> Watch Video<br><br></span></a>
          </div>
            
          <div class="campsite" style="padding:300 0;">
          <img src ="assets/img/campsite.jpg" style="width:1300px; height:700px;">	
			<br>
			<br>
			<br>
          <h1 data-aos="fade-up" data-aos-delay="300"
           style="font-size:30px; font-weight:300; text-align:center; font-family:'Noto Sans KR', sans-serif;">
		   <br><br>　　
		   어디로 떠나야 할 지 모르겠다면, 잠깐 캠브릿지를 떠올려주세요.<br><br>
		　　저희의 발견이 마음에 드실 거예요.<br><br>
		　　다채로운 밤과 평온한 아침을 누릴 가장 알맞은 곳으로 안내해드리겠습니다.
		  </h1>
         </p>
         </div>
        </div>
      </div><!--container-->
       
    </div>
  </section><!-- End Hero Section -->
	<br>
	<br>
  

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