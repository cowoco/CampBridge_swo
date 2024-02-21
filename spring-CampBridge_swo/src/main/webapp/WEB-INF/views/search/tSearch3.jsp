<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>테마 검색</title>
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
		<link href="/assets/css/search/tsearch.css" rel="stylesheet">
	    
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
			<section class="tSearch">
			
			<!-- 체크박스 -->
		  <div class="t_check">
		  		<img src="../assets/img/tsearch/thema_icon.png">
		 		<h1>테마별로 떠나는 캠프</h1>
		  	
		  		<div class="thema">
				 <ul>
					 <li>
						 <input type="checkbox" id="thema1" name="thema" value="일출명소" /> 
						 <label for="thema1">일출명소</label> 
					 </li>
			 		<li> 
				 		<input type="checkbox" id="thema2" name="thema" value="일몰명소" />
				 		<label for="thema2">일몰명소</label> 
			 		</li>
					<li> 
						<input type="checkbox" id="thema3" name="thema" value="항공레저" /> 
						<label for="thema3">항공레저</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema4" name="thema" value="스키" /> 
						<label for="thema4">스키</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema5" name="thema" value="낚시" /> 
						<label for="thema5">낚시</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema6" name="thema" value="액티비티" /> 
						<label for="thema6">액티비티</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema7" name="thema" value="봄꽃여행" /> 
						<label for="thema7">봄꽃여행</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema11" name="thema" value="걷기길"/> 
						<label for="thema11">걷기길</label> 
					</li>
				</ul>
				<ul>	
					<li> 
						<input type="checkbox" id="thema8" name="thema" value="여름물놀이" /> 
						<label for="thema8">여름물놀이</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema9" name="thema" value="가을단풍명소"/> 
						<label for="thema9">가을단풍명소</label> 
					</li>
					<li> 
						<input type="checkbox" id="thema10" name="thema" value="겨울눈꽃명소"/> 
						<label for="thema10">겨울눈꽃명소</label> 
					</li>
		 		</ul>
		 		</div>
		  </div>
		  <script>
		  	$(function(){
		  		$("#s_Btn").click(function(){
		  			//체크된 값
		  			var 
		  			
		  			var checkedThemes = document.querySelectorAll('input[name="thema"]:checked');
		  			//선택된 것을 배열에 저장
		  			var checkedValues = Array.from(checkedThemes).map(checkbox => checkbox.value);
		  			
		  			
		  			//alert(checkedValues+" 검색");
		  			console.log("click :"+checkedValues);
		  			 $.ajax({
						 url:"/search/theme_Search",
						 type:"post",
						 data:{"themaEnvrnCl":checkedValues},
						 //data:{"themaEnvrnCl":"일몰명소"},
						 dataType:"text",
						 success:function(data){
							 alert("성공");
							 //console.log("전체데이터 checkedValues: "+checkedValues);
							 console.log("전체데이터 : "+data);
							
						 },//success
						 error:function(){
							 alert("실패");
						 }//error
					 });//ajax
						 /*
							 let iarr = data.response.body.items.item;
							 let hdata="";
							 for(let i=0; i<iarr.length; i++){
								 hdata +='<div class="t_contbox">';
								 hdata +='<div class="image">'+iarr[i].firstImageUrl+'</div>';
								 hdata +='<div class="cont">';
								 hdata +='<strong>'+iarr[i].facltNm+'</strong>';
								 hdata +='<p>'+iarr[i].addr1+'</p>';
								if(iarr[i].tel == ''){
									 hdata += '<p>등록된 전화번호가 없습니다.</p>';
								}else{
									 hdata +='<p>'+iarr[i].tel+'</p>';
								}//tel-if문
								 hdata +='<p>'+iarr[i].lineIntro+'</p>';
								 hdata +='<a href="/search/tSearch_view">바로가기</a>';
								 hdata +='</div>';
								 hdata +='</div>';
							 }//for
							 $(".item").html(hdata);
*/
		  			
		  			
		  			
		  			
		  			
		  		});//click
		  		
		  	});//jqery
		  
		  
		  </script>
		  
		  <div id="s_Btn">
		 	<button type="button">검색하기</button>
		  </div>
		  <div class="t_list">
            <ul>
                <li class="item" id="cont_item">
                <c:forEach var="tsdto" items="${map.list}">
                	<div class="t_contbox">
	                    <div class="image"><img class="image" src="${tsdto.firstImageUrl}"></div>
	                    <div class="cont">
	                        <strong>${tsdto.facltNm}</strong>
	                        <p>${tsdto.addr1}</p>
	                        <c:if test="${empty tsdto.tel}">
		                        <p>등록된 전화 번호가 없습니다.</p>
	                        </c:if>
	                        <c:if test="${not empty tsdto.tel}">
		                        <p>${tsdto.tel}</p>
	                        </c:if>
	                        <p>${tsdto.lineIntro}</p>
	                        <a href="tSearch_view?contentId=${tsdto.contentId}">바로가기</a>
	                    </div>
                	</div>
                </c:forEach>
                </li>
            </ul>
        </div>
        <script type="text/javascript">
        $(function(){
        	let page = 2;
        	$(".tsMoreBtn").click(function(){
        		 //alert("더보기 버튼 실행");
        		  
        		
        		$.ajax({
        			url:"/search/tsMore",
        			type:"post",
        			data:{"page":page},
        			dataType:"json",
        	        success: function (data) {
        	            if (data.list.length > 0) {
        	                let hdata = "";

        	                data.list.forEach(tsdto => {
        	                    hdata += '<div class="t_contbox">';
        	                    
        	                    if(tsdto.firstImageUrl != null){
	        	                    hdata += '<div class="image"><img class="image" src="' + tsdto.firstImageUrl + '"></div>';
        	                    }else{
	        	                    hdata += '<div class="image"><img class="image" src="../assets/img/noPhoto_s.jpg"></div>';
        	                    }
        	                    
        	                    hdata += '<div class="cont">';
        	                    hdata += '<strong>' + tsdto.facltNm + '</strong>';
        	                    hdata += '<p>' + tsdto.addr1 + '</p>';
        	                    
        	                    if (tsdto.tel == null) {
        	                        hdata += '<p>등록된 전화 번호가 없습니다.</p>';
        	                    } else {
        	                        hdata += '<p>' + tsdto.tel + '</p>';
        	                    }
        	                    
        	                    if(tsdto.lineIntro != null){
	        	                    hdata += '<p>' + tsdto.lineIntro + '</p>';	
        	                    }else{
        	                    	hdata += '<p> </p>'
        	                    }
        	                    
        	                    hdata += '<a href="tSearch_view?contentId=' + tsdto.contentId + '">바로가기</a>';
        	                    hdata += '</div>';
        	                    hdata += '</div>';
        	                });

        	                $("#cont_item").append(hdata);

        	                page++;
        	                
        	            } else {
        	                // 더 이상 데이터가 없을 경우, 더보기 버튼을 숨김
        	                $(".tsMoreBtn").hide();
        	            }
        	        },
        			error:function(){
        				alert("더보기 실패");
        			}
        		
        		
        		});//ajax

        	});
        	
        });
        
        </script>
		<div id="p_Btn">
		  <button type="button" class="tsMoreBtn">더보기</button>
		</div>
					
			</section>
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>