<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>캠핑꿀팁(Tip) 게시글</title>
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
		<link href="../assets/css/community/listStyle.css" rel="stylesheet">
		<link href="../assets/css/community/viewStyle.css" rel="stylesheet">
	</head>
	<body>
	<!-- ======= Header ======= -->
	<%@include file="../include/header.jsp" %>
	<!-- End Header -->
	
		<section class="notice">
		
		   
			<!-- 꿀팁게시글 보기-->
	    	<h1 style="float: left; margin: 40px 0 0 700px; font-weight: 700; position: relative; left:50px;">꿀팁 게시글</h1>
		    <form action="" id="t_VFrm" name="t_VFrm" method="post">
		    <table>
		     <colgroup>
		        <col width="10%">
		        <col width="63%">
		        <col width="15%">
		        <col width="12%">
   			</colgroup>
		    <tr>
		        <th style="text-align: center;"><strong>${map.tbdto.t_bno}</strong></th>
		        <th style="text-align: left;"><span>${map.tbdto.t_btitle}</span></th>
		        <th style="text-align: right;"><strong>작성일</strong></th>
		        <th><fmt:formatDate value="${map.tbdto.t_bdate}" pattern="yyyy-MM-dd"/></th>
		      </tr>
		      <tr style="border-bottom: 2px solid #009223">
		        <td style="text-align: center;"><strong>작성자</strong style="text-align: center;"></td>
		        <td>${map.tbdto.id}</td>
		        <td style="text-align: right;"><strong>조회수</strong></td>
		        <td>${map.tbdto.t_bhit}</td>
		      </tr>
		      <tr>
		        <td colspan="4" class="article">${map.tbdto.t_bcontent}<br><br><br><br><br></td>
		      </tr>
		       <tr style="border-bottom: 2px solid #009223;">
			        <td class="article" style="text-align: center;"><strong>첨부파일 </strong>
			        </td>
			        <td colspan="3">
			        	<c:if test="${map.tbdto.t_bfile != null }">
			       			${map.tbdto.t_bfile}
			       		</c:if>
			        	<c:if test="${map.tbdto.t_bfile == null }">
			       			※첨부파일이 없습니다.
			       		</c:if>
			        </td>
		      </tr>
		    </table>
		    </form>
		    <script>
		    	$(function(){
		    		$(".tUpdateBtn").click(function(){
		    			if(confirm("수정페이지로 이동합니다.")){
		    				$("#t_VFrm").attr("action","tUpdate").submit();
		    			}
		    		});//tUpdateBtn //수정페이지
		    		$(".tDelBtn").click(function(){
		    			if(confirm("게시글을 삭제하시겠습니까?")){
		    				$("#t_VFrm").attr("action","tDelete").submit();
		    			}
		    		});//tDelBtn//게시글 삭제
		    	});
		    </script>
		    <!-- 버튼 -->
		    <div class="listBtn">
		    	<button class="list tDelBtn">삭제</button>
		    	<button class="list tUpdateBtn">수정</button>
		    	<a href="tList"><button class="list">목록</button></a>
		    </div>
		    
		    <!-- 댓글입력-->
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
		    <!-- 이전글/다음글-->
		    <table style="margin-top: -150px; ">
		      <tr>
		        <td colspan="4"><strong>다음글</strong> <span class="separator">|</span>
		        <c:if test="${map.tnextdto != null }">
		        	<a href="tView?t_bno=${map.tnextdto.t_bno}">${map.tnextdto.t_btitle}</a>
		        </c:if>
		        <c:if test="${map.tnextdto == null }">
		        	다음글이 없습니다.
		        </c:if>
		        </td>  
		      </tr>
		      <tr>
		        <td colspan="4"><strong>이전글</strong> <span class="separator">|</span>
		        <c:if test="${map.tprevdto != null }">
		       		<a href="tView?t_bno=${map.tprevdto.t_bno}">${map.tprevdto.t_btitle}</a>
		        </c:if>
		        <c:if test="${map.tprevdto == null }">
		        	이전글이 없습니다.
		        </c:if>
		        </td>
		      </tr>
		    </table>
		    <!-- 이전글/다음글 끝-->
		    
		    <!-- 댓글보기-->
		    <table style="margin-top: 70px;">
		      <td style="font-weight: 700">총<strong style="color: #009223">&nbsp;&nbsp;5</strong>&nbsp;개의 댓글이 등록되었습니다.</td>
			  <tr>
				<td><strong>댓글 작성자</strong> | <span style="color: blue;">aaa</span>&nbsp;&nbsp;<span>[2024-12-12 15:27:23:00]</span>
				<li id="replyTxt">&nbsp;&nbsp;댓글내1용일 들어갑니다. <br>ex)이벤트 너무 좋아요! 꼭 참여해서 혜택받아볼게요!</li>
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
		    <!-- 댓글보기 끝-->
		    
 		 </section>
		
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>