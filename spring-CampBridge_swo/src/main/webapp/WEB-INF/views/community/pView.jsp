<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파티원 모집</title>
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
		<link href="../assets/css/commuinty/listStyle.css" rel="stylesheet">
		<link href="../assets/css/commuinty/viewStyle.css" rel="stylesheet">
	</head>
	
	<style>
	
	</style>
	
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	
		<section class="notice_search">
		
		   
			<!-- 공지사항 리스트 -->
	    	<h1 style="float: left; margin: 40px 0 0 700px; font-weight: 700; position: relative; left:50px;">파티원 모집</h1>
		    <table>
		     <colgroup>
		        <col width="10%">
		        <col width="48%">
		        <col width="10%">
		        <col width="10%">
		        <col width="10%">
		        <col width="12%">
   			</colgroup>
		    
		      <tr>
		        <th style="text-align: center;">
		        	<strong>1007</strong>
		        </th>
		        <th colspan="3" style="text-align: left;"><span>게시글 제목이 들어갑니다.</span></th>
		        
		        <th style="text-align: right;">
		        	<strong>모집상태</strong>
		        </th>
		        <th>파티원 모집중</th>
		      </tr>
		      
		      <tr style="border-bottom: 2px solid #009223">
		        <td style="text-align: center;">
		        	<strong>작성자</strong style="text-align: center;">
		        </td>
		        <td>관리자</td>
		        <td style="text-align: right;">
		        	<strong>캠핑유형</strong>
		        </td>
		        <td>오토캠핑</td>
		        <td style="text-align: right;">
		        	<strong>파티원</strong>
		        </td>
		        <td>3 &nbsp명</td>
		      </tr>
		      <tr>
		        <td colspan="6" class="article">게시글 내용이 들어갑니다.<br><br><br><br><br></td>
		      </tr>
		      <tr style="border-bottom: 2px solid #009223;">
		        <td class="article"><strong>첨부파일</strong>
		        </td>
		        <td colspan="5">※첨부파일 없음</td>
		      </tr>
		    </table>
		    
		    <!-- 참석자 -->
		    <div class="participant">
		    	<div class="participant_no">
		    		<div class="participant_img">
		    		<img src="../assets/img/party/participant_no1.png" alt="모집자">
		    		</div>
			    	<div class="participant_in">
			    	<tr>
			    		<td><strong>아이디</strong></td>
			    		<td>aaa</td>
			    		</br>
			    		<td><strong>닉네임</strong></td>
			    		<td>항공5기</td>
			    	</tr>
		    		</div>
		    	</div>
		    	<div class="participant_no">
		    		<div class="participant_img">
		    		<img src="../assets/img/party/participant_no.png" alt="모집중">
		    		</div>
			    	<div class="participant_in">
			    	<tr>
			    		<td><strong style="color: red;">파티원</strong></td>
			    		<td><strong style="color: red;">모집중</strong></td>
			    		</br>
			    		<td><strong style="color: red;">파티에</strong></td>
			    		<td><strong style="color: red;">참여하기</strong></td>
			    	</tr>
		    		</div>
		    	</div>
		    	<div class="participant_no">
		    		<div class="participant_img">
		    		<img src="../assets/img/party/participant_no.png" alt="모집중">
		    		</div>
			    	<div class="participant_in">
			    	<tr>
			    		<td><strong style="color: red;">파티원</strong></td>
			    		<td><strong style="color: red;">모집중</strong></td>
			    		</br>
			    		<td><strong style="color: red;">파티에</strong></td>
			    		<td><strong style="color: red;">참여하기</strong></td>
			    	</tr>
		    		</div>
		    	</div>
		    	<div class="participant_no">
		    		<div class="participant_img">
		    		<img src="../assets/img/party/participant_no.png" alt="모집중">
		    		</div>
			    	<div class="participant_in">
			    	<tr>
			    		<td><strong style="color: red;">파티원</strong></td>
			    		<td><strong style="color: red;">모집중</strong></td>
			    		</br>
			    		<td><strong style="color: red;">파티에</strong></td>
			    		<td><strong style="color: red;">참여하기</strong></td>
			    	</tr>
		    		</div>
		    	</div>
		    </div>
		    
		    <!-- 버튼 -->
		    <div class="listBtn">
		    	<button class="list">삭제</button>
		    	<button class="list">수정</button>
		    	<a href="pList"><button class="list">목록</button></a>
		    </div>
		    
		    <!-- 비밀댓글입력-->
		    <table id="replyPw">
			    <tr>
				    <td id="replyBorder">
					 	<strong>댓글 비밀번호&nbsp;&nbsp;</strong><input type="password" name="replyPw" id="replyIPw" placeholder=" ※ 입력시 비밀글로 저장">
				    </td>
			    </tr>
		    </table>
			 <table style="position: relative; bottom: 200px;">
			  <tr>
			  	<td style="display: flex; border: 1px solid white; margin: -80px 0 0 -20px;">
				  	<textarea placeholder=" ※ 댓글을 입력하세요. (타인을 향한 욕설 및 비방은 무통보 삭제됩니다.)" style="width: 1200px; "></textarea>
				  	<button id="replybtn">등록</button>
			  	</td>
			  </tr>
		   	</table>
		  
		    <!-- 댓글보기-->
		    <div class="reply_body">
		    <table style="margin-top: 30px;">
		      <td style="font-weight: 700">총<strong style="color: #009223">&nbsp;&nbsp;5</strong>&nbsp;개의 댓글이 등록되었습니다.</td>
			  <tr>
				<td><strong>댓글 작성자</strong> | <span style="color: blue;">aaa</span>&nbsp;&nbsp;<span>[2024-12-12 15:27:23:00]</span>
				<li id="replyTxt">&nbsp;&nbsp;댓글내용일 들어갑니다. <br>ex)이벤트 너무 좋아요! 꼭 참여해서 혜택받아볼게요!</li>
				<li id="replyBtn">
					<button id="rDelBtn">삭제</button>
					<button id="rUBtn">수정</button>
				</li>
				</td>			
			  </tr>
			  <tr>
				<td><strong>댓글 작성자</strong> | <span style="color: blue;">aaa</span>&nbsp;&nbsp;<span>[2024-12-12 15:27:23:00]</span>
				<li id="replyTxt">&nbsp;&nbsp;댓글내용일 들어갑니다. <br>ex)이벤트 너무 좋아요! 꼭 참여해서 혜택받아볼게요!</li>
				<li id="replyBtn">
					<button id="rDelBtn">삭제</button>
					<button id="rUBtn">수정</button>
				</li>
				</td>			
			  </tr>
			  <tr>
				<td><strong>댓글 작성자</strong> | <span style="color: blue;">aaa</span>&nbsp;&nbsp;<span>[2024-12-12 15:27:23:00]</span>
				<li id="replyTxt">&nbsp;&nbsp;댓글내용일 들어갑니다. <br>ex)이벤트 너무 좋아요! 꼭 참여해서 혜택받아볼게요!</li>
				<li id="replyBtn">
					<button id="rDelBtn">삭제</button>
					<button id="rUBtn">수정</button>
				</li>
				</td>			
			  </tr>
			  <tr>
				<td><strong>댓글 작성자</strong> | <span style="color: blue;">aaa</span>&nbsp;&nbsp;<span>[2024-12-12 15:27:23:00]</span>
				<li id="replyTxt">&nbsp;&nbsp;댓글내용일 들어갑니다. <br>ex)이벤트 너무 좋아요! 꼭 참여해서 혜택받아볼게요!</li>
				<li id="replyBtn">
					<button id="rDelBtn">삭제</button>
					<button id="rUBtn">수정</button>
				</li>
				</td>			
			  </tr>
			  <tr>
				<td><strong>댓글 작성자</strong> | <span style="color: blue;">aaa</span>&nbsp;&nbsp;<span>[2024-12-12 15:27:23:00]</span>
				<li id="replyTxt">&nbsp;&nbsp;댓글내용일 들어갑니다. <br>ex)이벤트 너무 좋아요! 꼭 참여해서 혜택받아볼게요!</li>
				<li id="replyBtn">
					<button id="rDelBtn">삭제</button>
					<button id="rUBtn">수정</button>
				</li>
				</td>			
			  </tr>
			  
		    </table>
		    </div>
		    <!-- 댓글보기 끝-->
		    
 		 </section>
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>