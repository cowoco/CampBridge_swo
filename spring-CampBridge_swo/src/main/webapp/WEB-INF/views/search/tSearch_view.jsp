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
		<link href="/assets/css/search/tSearch_view.css" rel="stylesheet">
		<!-- javascript -->
		<script src="/assets/js/search/tSearch.js"></script>
		
	    
	    <style>
        	.ico_ico_sports span {letter-spacing: 1.5px;}
  		</style>
  		
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f6b278f5c975f9a60b956c6a7f757ebc"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);    
</script>
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
			<c:if test="${not empty map.tsdto.firstImageUrl}">
				<img  src="${map.tsdto.firstImageUrl}" alt="사천비토솔섬오토캠핑장 메인 이미지">
			</c:if>
			<c:if test="${empty map.tsdto.firstImageUrl}">
				<img  src="../assets/img/noPhoto_b.jpg" alt="사천비토솔섬오토캠핑장 메인 이미지">
			</c:if>
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
						<th scope="col">캠핑장명</th>
						<td>${map.tsdto.facltNm }</td>
					</tr>
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
						<td>${map.tsdto.lctCl}   ${map.tsdto.facltDivNm }</td>
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
					<c:if test="${not empty map.tsdto.posblFcltyCl}">
						<tr>
							<th scope="col">주변이용가능시설</th>
							<td>${map.tsdto.posblFcltyCl }
								<c:if test="${not empty map.tsdto.posblFcltyEtc}">
									/ ${map.tsdto.posblFcltyEtc}
								</c:if>
							</td>
						</tr>
					</c:if>
				</tbody>
			</table>
		</div>
		</div>
	</header>
					
	<div class="tabmenu_ti">
	    <input type="radio" name="tabmenu" id="tab01" checked>
	    <label for="tab01">캠핑장 소개</label>
	    <input type="radio" name="tabmenu" id="tab02">
	    <label for="tab02">위치/주변정보</label>

	    <div class="conbox con1">
	    	<span>
				<c:choose>
				    <c:when test="${not empty map.tsdto.intro and DBMS_LOB.GETLENGTH(map.tsdto.intro) > 0}">
				        ${map.tsdto.intro}
				    </c:when>
				    <c:otherwise>
				        <br>
				        등록된 소개글이 없습니다.
				        <br>
				        <br> 
				    </c:otherwise>
				</c:choose>
	    	</span>
			<span class="date_info">
				<c:if test="${not empty map.tsdto.modifiedtime}">
			    	최종 정보 수정일 : ${map.tsdto.modifiedtime }
				</c:if>	    	
			</span>
	    </div>
	    <div class="conbox con2">위치 및 주변 정보 <br> ${map.tsdto.tooltip} <br><br>주소 : ${map.tsdto.addr1 }
	    <br>
	     <div id="map" style="width:1080px;height:500px;position: relative;"></div></div>
	   
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
								<li>개인 트레일러  입장 (${map.tsdto.trlerAcmpnyAt  eq 'Y' ? '가능' : '불가능'  })</li>
								<li>개인 캠핑카  입장 (${map.tsdto.caravAcmpnyAt  eq 'Y' ? '가능' : '불가능'  })</li>
								<li>반려동물 동반 (${map.tsdto.animalCmgCl })</li>
							</ul>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp(※ 실제 결과는 현장사정 및 계절에 따라 달라질 수 있으니 캠핑장 사업주에 직접 확인 후 이용바랍니다.)
						</td>
					</tr>
					<c:if test="${not empty map.tsdto.sbrsEtc}">
						<tr>
							<th scope="col">기타 부대시설</th>
							<td>
								<ul class="table_ul05">
									<li>${map.tsdto.sbrsEtc}</li>
								</ul>
							</td>
						</tr>
					</c:if>
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
					
					<c:if test="${not empty map.tsdto.eqpmnLendCl }">
						<tr>
							<th scope="col">캠핑장비대여</th>
							<td>
								<ul class="table_ul05">
									<li>${map.tsdto.eqpmnLendCl }</li>
								</ul>
							</td>
						</tr>
					</c:if>
					<tr>
						<th class="col">화로대</th>
						<td class="etc_type">${map.tsdto.brazierCl }</td>
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