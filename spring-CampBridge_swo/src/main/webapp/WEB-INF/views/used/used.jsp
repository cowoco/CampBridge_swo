<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑중고거래</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../assets/vendor/aos/aos.css" rel="stylesheet">
<link href="../assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../assets/css/main2.css" rel="stylesheet">
<link href="../assets/css/used/used.css" rel="stylesheet" type="text/css">
<link href="../assets/css/review/header2.css" rel="stylesheet" type="text/css">
</head>
<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp"%>
	<!-- End Header -->

	<!--<div id="contentWrapper"> -->
	<!-- <div id="contentWrap"> -->
	<!-- <link type="text/css" rel="stylesheet" href="/template_common/shop/basic_simple/menu.1.css?t=201711221039"> -->
	<section class="headerCss">

		<div id="contentWrap">
			<!-- 	<div id="content"> -->
			<!-- 	<div id="bbsData"> -->
			<div class="page-body">
				<div class="camp-img-div">
					<img src="assets/img/campUsed/free-icon-camp-9056684.png"
						alt="중고거래이미지">
					<h1 style="text-align: center;">캠핑중고거래</h1>
				</div>
				<div class="bbs-sch">
					<form action="#" name="form1">
						<input type="hidden" name="s_id" value=""> <input
							type="hidden" name="code" value="ocamall_image1"> <input
							type="hidden" name="page" value="1"> <input type="hidden"
							name="type" value="s"> <input type="hidden"
							name="board_cate" value=""> <input type="hidden"
							name="review_type" value="">
						<!-- .검색 폼시작 -->
						<fieldset>
							<legend>게시판 검색 폼</legend>
							<label> <input type="checkbox" name="shname" value="ok"
								onclick="change(1);" class="MS_input_checkbox"> 이름
							</label> <label> <input type="checkbox" name="ssubject"
								value="ok" onclick="change(2);" checked="checked"
								class="MS_input_checkbox"> 제목
							</label> <label> <input type="checkbox" name="scontent"
								value="ok" onclick="change(3);" class="MS_input_checkbox">
								내용
							</label> <span class="key-wrap"> <input type="text" name="stext"
								value="" class="MS_input_txt"> <a
								href="javascript:document.form1.submit();"> <img
									src="https://image.makeshop.co.kr/makeshop/d3/basic_simple/bbs/btn_bbs_sch.gif"
									alt="검색" title="검색"></a>
							</span>
						</fieldset>
					</form>
					<!-- .검색 폼 끝 -->
				</div>
				<!-- .bbs-sch -->
				<br> <br> <br>
				<div class="bbs-tit">
					<div class="viewtab-menu">
						<input type="radio" name="tabview" id="tabview1" checked>
						<label for="tabview1">중고거래</label> 
						<input type="radio" name="tabview" id="tabview2"> 
						<label for="tabview2">중고양도</label>
						<div class="consolebox1">
							<div class="bbs-table-list">
								<div class="view-complete"
									style="position: relative; left: 460px; top: 15px; font-size: 16px;">
									<label> <input type="checkbox" name="shname" value="ok"
										onclick="change(1);" class="MS_input_checkbox" checked
										style="color: #7f7f90; vertical-align: middle; accent-color: #009223; width: 15px; height: 15px; position: relative; right: 10px;">거래가능내역보기
									</label>
								</div>
								<table summary="제목, 작성일, 조회수, 동영상">
									<caption>갤러리 게시글</caption>
									<colgroup>
										<col width="40">
										<col width="40">
										<col width="*">
										<col width="100">
										<col width="100">
									</colgroup>
									<tbody>
									</tbody>
								</table>
								<div class="fixed-img-collist">
									<ul class="clear">
										<li><a href="usedcontent"> <span><img
													src="assets/img/campUsed/campUsed1.jpg"></span> <strong>몬테라
													테이블 팔아요 </strong>
										</a> <br> <span class="used-buy">거래중</span>
											<p>2022.11.17 14:50:11</p>
											<p>HITS : 1078</p></li>
										<li><a href="usedcontent"> <span><img
													src="assets/img/campUsed/campUsed2.jpg"></span> <strong>스노우라인
													스토브 팝니다</strong>
										</a> <br> <span class="used-exchange">거래완료</span>
											<p>2022.04.15 14:57:50</p>
											<p>HITS : 1956</p></li>
										<li><a href="usedcontent"> <span><img
													src="assets/img/campUsed/campUsed3.jpg"></span> <strong>몽벨
													알파인 프라이팬 </strong>
										</a> <br> <span class="used-buy">거래중</span>
											<p>2022.03.10 17:02:05</p>
											<p>HITS : 1652</p></li>
										<li><a href="usedcontent"> <span><img
													src="assets/img/campUsed/campUsed4.jpg"></span> <strong>길이조절폴
													판매합니다 </strong>
										</a> <br> <span class="used-buy">거래중</span>
											<p>2022.03.10 16:27:35</p>
											<p>HITS : 1338</p></li>
										<li><a href="usedcontent"> <span><img
													src="assets/img/campUsed/campUsed1.jpg"></span> <strong>몬테라
													테이블 팔아요 </strong>
										</a> <br> <span class="used-exchange">거래완료</span>
											<p>2022.11.17 14:50:11</p>
											<p>HITS : 1078</p></li>
										<li><a href="usedcontent"> <span><img
													src="assets/img/campUsed/campUsed2.jpg"></span> <strong>스노우라인
													스토브 팝니다</strong>
										</a> <br> <span class="used-buy">거래중</span>
											<p>2022.04.15 14:57:50</p>
											<p>HITS : 1956</p></li>
										<li><a href="usedcontent"> <span><img
													src="assets/img/campUsed/campUsed3.jpg"></span> <strong>몽벨
													알파인 프라이팬 </strong>
										</a> <br> <span class="used-exchange">거래완료</span>
											<p>2022.03.10 17:02:05</p>
											<p>HITS : 1652</p></li>
										<li><a href="usedcontent"> <span><img
													src="assets/img/campUsed/campUsed4.jpg"></span> <strong>길이조절폴
													판매합니다 </strong>
										</a> <br> <span class="used-buy">거래중</span>
											<p>2022.03.10 16:27:35</p>
											<p>HITS : 1338</p></li>
									</ul>
								</div>
								<!-- fixed-img-collist   -->
							</div>
							<!-- bbs-table-list  -->
						</div>
						<!-- consolebox  -->
						

						<%-- <div class="consolebox2">
							<div class="bbs-table-list">
								<div class="view-complete"
									style="position: relative; left: 570px; top: 20px; font-size: 16px;">
									<label> <input type="checkbox" name="shname" value="ok"
										onclick="change(1);" class="MS_input_checkbox" checked
										style="color: #7f7f90; vertical-align: middle; accent-color: #009223; width: 15px; height: 15px; position: relative; right: 10px;">거래가능내역보기
									</label>
								</div>
								<table summary="제목, 작성일, 조회수, 동영상">
									<caption>갤러리 게시글</caption>
									<colgroup>
										<col width="40">
										<col width="40">
										<col width="*">
										<col width="100">
										<col width="100">
									</colgroup>
									<tbody>
									</tbody>
								</table>
								<div class="fixed-img-collist">
									<ul class="clear">
										<li><a href="usedcontent.jsp"> <span><img
													src="assets/img/campUsed/campUsed1.jpg"></span> <strong>몬테라
													테이블 팔아요 </strong>
										</a> <br> <span class="used-buy">거래중</span>
											<p>2022.11.17 14:50:11</p>
											<p>HITS : 1078</p></li>
										<li><a href="usedcontent.jsp"> <span><img
													src="assets/img/campUsed/campUsed2.jpg"></span> <strong>스노우라인
													스토브 팝니다</strong>
										</a> <br> <span class="used-exchange">거래중</span>
											<p>2022.04.15 14:57:50</p>
											<p>HITS : 1956</p></li>
										<li><a href="usedcontent.jsp"> <span><img
													src="assets/img/campUsed/campUsed3.jpg"></span> <strong>몽벨
													알파인 프라이팬 </strong>
										</a> <br> <span class="used-buy">거래중</span>
											<p>2022.03.10 17:02:05</p>
											<p>HITS : 1652</p></li>
										<li><a href="usedcontent.jsp"> <span><img
													src="assets/img/campUsed/campUsed4.jpg"></span> <strong>길이조절폴
													판매합니다 </strong>
										</a> <br> <span class="used-buy">거래중</span>
											<p>2022.03.10 16:27:35</p>
											<p>HITS : 1338</p></li>
										<li><a href="usedcontent.jsp"> <span><img
													src="assets/img/campUsed/campUsed1.jpg"></span> <strong>몬테라
													테이블 팔아요 </strong>
										</a> <br> <span class="used-exchange">거래완료</span>
											<p>2022.11.17 14:50:11</p>
											<p>HITS : 1078</p></li>
										<li><a href="usedcontent.jsp"> <span><img
													src="assets/img/campUsed/campUsed2.jpg"></span> <strong>스노우라인
													스토브 팝니다</strong>
										</a> <br> <span class="used-buy">거래중</span>
											<p>2022.04.15 14:57:50</p>
											<p>HITS : 1956</p></li>
										<li><a href="usedcontent.jsp"> <span><img
													src="assets/img/campUsed/campUsed3.jpg"></span> <strong>몽벨
													알파인 프라이팬 </strong>
										</a> <br> <span class="used-exchange">거래완료</span>
											<p>2022.03.10 17:02:05</p>
											<p>HITS : 1652</p></li>
										<li><a href="usedcontent.jsp"> <span><img
													src="assets/img/campUsed/campUsed4.jpg"></span> <strong>길이조절폴
													판매합니다 </strong>
										</a> <br> <span class="used-buy">거래중</span>
											<p>2022.03.10 16:27:35</p>
											<p>HITS : 1338</p></li>
									</ul>
								</div>
								<!-- fixed-img-collist   -->
							</div>
							<!-- bbs-table-list  -->
						</div>
						<!-- consolebox  -->  --%>
					</div>
					<!-- viewtab-menu  -->
				</div>
				<!-- bbs-tit  -->

				<!-- 하단 페이징 & 버튼 -->
				<div class="bbs-btm">
					<div class="bbs-link">
						<a href="usedWrite" class="CSSbuttonWhite">글쓰기</a>
					</div>

					<!-- <div class="bbs-paging">
								<div class="paging">
									<a
										href="/board/board.html?code=ocamall_image1&amp;page=1&amp;board_cate=#board_list_target"
										class="now">1</a>
								</div>
							</div> -->
					<!-- 하단 넘버링  -->
					<div>
						<ul class="page-num-used">
							<li class="first-num"></li>
							<li class="prev-num"></li>
							<li class="num-used">1</li>
							<li class="num-used">2</li>
							<li class="num-used">3</li>
							<li class="num-used">4</li>
							<li class="num-used">5</li>
							<li class="num-used">6</li>
							<li class="num-used">7</li>
							<li class="num-used">8</li>
							<li class="num-used">9</li>
							<li class="num-used">10</li>
							<li class="next-num"></li>
							<li class="last-num"></li>
						</ul>
					</div>
					<!-- //하단 페이징 & 버튼 -->

				</div>
				<!-- .page-body -->
			</div>
			<!-- #bbsData -->
		</div>
		<!-- #content -->
		</div>
		<!-- #contentWrap -->
	</section>

	<!-- 카톡 배너 -->

	<!-- 	<div class="quickBtnWrap">
		<div class="goToUp">
			<a href="#none"><img
				src="/design/ocamall/2022_renew/img/goToUp.png" alt=""></a>
		</div>
		<div>
			<a href="<https:/ /talk.naver.com/ct/wcskmd?frm=ppay#nafullscreen>"
				target="_blank"> <img
				src="/design/ocamall/2022_renew/img/icon_quick_ntalk.png" alt="">
			</a>
		</div>
		<div>
			<a href="<https:/ /pf.kakao.com/_NIQjM/chat>" target="_blank"> <imgsrc
					="/design/ocamall/2022_renew/img/icon_quick_kakao.png" alt=""></a>
		</div>
		<div>
			<a href="/shop/page.html?id=12"><img
				src="/design/ocamall/2022_renew/img/icon_quick_as.png" alt=""></a>
		</div>
		<div class="goToDn">
			<a href="#none"><img
				src="/design/ocamall/2022_renew/img/goToDn.png" alt=""></a>
		</div> -->


	<!-- ======= Footer ======= -->
	<%@include file="../include/footer.jsp"%>
	<!-- End Footer -->
</body>

</html>