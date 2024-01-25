/**
 * fWrite.jsp파일
 */
$(function() {
	$('#summernote').summernote({
		height: 300,                // 에디터 높이
		minHeight: 300,          // 에디터 최소 높이
		maxHeight: 300,         // 에디터 최대 높이
		focus: true,                 // 에디터 로딩후 포커스를 맞출지 여부
		lang: "ko-KR",         // 한글 설정
		placeholder: ' ※ 최대 2048자까지 쓸 수 있습니다', //placeholder 설정
		toolbar: [
			// [groupName, [list of button]]
			['fontname', ['fontname']], //글꼴 설정
			['fontsize', ['fontsize']], //글자 크기
			['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
			['color', ['forecolor', 'color']],
			['table', ['table']],
			['para', ['ul', 'ol', 'paragraph']],
			['height', ['height']],
			['insert', ['picture', 'link', 'video']],
			['view', ['codeview', 'fullscreen', 'help']]
		],
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체'],
		fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72'],

		callbacks: { //여기 부분이 이미지를 첨부하는 부분
			onImageUpload: function(files) {
				//하단함수 호출
				uploadImage(files[0], this); //이미지 업로드 함수호출 - 이미지파일, 현재위치값
			},
			onPaste: function(e) {
				var clipboardData = e.originalEvent.clipboardData;
				if (clipboardData && clipboardData.items &&
					clipboardData.items.length) {
					var item = clipboardData.items[0];
					if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
						e.preventDefault();
					}//if
				}//if
			}//onPaste
		} //callbacks
	});//summernote	
	
	$("#saveBtn").click(function() {
		if ($("#f_btitle").val().length < 1) {
			alert("게시글 제목을 입력해주세요.");
			$("#f_btitle").focus();
			return false;
		}//if(게시글 제목 미입력시)

		if ($("#summernote").val().length < 1) {
			alert("게시글 내용을 입력해주세요.");
			$("#summernote").focus();
			return false;
		}//if(게시글 내용 미입력시)
	});//#saveBtn
	
});//제이쿼리 최신

//♠ajax로 파일을 서버에 전송하는 부분
function uploadImage(file, this_location) {//매개변수 - file: 이미지 파일, 현재위치값(this_location)
	var fdata = new FormData(); //ajax에서 전송할때 form형태로 전송
	fdata.append("file", file);//file이미지를 첨부
	//♠ajax
	$.ajax({
		url: "/uploadImage",
		type: "post",
		dataType: "text",//파일을 받는 형태
		data: fdata,
		cache: false,//남아있는 데이터 정보를 새롭게 정리
		contentType: false,// 보내는 형태 default값 : application/x-www.-form-urlencoded
		processData: false,//query String 형태로 보내지 않음. // [http://localhost8000/bno1&]
		enctype: "multipart/form-data",
		success: function(data) { //서버에 가서 이미지를 저장후 파일이름과 저장위치를 리턴
			//data : /upload/8489744_1.jpg
			$(this_location).summernote('editor.insertImage', data); //js에서 함수호출해서 위치값에 데이터를 저장.
		},//success
		error: function() {
			alert("실패");
		}//error
	});//♠ajaxa
}//uploadImage