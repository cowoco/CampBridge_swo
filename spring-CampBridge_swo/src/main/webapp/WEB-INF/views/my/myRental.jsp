<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>주문/결제</title>
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
		<link href="../assets/css/my/myRental.css" rel="stylesheet">
	    
	   
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	
		<section class="cp_cart02">
			
		<div id="cart_outbox">		
			
			<!-- maxcontents -->
			<div id="cart_maxcontents">
				<div id="mypage">
					<h2><strong>대여목록</strong></h2>
					<!-- 주문 상품 -->
					<h3 class="dep">대여 제품 확인</h3>
					<div class="orderDivNm">
						<table summary="주문 제품 확인 게시판으로 상품명, 가격, 수량, 합계순으로 조회 하실수 있습니다." class="orderTable" border="1" cellspacing="0">
							<caption id="cp_cart_list">(최근 3개월)</caption>
							<colgroup>
							<col width="11%" />
							<col width="14%" />
							<col width="12%" class="tnone" />
							<col width="9%" />
							<col width="12%" class="tw28"/>
							<col width="12%" class="tw28"/>
							</colgroup>
							<thead>
								<th scope="col" colspan="2">상품명</th>
								<th scope="col" class="tnone">가격</th>
								<th scope="col">수량</th>
								<th scope="col">주문일자</th>
								<th scope="col">수령방법</th>
							</thead>
							<tbody>
								<tr class="cartTable">
									<td><p class="img"><img src="../assets/img/rent/cpRent1.png" alt="상품" width="66" height="66" /></p></td>
									<td><ul class="goodsv">
											<li>
												<a href="#">야전침대</a>
											</li>
										</ul></td>
									<td class="tnone">8,000 원</td>
									<td>1 개</td>
									<td>2024-10-27</td>
									<td class="deliveryv">택배수령</td>
								</tr>
								<tr class="cartTable">
									<td><p class="img"><img src="../assets/img/rent/cpRent2.png" alt="상품" width="66" height="66" /></p></td>
									<td><ul class="goodsv">
											<li>
												<a href="#">2인용 패키지</a>
											</li>
										</ul></td>
									<td class="tnone">55,000 원</td>
									<td>1 개</td>
									<td>2024-10-27</td>
									<td class="deliveryv">택배수령</td>
								</tr>
								<tr class="cartTable">
									<td><p class="img"><img src="../assets/img/rent/cpRent3.png" alt="상품" width="66" height="66" /></p></td>
									<td><ul class="goodsv">
											<li>
												<a href="#">트윈버너</a>
											</li>
										</ul></td>
									<td class="tnone">8,500 원</td>
									<td>1 개</td>
									<td>2024-10-27</td>
									<td class="deliveryv">택배수령</td>
								</tr>
								<tr class="cartTable">
									<td><p class="img"><img src="../assets/img/rent/cpRent3.png" alt="상품" width="66" height="66" /></p></td>
									<td><ul class="goodsv">
											<li>
												<a href="#">초경량 체어</a>
											</li>
										</ul></td>
									<td class="tnone">5,000 원</td>
									<td>1 개</td>
									<td>2024-01-02</td>
									<td class="shipmentv">현장수령</td>
								</tr>
								<tr class="cartTable">
									<td><p class="img"><img src="../assets/img/rent/cpRent3.png" alt="상품" width="66" height="66" /></p></td>
									<td><ul class="goodsv">
											<li>
												<a href="#">80L 배낭</a>
											</li>
										</ul></td>
									<td class="tnone">15,000 원</td>
									<td>1 개</td>
									<td>2024-01-02</td>
									<td class="shipmentv">현장수령</td>
								</tr>
								<tr class="cartTable">
									<td><p class="img"><img src="../assets/img/rent/cpRent3.png" alt="상품" width="66" height="66" /></p></td>
									<td><ul class="goodsv">
											<li>
												<a href="#">1~2인 비박텐트</a>
											</li>
										</ul></td>
									<td class="tnone">19,000 원</td>
									<td>1 개</td>
									<td>2024-01-02</td>
									<td class="shipmentv">현장수령</td>
								</tr>
							</tbody>
						</table>
					</div>
				
					<!-- //주문 상품 -->


				</div>
			</div>
			<!-- //maxcontents -->

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