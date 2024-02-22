/*-**
/*- *  tSearch.js
 */

 /* 뷰페이지 */
 document.addEventListener('DOMContentLoaded', function() {
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center: new kakao.maps.LatLng(33.450701, 126.2896689), //지도의 중심좌표.
			level: 3 //지도의 레벨(확대, 축소 정도)
		};
		
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	});
$(function(){
	
	//***** 체크박스 선택된 체크 키워드 검색 기능  시작 *****/
	$("#s_Btn").click(function(){
		//체크된 값
		var themaEnvrnCl = [];
		$("input[type='checkbox']:checked").each(function(){
			themaEnvrnCl.push($(this).val());
		});
		if (themaEnvrnCl.length < 1) {
			 alert("테마를 선택하셔야 검색이 가능합니다.");
		    return false;
		}
		console.log("click :"+themaEnvrnCl);
		//ajax 
		 $.ajax({
			 url:"/search/theme_Search",
			 type:"post",
			 data:{"themaEnvrnCl":themaEnvrnCl},
			 dataType:"json",
			 success:function(data){
				 alert("성공");
				 
        	     let hdata = "";
        	     for(let i=0; i<data.length; i++){
        	    	 console.log("전체데이터 : "+data);
        	    	 hdata += '<div class="t_contbox">';
        	    	 if(data[i].firstImageUrl != null){
    	                    hdata += '<div class="image"><img class="image" src="' + data[i].firstImageUrl + '"></div>';
	                 }else{
    	                    hdata += '<div class="image"><img class="image" src="../assets/img/noPhoto_s.jpg"></div>';
    	                }
        	    	 	hdata += '<div class="cont">';
	                    hdata += '<strong>' + data[i].facltNm + '</strong>';
	                    hdata += '<p>' + data[i].addr1 + '</p>';
	                    
	                    if (data[i].tel == null) {
	                        hdata += '<p>등록된 전화 번호가 없습니다.</p>';
	                    } else {
	                        hdata += '<p>' + data[i].tel + '</p>';
	                    }
	                    
	                    if(data[i].lineIntro != null){
    	                    hdata += '<p>' + data[i].lineIntro + '</p>';	
	                    }else{
	                    	hdata += '<p> </p>'
	                    }
	                    
	                    hdata += '<a href="tSearch_view?contentId=' + data[i].contentId + '">바로가기</a>';
	                    hdata += '</div>';
	                    hdata += '</div>';
        	     }//for
        	     $(".item").html(hdata);
			 },//success
			 error:function(){
				 alert("실패");
			 }//error
		 });//ajax
	});//click-s_Btn
	//***** 체크박스 선택된 체크 키워드 검색 기능 끝 *****/
	//************ 더보기 버튼 시작 *************/
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
    	        },//success
    			error:function(){
    				alert("더보기 실패");
    			}
    		});//ajax
    	});//click-tsMoreBtn
		//************ 더보기 버튼 끝 *************/ 		
});//jqery