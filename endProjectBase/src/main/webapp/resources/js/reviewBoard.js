/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	//클릭 이벤트
	//$(document).on('click', '선택자', function() {

	//});
	
	//시, 도 선택
	$(document).on('change', '#chkDoNm', function() {
		var doNm = $(this).val();
		checkLoc(doNm);
		
	});
	
	//군, 구 선택
	$(document).on('change', '#chkSigungu', function() {
		var doNm = $('#chkDoNm').val();
		var sigunguNm = $(this).val();
		checkCampSite(doNm, sigunguNm);
	});
	
	
	//클릭 이벤트
	$(document).on('click', '.btn_blue', function() {
		var chkSite = $('#chkSite').val();
		var boardTitle = $('.boardTitle').val();
		if (boardTitle == null || boardTitle == "") {
			alert("제목을 입력해주세요.")
		}
		else if (chkSite == 'facltNm') {
			alert("캠핑장을 선택해주세요.");
		}
		
		else {
			$("form").submit();
		}
	});
	
	
});

/* 함수선언 영역*/
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
	//};
	
	//시 군 구 선택
	checkLoc = function(doNm){
		
		$.ajax({
		      url: 'campSearchAjax.do', //요청경로
		      type: 'post',
		      data: {'doNm':doNm }, //요청경로로 던질 파라메터. '파레메터명':파라메터
		      success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
		    	  //셀렉트박스의 내용을 다 지운다.
		    	  $('#chkSigungu').empty();
		    	  //셀렉트박스 내용을 채운다.
		    	  var str = '';
		    	$(result).each(function(index, element){
		    			str += '<option value="' + element.sigunguNm + '" >' + element.sigunguNm + '</option>';
		    	});
		    	$('#chkSigungu').append('<option value="">전체 (구, 군)</option>');
		    	$('#chkSigungu').append(str); 
		    	
		    	$('#chkSite').empty();
		    	$('#chkSite').append('<option value="">전체 (캠핑장)</option>');
		    	 
		      },
		      error: function(){ //ajax통신 실패 시 실행부분
		    	  alert('5555555류');
		      }
		});
			
	};
	
	
	checkCampSite = function(doNm, sigunguNm){
		
		$.ajax({
		      url: 'campSearchAjax2.do', //요청경로
		      type: 'post',
		      data: {'doNm':doNm, 'sigunguNm':sigunguNm }, //요청경로로 던질 파라메터. '파레메터명':파라메터
		      success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
		    	  //셀렉트박스의 내용을 다 지운다.
		    	  $('#chkSite').empty();
		    	  //셀렉트박스 내용을 채운다.
		    	  var str = '';
		    	$(result).each(function(index, element){
		    			str += '<option value="' + element.facltNm + '" >' + element.facltNm + '</option>';
		    	});
		    	$('#chkSite').append(str); 
		    	
		    	

		    	 
		      },
		      error: function(){ //ajax통신 실패 시 실행부분
		    	  alert('5555555류');
		      }
		});
		
	};
	
	
})(jQuery);