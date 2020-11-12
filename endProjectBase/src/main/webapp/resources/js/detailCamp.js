/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	$('.contUl li').bind("click",function(){});
	$('.contUl li').first().css('background-color','white');
	$('.contUl li').first().css('color','black');
	$('.contUl li').first().css('border-top','2px solid black');
	$('.contUl li').first().css('border-left','1px solid #999999');
	$('.contUl li').first().css('border-right','1px solid #999999');
	
	//탭 메뉴 초기화
	initTabMenu();
	
	//클릭 이벤트
	//$(document).on('click', '선택자', function() {

	//});
	
	//li 클릭
	$(document).on('click', '.contUl li', function() {
		$('.contUl li').each(function(index, element){
			$(element).css('background-color','#999999');
			$(element).css('border-top','0px');
			$(element).css('color','white');
			$(element).css('border-left','1px solid white');
			$(element).css('border-right','1px solid white');
		});
		$(this).css('background-color','white');
		$(this).css('color','black');
		$(this).css('border-top','2px solid black');
		$(this).css('border-left','1px solid #999999');
		$(this).css('border-right','1px solid #999999');
	});
	
	
	
	$(document).on('click', '.contLi', function() {
		var selectedTagIndex = $(this).index();
		
		$('.layoutTag').hide();
		
		$('.layoutTag').each(function(index, element){
			if(index == selectedTagIndex){
				$('.layoutTag').eq(index).show();
			}
		});
	});
	
	//후기작성 버튼 클릭 이벤트
	$(document).on('click', '.writeBtn', function() {
		var loginSession = $('.loginSession').val();
		var facltNm = $('#campNm').val();
		var doNm = $('.doNm').val();
		var sigunguNm = $('.sigunguNm').val();
		
		if (loginSession == null || loginSession == "") {
			var aa = confirm("글을 작성하시려면 로그인 해야합니다. 로그인 하시겠습니까?");
			if (aa == true) {
				location.href="login.do"
			}
		} else {
			location.href='board3.do?doNm=' + doNm + '&sigunguNm=' + sigunguNm + '&facltNm=' + facltNm
		}
		
	});
	
	
	//추천하기 버튼 클릭 이벤트
	$(document).on('click', '.tbBtn1', function() {
		var campNum = $(this).val();
		var memberNum = $('.chkMemberNum').val();
		
		selectBtn1(campNum, memberNum);
	});
	
	//찜하기 버튼 클릭 이벤트
	$(document).on('click', '.tbBtn2', function() {
		var campNum = $(this).val();
		var memberNum = $('.chkMemberNum').val();
		
		selectBtn2(campNum, memberNum);
	});
	
	
	
});

/* 함수선언 영역*/
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
	//};
	
	initTabMenu = function(){
		$('.layoutTag').hide();
		$('.layoutTag').first().show();
	};
	
	
	
	//추천하기 버튼 클릭
	selectBtn1 = function(campNum, memberNum){
		
		$.ajax({
			url: 'selectRecommend.do', //요청경로
			type: 'post',
			data: {'campNum':campNum, 'memberNum':memberNum }, //요청경로로 던질 파라메터. '파레메터명':파라메터
			success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
				if(result){
					alert("이미 추천한 캠핑장입니다.");
				}
				else{
					alert("해당 캠핑장을 추천하였습니다.");
				}
			},
			error: function(){ //ajax통신 실패 시 실행부분
				alert('5555555류');
			}
		});
		
	};
	
	//찜하기 버튼 클릭
	selectBtn2 = function(campNum, memberNum){
		
		$.ajax({
		      url: 'selectCamp.do', //요청경로
		      type: 'post',
		      data: {'campNum':campNum, 'memberNum':memberNum }, //요청경로로 던질 파라메터. '파레메터명':파라메터
		      success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
		    	  if(result){
		    		  alert("이미 찜한 캠핑장입니다.");
		    	  }
		    	  else{
		    		  alert("해당 캠핑장을 찜 목록에 추가하였습니다.");
		    	  }
		      },
		      error: function(){ //ajax통신 실패 시 실행부분
		    	  alert('5555555류');
		      }
		});
		
	};
	
	
	
	
	
})(jQuery);