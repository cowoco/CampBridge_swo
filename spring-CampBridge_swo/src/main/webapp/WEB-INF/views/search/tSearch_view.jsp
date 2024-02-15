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
        	.ico_ico_sports span {letter-spacing: 1.5px;}
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
			<img  src="${map.tsdto.firstImageUrl}" alt="사천비토솔섬오토캠핑장 메인 이미지">
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
						<td>${map.tsdto.addr1 }</td>
					</tr>
					<c:if test="${not empty map.tsdto.tel}">
						<tr class="camp_call_pcVer">
							<th scope="col">문의처</th>
							<td>${map.tsdto.tel }</td>
						</tr>
					</c:if>
					<tr>
						<th scope="col">캠핑장 환경</th>
						<td>${map.tsdto.lctCl} / ${map.tsdto.facltDivNm }</td>
					</tr>
					<tr>
						<th scope="col">캠핑장 유형</th>
						<td>${map.tsdto.induty }</td>
					</tr>
					<c:if test="${not empty map.tsdto.operPdCl}">
						<tr>
							<th scope="col">운영기간</th>
							<td>${map.tsdto.operPdCl }</td>
						</tr>
					</c:if>
					<c:if test="${not empty map.tsdto.operDeCl}">					
						<tr>
							<th scope="col">운영일</th>
							<td>${map.tsdto.operDeCl }</td>
						</tr>
					</c:if>	
					<c:if test="${not empty map.tsdto.homepage}">
						<tr>
							<th scope="col">홈페이지</th>
							<td><a href="${map.tsdto.homepage}" target="_BLANK" title="새창열림"><strong>${map.tsdto.homepage}</strong></a>
							<i class="ico_link"><span class="skip"></span></i>
							</td>
						</tr>
					</c:if>
					<tr>
						<th scope="col">주변이용가능시설</th>
						<td>${map.tsdto.posblFcltyCl }
							<c:if test="${not empty map.tsdto.posblFcltyEtc}">
								/ ${map.tsdto.posblFcltyEtc}
							</c:if>
						</td>
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
	    	<span>
				<c:if test="${not empty map.tsdto.intro}">
			    	${map.tsdto.intro}
				</c:if>	    	
				<c:if test="${empty map.tsdto.intro}">
					<br>
					등록된 소개가 없습니다.
					<br>
					<br>	
				</c:if>	    	
	    	</span>
			<span class="date_info">
				<c:if test="${not empty map.tsdto.modifiedtime}">
			    	최종 정보 수정일 : ${map.tsdto.modifiedtime }
				</c:if>	    	
			</span>
	    </div>
	    <div class="conbox con2">안에 들어가는 내용으로 높이 자동 맞춤</div>
	    <div class="conbox con3">컨텐츠탭 내용03</div>
	    <div class="conbox con4">컨텐츠탭 내용04</div>
	</div>
								
	<h3 class="icon_h3">캠핑장 시설정보</h3>
		<div class="camp_item_g">
			<ul>
				
				<li><i class="ico_ico_sports"><span>${map.tsdto.sbrsCl }</span></i></li>
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
								<li>${map.tsdto.induty }
									<c:if test="${map.tsdto.gnrlSiteCo ne null && map.tsdto.gnrlSiteCo ne 0}">
   										 (${map.tsdto.gnrlSiteCo})
									</c:if>
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="col">기타 정보</th>
						<td>
							<ul class="table_ul05">
								<li>개인 트레일러  입장 ${map.tsdto.trlerAcmpnyAt  eq 'Y' ? '가능' : '불가능'  }</li>
								<li>반려동물 동반 ${map.tsdto.animalCmgCl }</li>
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
								<li>${map.tsdto.sitedStnc }</li>
								
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="col">바닥형태 (단위:면)</th>
						<td>
							<ul class="table_ul05">
								<li>잔디 (${map.tsdto.siteBottomCl1})</li>
								<li>파쇄석 (${map.tsdto.siteBottomCl2})</li>
								<li>테크  (${map.tsdto.siteBottomCl3})</li>
								<li>자갈  (${map.tsdto.siteBottomCl4})</li>
								<li>맨흙  (${map.tsdto.siteBottomCl5})</li>
							
							</ul>
						</td>
					</tr>
					<tr>
						<th scope="col">사이트 크기</th>
						<td>
							<ul class="table_ul05">
								<li>${map.tsdto.siteMg1Width } X ${map.tsdto.siteMg1Vrticl } : 30개</li>
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
						<td class="etc_type">${map.tsdto.brazierCl }</td>
					</tr>
					<tr>
						<th scope="col">안전시설현황</th>
						<td>
							<ul class="table_ul05">
								<li>소화기 (${map.tsdto.extshrCo} )</li>
								<li>방화수 (1)</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<p class="camp_intro_txt">
		<span class="info_notice">
			&nbsp;* 고캠핑에 등록된 정보는 현장상황과 다소 다를 수 있으니 <span class="info_f_red">반려동물 동반 여부, 부가 시설물, 추가차량</span> 등 원활한 캠핑을 위해 꼭 필요한 사항은 해당 캠핑장에 <br>미리 확인하시기 바랍니다.
		</span> 
		</p>
	</section>
</section>

		
	<!-- ======= Footer ======= -->
  	<%@include file="../include/footer.jsp" %>
 	<!-- End Footer -->
	</body>
</html>