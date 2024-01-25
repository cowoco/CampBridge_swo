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
		<link href="../assets/css/rent/rentcart.css" rel="stylesheet">
	   
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
					<h2><strong>주문/결제</strong></h2>
					
					<!-- 주문 상품 -->
					<h3 class="dep">주문 제품 확인</h3>
					<div class="orderDivNm">
						<table summary="주문 제품 확인 게시판으로 상품명, 가격, 수량, 합계순으로 조회 하실수 있습니다." class="orderTable" border="1" cellspacing="0">
							<caption id="cp_cart_list">주문 제품 확인</caption>
							<colgroup>
							<col width="12" />
							<col width="12" />
							<col width="16%" class="tnone" />
							<col width="14%" />
							<col width="16%" class="tw28"/>
							</colgroup>
							<thead>
								<th scope="col" colspan="2">상품명</th>
								<th scope="col" class="tnone">가격</th>
								<th scope="col">수량</th>
								<th scope="col">합계</th>
							</thead>
							<tbody>
								<tr class="cartTable">
									<td><p class="img"><img src="../assets/img/rent/cpRent1.png" alt="상품" width="66" height="66" /></p></td>
									<td><ul class="goods">
											<li>
												<a href="#">야전침대</a>
											</li>
										</ul></td>
									<td class="tnone">8,000 원</td>
									<td>1 개</td>
									<td>8,000 원</td>
								</tr>
								<tr class="cartTable">
									<td><p class="img"><img src="../assets/img/rent/cpRent2.png" alt="상품" width="66" height="66" /></p></td>
									<td><ul class="goods">
											<li>
												<a href="#">2인용 패키지</a>
											</li>
										</ul></td>
									<td class="tnone">55,000 원</td>
									<td>1 개</td>
									<td>55,000 원</td>
								</tr>
								<tr class="cartTable">
									<td><p class="img"><img src="../assets/img/rent/cpRent3.png" alt="상품" width="66" height="66" /></p></td>
									<td><ul class="goods">
											<li>
												<a href="#">택배수령</a>
											</li>
										</ul></td>
									<td class="tnone">5,000 원</td>
									<td>1 개</td>
									<td>5,000 원</td>
								</tr>
								
								
							</tbody>
						</table>
					</div>
					<div class="poroductTotal">
						<ul>	
							<li>상품 합계금액 <strong>63,000</strong> 원</li>
							<li>+ 배송비 <strong>5,000</strong> 원</li>
							<li>= 총 합계 <strong>68,000</strong> 원</li>
						</ul>
					</div>
					<!-- //주문 상품 -->
					

			<!-- 주문자 주소 입력 -->
			<form name="agree" method="get" action="#">
				<div id="cart_area">
					<h3>주문자 주소 입력</h3>
				</div>
				
				<fieldset class="cart_fieldset_class">
					<dl id="order_name_dl">
						<dt>
							<label for="name">이름</label>
						</dt>
						<dd>
							<input type="text" id="name" name="name" required/>
						</dd>
					</dl>
					
					<dl id="order_tell_dl">
						<dt>
							<label for="f_tell">휴대전화</label>
						</dt>
						<dd>
							<input type="text" id="f_tell" name="f_tell" maxlength="3" required />
							<span> - </span>
							<input type="text" id="m_tell" name="m_tell" maxlength="4" required />
							<span> - </span>
							<input type="text" id="l_tell" name="l_tell" maxlength="4" required />
						</dd>
					</dl>
					
					
					<dl id="order_mail_dl">
						<dt>
							<label for="mail_id">이메일</label>
						</dt>
						<dd>
							<input type="text" id="mail_id" name="mail_id" required />
							<span>@</span>
							<input type="text" id="main_tail" name="mail_tail" required />
							<select>
								<option selected>직접입력</option>
								<option>지메일</option>
								<option>네이버</option>
								<option>네이트</option>
							</select>
						</dd>
					</dl>
					
					<dl id="order_address_dl">
						<dt> 
							<label for="">주소</label>
						</dt>
						<dd>
							<input type="text" id="l_postal" name="l_postal" required />
							<input type="button" value="우편번호"/>
							<input type="text" id="address1" name="address1" required />
							<input type="text" id="address2" name="address2" required />
						</dd>
					</dl>
				</fieldset>
			</form>
			<!-- //주문자 주소 입력 -->


			<!-- 수취자 주소 입력 -->
			<form name="agree" method="get" action="#">
				<div id="cart_area">
					<h3>수취자 주소 입력</h3>
					<input type="checkbox" id="infosame"/>
					<label for="infosame">회원정보와 동일</label>
				</div>
				
				<fieldset class="cart_fieldset_class">
					<dl id="order_name_dl">
						<dt>
							<label for="name">이름</label>
						</dt>
						<dd>
							<input type="text" id="name" name="name" required/>
						</dd>
					</dl>
					
					<dl id="order_tell_dl">
						<dt>
							<label for="f_tell">휴대전화</label>
						</dt>
						<dd>
							<input type="text" id="f_tell" name="f_tell" maxlength="3" required />
							<span> - </span>
							<input type="text" id="m_tell" name="m_tell" maxlength="4" required />
							<span> - </span>
							<input type="text" id="l_tell" name="l_tell" maxlength="4" required />
						</dd>
					</dl>
					
					
					<dl id="order_mail_dl">
						<dt>
							<label for="mail_id">이메일</label>
						</dt>
						<dd>
							<input type="text" id="mail_id" name="mail_id" required />
							<span>@</span>
							<input type="text" id="main_tail" name="mail_tail" required />
							<select>
								<option selected>직접입력</option>
								<option>지메일</option>
								<option>네이버</option>
								<option>네이트</option>
							</select>
						</dd>
					</dl>
					
					<dl id="order_address_dl">
						<dt> 
							<label for="">주소</label>
						</dt>
						<dd>
							<input type="text" id="l_postal" name="l_postal" required />
							<input type="button" value="우편번호"/>
							<input type="text" id="address1" name="address1" required />
							<input type="text" id="address2" name="address2" required />
						</dd>
					</dl>
					<dl id="order_demand_dl">
						<dt>
							<label for="name">배송시 요청사항</label>
						</dt>
						<dd>
							<input type="text" id="demand" name="name" required/>
						</dd>
					</dl>
					<dl id="order_payment_dl">
						<dt>
							<label for="name">결제 방법</label>
						</dt>
						<dd class="payment">
							<ul>
								<li>
									 <input type="checkbox" id="payment1" name="payment" value="신용카드" onClick="clkOftenAddr(this);"/> 
									 <label for="payment1">신용카드</label> 
								</li>
						 		<li> 
							 		<input type="checkbox" id="payment2" name="payment" value="무통장입금" onClick="clkOftenAddr(this);"/> 
							 		<label for="payment2">무통장 입금</label> 
						 		</li>
					 		</ul>
					 	</dd>
					</dl>
					
				</fieldset>
			</form>
			<!-- //수취자 주소 입력 -->


			

			<!-- 총 주문금액 -->
					<div class="amount2">

						<!-- 회원 일때 -->
						<h4 class="member">총 결제금액</h4>
						<!-- 회원 일때 -->
						<!-- 비회원 일때  <h4>총 주문금액</h4> //비회원 일때 -->

						<ul class="info">
							<li>
								<span class="title">상품 합계금액</span>
								<span class="won"><strong>63,000</strong> 원</span>
							</li>
							<li>
								<span class="title">배송비</span>
								<span class="won"><strong>5,000</strong> 원</span>
							</li>

							<!-- 
							
							<li>
								<span class="title">쿠폰 할인</span>
								<span class="won"><strong>- 1,000</strong> 원</span>
							</li>
							//회원 일때만 -->
							
						</ul>

						<ul class="total">
							

							<li class="txt"><strong>결제 예정 금액</strong></li>
							<li class="money"><span>68,000</span> 원</li>
						</ul>
					</div>
			<!-- //총 주문금액 -->
				</div>
			</div>
			<!-- //maxcontents -->

		</div>		 
				 
			
		  
		  <a href="cp_Cart"><button>뒤로가기</button></a> 
		  
		  <a href="cp_Cart03"><button>주문/결제하기</button></a> 
        
		</section>
        
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>