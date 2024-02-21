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
		
		<script src="../assets/js/search/campsearch.js"></script>
	    
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
			<form name="cSearchFrm" id="cSearchFrm" method="get" action="#">
			
				<div class="tm_ver f_open">
					<div class="folder_w">
						<strong>지역별</strong>
						<div class="check_w">
							<ul>
								<li>
									<input type="checkbox" name="doNm" id="c_do01" class="check01" value="서울시" title="1"/>
									<label for="c_do01">서울시</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do02" class="check01" value="부산시" title="2"/>
									<label for="c_do02">부산시</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do03" class="check01" value="대구시" title="3"/>
									<label for="c_do03">대구시</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do04" class="check01" value="인천시" title="4"/>
									<label for="c_do04">인천시</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do05" class="check01" value="광주시" title="5"/>
									<label for="c_do05">광주시</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do06" class="check01" value="대전시" title="6"/>
									<label for="c_do06">대전시</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do07" class="check01" value="울산시" title="7"/>
									<label for="c_do07">울산시</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do08" class="check01" value="세종시" title="8"/>
									<label for="c_do08">세종시</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do09" class="check01" value="경기도" title="9"/>
									<label for="c_do09">경기도</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do10" class="check01" value="강원도" title="10"/>
									<label for="c_do10">강원도</label>
								</li>
							</ul>
							<ul>
								<li>
									<input type="checkbox" name="doNm" id="c_do11" class="check01" value="충청북도" title="11"/>
									<label for="c_do11">충청북도</label>
								</li>
								
								<li>
									<input type="checkbox" name="doNm" id="c_do12" class="check01" value="충청남도" title="12"/>
									<label for="c_do12">충청남도</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do13" class="check01" value="전라북도" title="13"/>
									<label for="c_do13">전라북도</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do14" class="check01" value="전라남도" title="14"/>
									<label for="c_do14">전라남도</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do015" class="check01" value="경상북도" title="15"/>
									<label for="c_do15">경상북도</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do16" class="check01" value="경상남도" title="16"/>
									<label for="c_do16">경상남도</label>
								</li>
								<li>
									<input type="checkbox" name="doNm" id="c_do17" class="check01" value="제주도" title="17"/>
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
								<li><input type="checkbox" name="lctCl" id="c_lct_cl01" class="check01" value="해변" title="47"
										 /><label for="c_lct_cl01">해변</label></li>
								<li><input type="checkbox" name="lctCl" id="c_lct_cl02" class="check01" value="섬" title="48"
										 /><label for="c_lct_cl02">섬</label></li>
								<li><input type="checkbox" name="lctCl" id="c_lct_cl03" class="check01" value="산" title="49"
										 /><label for="c_lct_cl03">산</label></li>
								<li><input type="checkbox" name="lctCl" id="c_lct_cl04" class="check01" value="숲" title="50"
										 /><label for="c_lct_cl04">숲</label></li>
								<li><input type="checkbox" name="lctCl" id="c_lct_cl05" class="check01" value="계곡" title="51"
										 /><label for="c_lct_cl05">계곡</label></li>
								<li><input type="checkbox" name="lctCl" id="c_lct_cl06" class="check01" value="강" title="52"
										 /><label for="c_lct_cl06">강</label></li>
								<li><input type="checkbox" name="lctCl" id="c_lct_cl07" class="check01" value="호수" title="53"
										 /><label for="c_lct_cl07">호수</label></li>
								<li><input type="checkbox" name="lctCl" id="c_lct_cl08" class="check01" value="도심" title="54"
										 /><label for="c_lct_cl08">도심</label></li>
								</ul>
						</div>
					</div>
					<!--//folder_w-->
				</div> <!--//tm_ver-->
			</li>
					
			</form>		
			<li class="detail_btn_w">
				<button type="button" class="b_lightgray" id="searchForm3ResetBtn">초기화</button>
				<button type="button" id="csearchBtn" class="b_blue">검색하기</button>
			</li>
					
		    <!-- 카드형 리스트 -->
		    
		    <div class="csList">
            <ul>
                <li class="item item1">
		    <c:forEach var="gcdto" items="${map.list}">
                	<div class="cs_contbox">
                    <div class="image"><img src="${gcdto.firstImageUrl}" class="image"></div>
                    <div class="cont">
                        <strong>${gcdto.facltNm}</strong>
                        
                        <p>${gcdto.addr1}</p>
                        
                        <c:if test="${gcdto.tel!=null}">
                        	<p>${gcdto.tel}</p>
                        </c:if>
                        <c:if test="${gcdto.tel==null}">
                        	<p id="pnull">(등록된 연락처가 없습니다)</p>
                        </c:if>
                        
                        <c:if test="${gcdto.lineIntro!=null}">
                        	<p>${gcdto.lineIntro}</p>
                        </c:if>
                        <c:if test="${gcdto.lineIntro==null}">
                        	<p id="pnull">(등록된 한줄소개가 없습니다)</p>
                        </c:if>
                        
                        
                        <a href="campsearch_view?contentId=${gcdto.contentId}">바로가기</a>
                    </div>
                	</div>
		    </c:forEach>
                </li>
                
            </ul>
        </div>
        
        <ul class="bottom_number">
        	<a href="campsearch?page=1"><li class="first"></li></a>
        	<c:if test="${map.page<=1}">
	     		<li class="prev"></li></c:if>
        	<c:if test="${map.page>1}">
	     		<a href="campsearch?page=${map.page-1}">
	     			<li class="prev"></li></a></c:if>
	     	<c:forEach var="i" begin="${map.startPage}" end="${map.endPage}" step="1">
	      		<c:if test="${map.page==i}">
		      		<li class="number"><div>${i}</div></li>
	      		</c:if>
	      		<c:if test="${map.page!=i}">
	      			<a href="campsearch?page=${i}">
		      		<li class="number"><div>${i}</div></li>
	      		</c:if>
	   			</a>
	     	</c:forEach>
	     	<c:if test="${map.page<map.maxPage}">
		      <a href="campsearch?page=${map.page+1}"><li class="next"></li></a>
	     	</c:if>
	     	<c:if test="${map.page>=map.maxPage}">
		      <li class="next"></li>
	     	</c:if>
	     	
		    <a href="campsearch?page=${map.maxPage}"><li class="last"></li></a>
		    
		</ul>
  
	</section>
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>