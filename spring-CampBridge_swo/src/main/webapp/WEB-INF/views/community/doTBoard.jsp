<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>doTBoard</title>
	</head>
	<body>
		<c:choose>
			<c:when test="${result=='tWrite_Save'}">
				<script>
				 alert("게시글이 저장되었습니다.");
				 location.href="tList";
				</script>			
			</c:when>
			<c:when test="${result=='tView_Del'}">
				<script>
				 alert("게시글이 삭제 되었습니다.");
				 location.href="tList";
				</script>			
			</c:when>
			<c:when test="${result=='tUpdate'}">
				<script>
				 alert("게시글이 수정 되었습니다.");
				 location.href="tList";
				</script>			
			</c:when>
		</c:choose>
	</body>
</html>>