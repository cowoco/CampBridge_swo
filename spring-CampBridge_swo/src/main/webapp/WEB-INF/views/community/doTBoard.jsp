<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <title>doTBoard</title>


</head>
	<body>
		<c:choose>
				<script>
				 alert("게시글이 저장되었습니다.");
				 location.href="tList";
				</script>			
		</c:choose>
	</body>
</html>