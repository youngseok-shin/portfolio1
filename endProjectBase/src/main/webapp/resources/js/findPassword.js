/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	//$('.loadingio-spinner-spinner-2iaqhfxcb3s').hide(); //첫 시작시 로딩바를 숨겨준다.
	
	//클릭 이벤트
	$(document).on('click', '#searchBtn', function() {
		sendEmail();
	});
});

/* 함수선언 영역*/
(function($){
	//sendEmail라는 함수선언
	sendEmail = function(){
		var memberId = $('#memberId').val();
		var email = $('#email').val();
		//$('.loadingio-spinner-spinner-2iaqhfxcb3s').show(); 
		//bgLayerOpen();
		$('#loadingImg').css('display', 'block'); 
		//Ajax 시작
		$.ajax({
		      url: 'searchPw.do', //요청경로
		      type: 'post',
		      data: {'memberId':memberId, 'email':email}, //요청경로로 던질 파라메터. '파레메터명':파라메터
		      success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
		    	  $('#loadingImg').css('display', 'none');
		    	  //bgLayerClear();
		    	  alert('이메일로 임시비밀번호가 전송되었습니다.');
		    	  
		    	  location.href = 'login.do';
			  
		      },
		      error: function(){ //ajax통신 실패 시 실행부분
		    	  alert('오오오오오오류');
		      }
		});
	};
	
	bgLayerOpen = function() {
	    if(!$('.bgLayer').length) {
	        $('<div class="bgLayer"></div>').appendTo($('.container-fluid'));
	    }
	    var object = $(".bgLayer");
	    var w = $(document).width()+12;
	    var h = $(document).height();


	    object.css({'width':w,'height':h}); 
	    object.fadeIn(500);   //생성되는 시간 설정
	}

	bgLayerClear = function(){
		var object = $('.bgLayer');
		if (object.length) {
			object.fadeOut(500, function() {
				object.remove();
			});

		}
	}



})(jQuery);