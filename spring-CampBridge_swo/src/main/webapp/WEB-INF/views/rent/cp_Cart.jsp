<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>대여 목록</title>
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
		<link href="../assets/css/rent/rentcart.css" rel="stylesheet">
	    
	    
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	
		<section class="cp_cart">
			<!-- 장바구니에 상품이 있을경우 -->
					<!-- 장바구니 상품 -->
					<h1>장바구니</h1>
					<h3>장바구니에 담긴 상품은 30일간 보관됩니다.</h3>
					<div class="orderDivNm">
						<table summary="장바구니에 담긴 상품들을 전체선택, 상품명, 가격/포인트, 수량, 합계, 주문 순으로 조회 및 주문을 하실수 있습니다." class="orderTable" border="1" cellspacing="0">
							<caption id="cp_cart_list">대여 상품목록</caption>
							<colgroup>
							<col width="7%"/>
							<col width="9%" class="tp" />
							<col width="18%" class="tp"/>
							<col width="12%" class="tnone" />
							<col width="10%" class="tw14"/>
							<col width="12%" class="tw28"/>
							<col width="12%" class="tnone" />
							</colgroup>
							<thead class="rent_list">
								<th scope="col"><input type="checkbox" /></th>
								<th scope="col" colspan="2" class="tp">상품명</th>
								<th scope="col" class="tnone">가격</th>
								<th scope="col" class="tw14">수량</th>
								<th scope="col">합계</th>
								<th scope="col" class="tnone">주문</th>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" /></td>
									<td><p class="img"><img src="../assets/img/rent/cpRent2.png" alt="상품" width="66" height="66" /></p></td>
									<td>
										<ul class="goods">
											<li>
												<a href="#">야전침대</a>
											</li>
										</ul>
									</td>
									<td class="tnone">8,000 원<br/></td>
									<td><input class="spinner" value="1" maxlength="3" /></td>
									<td>8,000 원</td>
									<td class="tnone">
										<ul class="order">	
											<li><a href="#" class="obtnMini iw70">바로구매</a></li>
											<li><a href="#" class="nbtnMini iw70">상품삭제</a></li>
										</ul>
									</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td><p class="img"><img src="../assets/img/rent/cpRent1.png" alt="상품" width="66" height="66" /></p></td>
									<td>
										<ul class="goods">
											<li>
												<a href="#">2인용 패키지</a>
											</li>
										</ul>
									</td>
									<td class="tnone">55,000 원<br/></td>
									<td><input class="spinner" value="1" maxlength="3" /></td>
									<td>55,000 원</td>
									<td class="tnone">
										<ul class="order">	
											<li><a href="#" class="obtnMini iw70">바로구매</a></li>
											<li><a href="#" class="nbtnMini iw70">상품삭제</a></li>
										</ul>
									</td>
								</tr>
								<tr>
									<td><input type="checkbox" /></td>
									<td><p class="img"><img src="../assets/img/rent/cpRent3.png" alt="상품" width="66" height="66" /></p></td>
									<td>
										<ul class="goods">
											<li>
												<a href="#">택배수령</a>
											</li>
										</ul>
									</td>
									<td class="tnone">5,000 원<br/></td>
									<td><input class="spinner" value="1" maxlength="3" /></td>
									<td>5,000 원</td>
									<td class="tnone">
										<ul class="order">	
											<li><a href="#" class="obtnMini iw70">바로구매</a></li>
											<li><a href="#" class="nbtnMini iw70">상품삭제</a></li>
										</ul>
									</td>
								</tr>
								
								
							</tbody>
						</table>
					</div>

					<div class="c_btnArea">
						<div class="bRight">
							<ul>
								<li><a href="#" class="selectbtn">전체선택</a></li>
								<li><a href="#" class="selectbtn2">선택삭제</a></li>
							</ul>
						</div>
					</div>
					<!-- //장바구니 상품 -->
					

					<!-- 총 주문금액 -->
					<div class="amount">
						<br><h4>총 주문금액</h4>
						<ul class="info">
							<li>
								<span class="title">상품 합계금액</span>
								<span class="won"><strong>63,000</strong> 원</span>
							</li>
							<li>
								<span class="title">배송비</span>
								<span class="won"><strong>5,000</strong> 원</span>
							</li>
						</ul>
						<ul class="total">
							
							<li class="txt"><strong>결제 예정 금액</strong></li>
							<li class="money"><span>68,000</span> 원</li>
						</ul>
					</div>
					<!-- //총 주문금액 -->


				<!-- //장바구니에 상품이 있을경우 -->
				
				<!-- 장바구니에 상품이 없을경우
					<div class="noting">
						<div class="point"><span class="orange">장바구니</span>에 담긴 상품이 없습니다.</div>

						<p>장바구니에 담긴 상품은 30일간만 보관됩니다.<br/>더 오래 보관하고 싶은 상품은 <u>위시리스트</u>에 담아주세요.</p>

						<a href="#">쇼핑 계속하기</a>
					</div>
				 //장바구니에 상품이 없을경우 -->
				 
				 
			
		  
		  <a href="cpRent"><button>뒤로가기</button></a> 
		  <a href="cp_Cart02"><button>선택상품 주문하기</button></a> 
		  <a href="cp_Cart02"><button>전체상품 주문하기</button></a> 
        
		</section>
        
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>