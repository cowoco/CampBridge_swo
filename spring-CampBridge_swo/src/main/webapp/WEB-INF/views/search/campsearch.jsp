<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑장 검색</title>
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
		   
		<!-- 캠핑장 검색 -->
		<img src="../assets/img/campsearch/camping.png">
		<h1>캠핑장 검색</h1>
		    	
			<!-- 체크박스 -->
			<li>
				<div class="tm_ver f_open">
					<div class="folder_w">
						<strong>지역별</strong>
						<div class="check_w">
							<ul>
								<li>
									<input type="checkbox" name="searchDo" id="c_do01" class="check01" value="1" title="1"/>
									<label for="c_do01">서울시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do02" class="check01" value="2" title="2"/>
									<label for="c_do02">부산시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do03" class="check01" value="3" title="3"/>
									<label for="c_do03">대구시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do04" class="check01" value="4" title="4"/>
									<label for="c_do04">인천시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do05" class="check01" value="5" title="5"/>
									<label for="c_do05">광주시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do06" class="check01" value="6" title="6"/>
									<label for="c_do06">대전시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do07" class="check01" value="7" title="7"/>
									<label for="c_do07">울산시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do08" class="check01" value="8" title="8"/>
									<label for="c_do08">세종시</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do09" class="check01" value="9" title="9"/>
									<label for="c_do09">경기도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do10" class="check01" value="10" title="10"/>
									<label for="c_do10">강원도</label>
								</li>
							</ul>
							<ul>
								<li>
									<input type="checkbox" name="searchDo" id="c_do11" class="check01" value="11" title="11"/>
									<label for="c_do11">충청북도</label>
								</li>
								
								<li>
									<input type="checkbox" name="searchDo" id="c_do12" class="check01" value="12" title="12"/>
									<label for="c_do12">충청남도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do13" class="check01" value="13" title="13"/>
									<label for="c_do13">전라북도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do14" class="check01" value="14" title="14"/>
									<label for="c_do14">전라남도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do015" class="check01" value="15" title="15"/>
									<label for="c_do15">경상북도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do16" class="check01" value="16" title="16"/>
									<label for="c_do16">경상남도</label>
								</li>
								<li>
									<input type="checkbox" name="searchDo" id="c_do17" class="check01" value="17" title="17"/>
									<label for="c_do17">제주도</label>
								</li>
							</ul>
						</div>
							</ul>
						</div>
					</div>
				</div>
			</li>
			
			<li>
				<div class="tm_ver f_open">
					<div class="folder_w">
						<strong>입지구분</strong>
						<div class="check_w">
							<ul>
								<li><input type="checkbox" name="searchLctCl" id="c_lct_cl01" class="check01" value="47" title="47"
										 /><label for="c_lct_cl01">해변</label></li>
								<li><input type="checkbox" name="searchLctCl" id="c_lct_cl02" class="check01" value="48" title="48"
										 /><label for="c_lct_cl02">섬</label></li>
								<li><input type="checkbox" name="searchLctCl" id="c_lct_cl03" class="check01" value="49" title="49"
										 /><label for="c_lct_cl03">산</label></li>
								<li><input type="checkbox" name="searchLctCl" id="c_lct_cl04" class="check01" value="50" title="50"
										 /><label for="c_lct_cl04">숲</label></li>
								<li><input type="checkbox" name="searchLctCl" id="c_lct_cl05" class="check01" value="51" title="51"
										 /><label for="c_lct_cl05">계곡</label></li>
								<li><input type="checkbox" name="searchLctCl" id="c_lct_cl06" class="check01" value="52" title="52"
										 /><label for="c_lct_cl06">강</label></li>
								<li><input type="checkbox" name="searchLctCl" id="c_lct_cl07" class="check01" value="53" title="53"
										 /><label for="c_lct_cl07">호수</label></li>
								<li><input type="checkbox" name="searchLctCl" id="c_lct_cl08" class="check01" value="54" title="54"
										 /><label for="c_lct_cl08">도심</label></li>
								</ul>
						</div>
					</div>
					<!--//folder_w-->
				</div> <!--//tm_ver-->
			</li>
					
			<li>
				<div class="tm_ver f_open">
					<div class="folder_w">
						<strong>바닥형태</strong>
						<div class="check_w">
							<ul>
								<li><input type="checkbox" class="check01" name="searchSiteBottomCl1" id="searchSiteBottomCl1" value="Y" title="잔디"
									><label for="searchSiteBottomCl1" class="label_name">잔디</label></li>
								<li><input type="checkbox" class="check01" name="searchSiteBottomCl2" id="searchSiteBottomCl2" value="Y" title="파쇄석"
									><label for="searchSiteBottomCl2" class="label_name">파쇄석</label></li>
								<li><input type="checkbox" class="check01" name="searchSiteBottomCl3" id="searchSiteBottomCl3" value="Y" title="데크"
									><label for="searchSiteBottomCl3" class="label_name">데크</label></li>
								<li><input type="checkbox" class="check01" name="searchSiteBottomCl4" id="searchSiteBottomCl4" value="Y" title="자갈"
									><label for="searchSiteBottomCl4" class="label_name">자갈</label></li>
								<li><input type="checkbox" class="check01" name="searchSiteBottomCl7" id="searchSiteBottomCl7" value="Y" title="기타"
									><label for="searchSiteBottomCl7" class="label_name">기타</label></li>
							</ul>
						</div>
					</div>
					<!--//folder_w-->
				</div> <!--//tm_ver-->
			</li>
			
			<li>
				<div class="tm_ver f_open">
					<div class="folder_w">
						<strong>테마별</strong>
						<div class="check_w">
							<ul>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode01" value="80" title="80" class="check01"
										 /><label for="searchThemeEnvrnClCode01">일출명소</label></li>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode02" value="81" title="81" class="check01"
										 /><label for="searchThemeEnvrnClCode02">일몰명소</label></li>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode03" value="82" title="82" class="check01"
										 /><label for="searchThemeEnvrnClCode03">수상레저</label></li>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode04" value="83" title="83" class="check01"
										 /><label for="searchThemeEnvrnClCode04">항공레저</label></li>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode05" value="84" title="84" class="check01"
										 /><label for="searchThemeEnvrnClCode05">스키</label></li>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode06" value="85" title="85" class="check01"
										 /><label for="searchThemeEnvrnClCode06">낚시</label></li>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode07" value="154" title="154" class="check01"
										 /><label for="searchThemeEnvrnClCode07">액티비티</label></li>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode08" value="86" title="86" class="check01"
										 /><label for="searchThemeEnvrnClCode08">봄꽃여행</label></li>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode09" value="87" title="87" class="check01"
										 /><label for="searchThemeEnvrnClCode09">여름물놀이</label></li>
							</ul>
							<ul>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode010" value="88" title="88" class="check01"
										 /><label for="searchThemeEnvrnClCode010">가을단풍명소</label></li>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode011" value="89" title="89" class="check01"
										 /><label for="searchThemeEnvrnClCode011">겨울눈꽃명소</label></li>
								<li><input type="checkbox" name="searchThemeEnvrnClCode" id="searchThemeEnvrnClCode012" value="90" title="90" class="check01"
										 /><label for="searchThemeEnvrnClCode012">걷기길</label></li>
								</ul>
						</div>
					</div>
					<!--//folder_w-->
				</div> <!--//tm_ver-->
			</li>
					
			<li>
				<div class="tm_ver f_open">
					<div class="folder_w">
						<strong>기타정보</strong>
						<div class="check_w">
							<ul>
								<li><input type="checkbox" class="check01" name="searchTrlerAcmpnyAt" id="searchTrlerAcmpnyAt" value="Y" title="개인 트레일러 입장가능"
									><label for="searchTrlerAcmpnyAt"
									class="label_name">개인 트레일러 입장가능</label></li>
								<li><input type="checkbox" class="check01" name="searchCaravAcmpnyAt" id="searchCaravAcmpnyAt" value="Y" title="개인 캠핑카 입장가능"
									><label for="searchCaravAcmpnyAt"
									class="label_name">개인 캠핑카 입장가능</label></li>
								<li><input type="checkbox" class="check01" name="searchAnimalCmgCl" id="searchAnimalCmgCl" value="CL02" title="반려동물 동반가능"
									><label for="searchAnimalCmgCl"
									class="label_name">반려동물 동반가능</label></li>
							</ul>
							    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp(※ 실제 결과는 현장사정 및 계절에 따라 달라질수 있으니 캠핑장 사업주에 직접 확인 후 이용바랍니다.)
						</div>
					</div>
					<!--//folder_w-->
				</div> <!--//tm_ver-->
			</li>
					
			<li class="detail_btn_w">
				<button type="button" class="b_lightgray" id="searchForm3ResetBtn">초기화</button>
				<button type="submit" class="b_blue">검색하기</button>
			</li>
					
		    <!-- 카드형 리스트 -->
		    <div class="list_wrap">
            <ul>
                <li class="item item1">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="/search/campsearch_view">바로가기</a>
                    </div>
                </li>
                <li class="item item2">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item3">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item4">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item5">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item6">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item7">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item8">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item9">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item10">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item11">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
                <li class="item item12">
                    <div class="image">사진</div>
                    <div class="cont">
                        <strong>캠핑장이름</strong>
                        <p>캠핑장주소</p>
                        <p>캠핑장연락처</p>
                        <p>캠핑장소개내용</p>
                        <a href="#">바로가기</a>
                    </div>
                </li>
            </ul>
        </div>
        
        <ul class="bottom_number">
	      <li class="first"></li>
	      <li class="prev"></li>
	      <li class="number">1</li>
	      <li class="number">2</li>
	      <li class="number">3</li>
	      <li class="number">4</li>
	      <li class="number">5</li>
	      <li class="number">6</li>
	      <li class="number">7</li>
	      <li class="number">8</li>
	      <li class="number">9</li>
	      <li class="number">10</li>
	      <li class="next"></li>
	      <li class="last"></li>
		</ul>
  
	</section>
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>