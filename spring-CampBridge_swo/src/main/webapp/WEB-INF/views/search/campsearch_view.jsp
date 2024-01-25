<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑장 뷰</title>
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
		<link href="/assets/css/search/campsearch.css" rel="stylesheet">
	    
	    <style>
        
  		</style>
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	
	<section class="notice_search">
		
	<!-- 캠핑장 정보 -->
	<h1>캠핑장 정보</h1>
			    	
	<header class="camp_top_info">
	
		<!-- 이미지, 표 -->
		<div class="camp_info_box">
		<!-- 이미지 -->
		<div class="img_b">
			<img src="../assets/img/campsearch/sachon.jpg" alt="사천비토솔섬오토캠핑장 메인 이미지" />
		</div>
		<!-- 이미지 옆 표 -->
		<div class="cont_tb">
			<table class="table">
				<colgroup>
					<col style="width: 30%;" />
					<col style="width: 70%;" />
				</colgroup>
				<tbody>
					<tr>
						<th scope="col">주소</th>
						<td>경남 사천시 서포면 토끼로 245-29</td>
					</tr>
					<tr class="camp_call_pcVer">
						<th scope="col">문의처</th>
						<td>055-854-0404</td>
					</tr>
					<tr>
						<th scope="col">캠핑장 환경</th>
						<td>산, 숲 / 민간</td>
					</tr>
					<tr>
						<th scope="col">캠핑장 유형</th>
						<td>자동차야영장</td>
					</tr>
					<tr>
						<th scope="col">운영기간</th>
						<td>봄, 여름, 가을, 겨울</td>
					</tr>
					<tr>
						<th scope="col">운영일</th>
						<td>평일+주말</td>
					</tr>
					<tr>
						<th scope="col">홈페이지</th>
						<td><a href="http://cafe.daum.net/solsumcamping" target="_BLANK" title="새창열림"><strong>홈페이지 바로가기</strong></a>
						<i class="ico_link"><span class="skip">새창으로</span></i>
						</td>
					</tr>
					<tr>
						<th scope="col">주변이용가능시설</th>
						<td>산책로, 낚시, 강/물놀이, 청소년체험시설</td>
					</tr>
				</tbody>
			</table>
		</div>
		</div>
	</header>
					
	<div class="tabmenu_ti">
	    <input type="radio" name="tabmenu" id="tab01" checked>
	    <label for="tab01">캠핑장 소개</label>
	    <input type="radio" name="tabmenu" id="tab02">
	    <label for="tab02">이용안내</label>
	    <input type="radio" name="tabmenu" id="tab03">
	    <label for="tab03">위치/주변정보</label>
	    <input type="radio" name="tabmenu" id="tab04">
	    <label for="tab04">캠핑&여행후기</label>
	    <div class="conbox con1">
	    	<span>솔섬오토캠핑장은 별주부전 테마파크가 있는 사천시 비토섬 인근 해안에 위치하고 있는 캠핑장이다. 바닥은 파쇄석으로 되어 있으며, 바다 사이트와 일반 사이트로 구분되어져 있다. 황토방과 펜션도 함께 운영하고 있어 초보 캠퍼가 이용하기 좋은 캠핑장이다. 바다 사이트 쪽은 카라반과 트레일러의 입장이 안된다. 
				그늘막이 있는 수영장과 항상 깨끗하게 관리되고 있는 화장실과 개수대, 샤워장은 24시간 온수가 나와 좋으며, 개수대에는 전자레인지와 공용 냉장고가 설치되어 있어, 언제나 편리하게 신선한 음식을 먹을 수 있어 좋다. 
				캠핑장 바로 앞이 바닷가라 갯벌체험을 할 수 있도록 5000원에 장화와 호미를 대여해 주고 있다. 아이들과 갯벌에서의 바지락, 굴, 고동, 낚지 등을 잡아 저녁거리도 준비하고 수다로 한편의 추억을 쌓아보자. 솔섬오토캠핑장은 일몰이 아름답기로 소문난 곳이다.
				타이밍을 놓치지 말고 아름다운 노을을 감상하며 사진으로 담아보길 권한다. 주변 관광지로는 별주부전 테마파크,삼천포 케이블카, 사천 항공우주박물관, 삼천포 수산시장이 있으니 아이들과 방문해 보자.
			</span>
			<span class="date_info">최종 정보 수정일 : 2018-09-21</span>
	    </div>
	    <div class="conbox con2">안에 들어가는 내용으로 높이 자동 맞춤</div>
	    <div class="conbox con3">컨텐츠탭 내용03</div>
	    <div class="conbox con4">컨텐츠탭 내용04</div>
	</div>
								
	<h3 class="icon_h3">캠핑장 시설정보</h3>
		<div class="camp_item_g">
			<ul>
				<li><i class="ico_volt"><span>전기</span></i></li>
				<li><i class="ico_wifi"><span>와이파이</span></i></li>
				<li><i class="ico_wood"><span>장작판매</span></i></li>
				<li><i class="ico_hotwater"><span>온수</span></i></li>
				<li><i class="ico_pool"><span>물놀이장</span></i></li>
				<li><i class="ico_playzone"><span>놀이터</span></i></li>
				<li><i class="ico_ico_sports"><span>운동시설</span></i></li>
			</ul>
		</div>
		
	<h3 class="icon_h3">기타 주요시설</h3>
	<section id="table_type03">
		<div class="table_w">
			<table class="table_t4 camp_etc_tb">
				<tbody class="t_c">
					<tr>
						<th scope="col">주요시설</th>
						<td>
							<ul class="table_ul05">
								<li>자동차야영장사이트(30면)</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="col">기타 정보</th>
						<td>
							<ul class="table_ul05">
								<li>개인 트레일러 입장가능</li>
								<li>반려동물 동반 불가능</li>
							</ul>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp(※ 실제 결과는 현장사정 및 계절에 따라 달라질 수 있으니 캠핑장 사업주에 직접 확인 후 이용바랍니다.)
						</td>
					</tr>
					<tr>
						<th scope="col">기타 부대시설</th>
						<td>
							<ul class="table_ul05">
								<li>바다사이트쪽은 카라반,트레일러 입장금지</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="col">사이트 간격</th>
						<td>
							<ul class="table_ul05">
								<li>3M</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="col">바닥형태 (단위:면)</th>
						<td>
							<ul class="table_ul05">
								<li>파쇄석 (30)</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="col">사이트 크기</th>
						<td>
							<ul class="table_ul05">
								<li>9 X 8 : 30개</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="col">캠핑장비대여</th>
						<td>
							<ul class="table_ul05">
								<li>텐트</li>
								<li>릴선</li>
								<li>화로대</li>
								<li>난방기구</li>
								<li>식기</li>
								<li>침낭</li>
							</ul>
						</td>
					</tr>
					<tr>
						<th class="col">화로대</th>
						<td class="etc_type">개별</td>
					</tr>
					<tr>
						<th scope="col">안전시설현황</th>
						<td>
							<ul class="table_ul05">
								<li>소화기 (20)</li>
								<li>방화수 (1)</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<p class="camp_intro_txt">
		<span class="info_notice">
			&nbsp;* 고캠핑에 등록된 정보는 현장상황과 다소 다를 수 있으니 <span class="info_f_red">반려동물 동반 여부, 부가 시설물, 추가차량</span> 등 원활한 캠핑을 위해 꼭 필요한 사항은 해당 캠핑장에 미리 확인하시기 바랍니다.
		</span> 
		</p>
	</section>
</section>

		
	<!-- ======= Footer ======= -->
  	<%@include file="../include/footer.jsp" %>
 	<!-- End Footer -->
	</body>
</html>