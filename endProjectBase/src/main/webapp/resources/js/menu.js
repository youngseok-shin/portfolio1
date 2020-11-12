/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	 $('#newMsgSpan').hide();
	
	//새로운 쪽지가 있는지 3초마다 검사
	heckNewMsg = setInterval(function() {
		var memberId = $('#loginId').val();
		
		//로그인정보가 없으면 새로운 쪽지가 있는지 검사 하지 않음.
		if(memberId == ''){
			return;
		}
		else{
			selectNewMsgCnt();
		}
	}, 3000);
	
	
	
	
	//클릭 이벤트
//	$(document).on('click', '#menu_camp', function() {
//		if($('#sub_menu_camp').hasClass("hidden")){
//			$('#sub_menu_camp').removeClass('hidden');
//			
//		}
//		else{
//			$('#sub_menu_camp').addClass('hidden');
//		}
//	});
	
	//사이드바 메뉴 클릭
	$(document).on('click', '.main_menu', function() {

		if (!$(this).next().hasClass("hidden")) {
			$('.sub_menu').addClass('hidden');
		} else {
			$('.sub_menu').addClass('hidden');
			$(this).next().removeClass('hidden');
		}


	});
	
	//logout 클릭 시...
	$(document).on('click', '#logoutSpan', function() {
		alert('로그아웃되었습니다.');
		location.href = 'logout.do';
	});
});

/* 함수선언 영역*/
(function($){
//	//aaa라는 함수선언
	initPage = function(){
		$('.hidden')
	};
	
	selectNewMsgCnt = function(){
		$.ajax({
	      url: 'isNewMsg.do', //요청경로
	      type: 'post',
	      data: {}, //요청경로로 던질 파라메터. '파레메터명':파라메터
	      success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
	    	  if(result == 0){
	    		  $('#newMsgSpan').hide();
	    	  }
	    	  else{
	    		  $('#newMsgSpan').show();
	    	  }
	      },
	      error: function(){ //ajax통신 실패 시 실행부분
	    	  alert('오오오오오오류');
	      }
		});
	};
	
	
})(jQuery);