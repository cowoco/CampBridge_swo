/**
 * tWrite.jsp파일
 */

$(function() {
	
	$("#T_saveBtn").click(function() {
		if ($("#t_btitle").val().length < 1) {
			alert("게시글 제목을 입력해주세요.");
			$("#t_btitle").focus();
			return false;
		}//if(게시글 제목 미입력시)

		if ($("#summernote").val().length < 1) {
			alert("게시글 내용을 입력해주세요.");
			$("#summernote").focus();
			return false;
		}//if(게시글 내용 미입력시)
		tipFrm.submit();
	});//#saveBtn
	
});//제이쿼리 최신

