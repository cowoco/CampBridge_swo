<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
		
		<!-- Template nWrite JS File -->
		<script >
			let t_bno = ${map.tbdto.t_bno};
		</script>
		<script src="../assets/js/TBoard/tView.js"></script>
		
		
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
	
		    <!-- 버튼 -->
		    
		    <script>
		    	$(function(){
		    		 // 작성자 확인 (예: 작성자 ID가 '작성자ID'로 가정)
		            var authorId = "${map.tbdto.id}";
		            // 현재 사용자 확인 (예: 현재 사용자 ID가 '현재사용자ID'로 가정)
		            var currentUserId = "${session_id}";
		            // 작성자와 현재 사용자가 일치할 경우 삭제 및 수정 버튼 표시
		            if (authorId === currentUserId) {
		                $(".tDelBtn").show();  // Show delete button
		                $(".tUpdateBtn").show();  // Show update button
		            } else {
		                $(".tDelBtn").hide();  // Hide delete button
		                $(".tUpdateBtn").hide();  // Hide update button
		            }
		    	})
		    	
		    </script>
		    
		    <div class="listBtn">
		    	<button class="list tDelBtn">삭제</button>
		    	<a href="tUpdate?t_bno=${map.tbdto.t_bno}"><button type="button" class="list tUpdateBtn">수정</button></a>
		    	<a href="tList"><button type="button" class="list">목록</button></a>
		    </div>
		    <!-- 댓글입력-->
		    <table id="replyPw">
			    <tr>
				    <td id="replyBorder">
					 	<strong>댓글 비밀번호&nbsp;&nbsp;</strong><input type="password" class="t_replynum" name="replyPw" id="replyIPw" placeholder=" ※ 입력시 비밀글로 저장">
				    </td>
			    </tr>
		    </table>
			 <table style="position: relative; bottom: 200px;">
			  <tr>
			  	<td style="display: flex; border: 1px solid white; margin: -80px 0 0 -20px;">
				  	<textarea class="t_replyType" placeholder=" ※ 댓글을 입력하세요. (타인을 향한 욕설 및 비방은 무통보 삭제됩니다.)" style="width: 1200px; "></textarea>
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
		    <script type="text/javascript">
			//========== 댓글 수정창 저장 시작 ============
			$(document).on("click",".rSaveBtn",function(){
				alert("수정된 댓글을 저장 합니다.");
				
				
				
				
				
				
			});

			
			//========== 댓글 수정창 저장 끝 ============
			//%%%%%%%%%% 댓글 수정 취소 시작 %%%%%%%%%%%%%
			$(document).on("click",".rCanBtn",function(){
				alert("댓글수정을 취소 합니다.");
			});
			
			
			
			
			
			//%%%%%%%%%% 댓글 수정 취소 끝  %%%%%%%%%%%%%
		    </script>
		    
		
		    <!-- 댓글보기-->
		    <table style="margin-top: 70px;">
		      <td style="font-weight: 700">총 <strong class="tCount" style="color: #009223">&nbsp;&nbsp;${map.TBCommentlist.size()}</strong>&nbsp;개의 댓글이 등록되었습니다.</td>
			  
			<tbody class="replyBox">
			<c:forEach var="tcdto" items="${map.TBCommentlist}">
				<tr id="${tcdto.t_cno}">
					<td><strong>댓글 작성자</strong>|<strong style="color: blue;">${tcdto.id}</strong>&nbsp;&nbsp;&nbsp;<span>${tcdto.t_cdate}</span>
					<li id="replyTxt">&nbsp;&nbsp;${tcdto.t_ccontent}</li>
					<li id="replyBtn">
						<button class="rDelBtn" style="cursor: pointer;">삭제</button>&nbsp;
						<button class="rUBtn tcUpdateBtn" style="cursor: pointer;">수정</button>
					</li>
					</td>			
				</tr>
				
				<!-- 수정창
					<td><strong>댓글 작성자</strong>|<span style="color: blue;">${tcdto.id}</span>&nbsp;&nbsp;&nbsp;<span>${tcdto.t_cdate}</span>
					<li id="replyTxt"><textarea cols="145%">${tcdto.t_ccontent}</textarea></li>
					<li id="replyBtn">
						<button class="rCanBtn">취소</button>
						<button class="rSaveBtn">저장</button>
					</li>
					</td>
				-->
			</c:forEach>
			
			</tbody>
		    </table>
		    <!-- 댓글보기 끝-->
 		 </section>
		<!-- ======= Footer ======= -->
	  	<%@include file="../include/footer.jsp" %>
	 	<!-- End Footer -->
	</body>
</html>