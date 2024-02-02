/**
 * tView.jsp파일
 */
let temp=0;

$(function(){
	$(".tDelBtn").click(function(){
	    			if(confirm("게시글을 삭제하시겠습니까?")){
	    				$("#t_VFrm").attr("action","tDelete").submit();
	     }
	  });//tDelBtn//게시글 삭제
//------------------- 댓글 1개 저장 시작 --------------------
	  $("#replybtn").click(function(){
		
		let t_ccontent = $(".t_replyType").val();
    	let t_cpw = $(".t_replynum").val();
    	
    	if($(".t_replyType").val().length<1){
    		alert("댓글을 입력하셔야 저장 가능합니다.");
    		$("t_replyType").focus();
    		return false;
    	}
    	
    	$.ajax({
    		url:"/community/t_BCommentInsert",
    		data:{"t_ccontent":t_ccontent,"t_cpw":t_cpw,"t_bno":t_bno},
    		type:"post",
    		dataType:"json",
    		success:function(data){
    			alert("댓글이 저장되었습니다.");
    			console.log(data);
    			//태그 입력시작
    			let hdata="";
    			hdata +='<tr id="'+data.t_cno+'">';
    			hdata +='<td><strong>댓글 작성자</strong>|<span style="color: blue;">'+data.id+'</span>&nbsp;&nbsp;&nbsp;<span>'+data.t_cdate+'</span>';
    			hdata +='<li id="replyTxt">&nbsp;&nbsp;'+data.t_ccontent+'</li>';
    			hdata +='<li id="replyBtn">';
    			hdata +='<button class="rDelBtn" style="cursor: pointer;">삭제</button>&nbsp';
    			hdata +='<button class="rUBtn" style="cursor: pointer;">수정</button>';
    			hdata +='</li>';
    			hdata +='</td>';
    			hdata +='</tr>';
    			$(".replyBox").prepend(hdata);
    			
    			//글쓴 내용 지우기 
    			$(".t_replyType").val("");
    			$(".t_replynum").val("");
    		
    		},
    		error:function(){
    			alert("실패");
    		}
    		
    	});// ajax
	});//replybtn - 등록버튼을 클릭해야지만
	//------------------- 댓글 1개 저장 끝 --------------------	
	//------------------- 댓글 삭제 시작 --------------------
					 
	$(document).on("click",".rDelBtn",function(){
		//alert("부모의 id : "+$(this).parent().parent().parent().attr("id"));
		//alert("부모의  : "+Number($(".tCount").text()));
		
		let t_cno= $(this).parent().parent().parent().attr("id");
		let tCount = Number($(".tCount").text());
		if(confirm("댓글을 삭제하겠습니까?")){
			//ajax
			$.ajax({
				url:"/community/t_BCommentDelete",
				type:"post",
				data:{"t_cno":t_cno},
				dataType:"text",
				success:function(data){
					console.log(data);
					$("#"+t_cno).remove();
					$(".tCount").text(tCount-1);
				},
				error:function(){
					alert("실패");
				}
			});//ajax
			alert("댓글이 삭제 되었습니다.");
		}//if
	});//rDelBtn //댓글 삭제버튼
					
  //------------------- 댓글 삭제 끝 --------------------
  //------------------- 댓글 수정 시작 --------------------
  	//********** 댓글 수정창 열기 시작 **************
	$(document).on("click",".tcUpdateBtn",function(){
		if(temp != 0){
			alert("다른 입력창이 열려 있습니다.");
			return false;
		}//if 다중창 방지
		
		alert("댓글을 수정합니다.");
		//alert($(this).parent().parent().parent().attr("id"));
		//alert($(this).parent().prev().text());
		//alert($(this).parent().parent().find("span").text());
	
		let t_cno= $(this).parent().parent().parent().attr("id");
		let t_ccontent =$(this).parent().prev().text();
		let t_cdate = $(this).parent().parent().find("span").text();
		let id = "aaa";
		
		let hdata = '';
		hdata +='<td><strong>댓글 작성자</strong>|<strong style="color: blue;">'+id+'</strong>&nbsp;&nbsp;&nbsp;<span>'+t_cdate+'</span>';
		hdata +='<li id="replyTxt"><textarea cols="145%">'+t_ccontent+'</textarea></li>';
		hdata +='<li id="replyBtn">';
		hdata +='<button class="rCanBtn">취소</button>&nbsp;';
		hdata +='<button class="rSaveBtn">저장</button>';
		hdata +='</li>';
		hdata +='</td>';
	
		
		
		$("#"+t_cno).html(hdata); //기존 html 삭제 후 추가
		temp=1; //수정창 열기
		
		
	});//tcUpdateBtn //댓글 수정창 열기
	//********** 댓글 수정창 열기 끝 **************

  //------------------- 댓글 수정 끝 ---------------------
  




});//function