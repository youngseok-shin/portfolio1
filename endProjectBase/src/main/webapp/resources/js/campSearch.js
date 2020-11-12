/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	if($('#chkDoNm').val() != ''){
		var doNm = $('#chkDoNm').val();
		var selectedSigungu = $('#selectedSi').val();

		
		$('.selectDetail').change(function() {
			var selectDetail = $(this).val();
		});
		
		checkLoc(doNm, selectedSigungu);
	}
	
	
	//시 군 구 선택
	$(document).on('change', '#chkDoNm', function() {
		var doNm = $(this).val();
		checkLoc(doNm);
	});

	//업데이트순, 조회순... 선택
	$(document).on('change', '.selectDetail', function() {
		var selDetails = $(this).val();
		var doNm = $('#chkDoNm').val();
		var sigunguNm = $('#sigungu').val();
		var facltNm = $('#facltNm').val();
		location.href='campSearch.do?selDetails=' + selDetails + '&doNm=' + doNm + '&sigunguNm=' + sigunguNm + '&facltNm=' + facltNm;
		
//		$('#campIdForm').submit();
	});
	
	
	
	
	
	//클릭 이벤트
	//$(document).on('click', '선택자', function() {

	//});
});

/* 함수선언 영역*/
(function($){
	
	//시 군 구 선택
	checkLoc = function(doNm, selectedSigungu){
		
		
		$.ajax({
		      url: 'campSearchAjax.do', //요청경로
		      type: 'post',
		      data: {'doNm':doNm }, //요청경로로 던질 파라메터. '파레메터명':파라메터
		      success: function(result) { // ajax 통신 성공 시 실행부분. result가 결과 데이터를 가진다.
		    	  //셀렉트박스의 내용을 다 지운다.
		    	  $('#sigungu').empty();
		    	  //셀렉트박스 내용을 채운다.
		    	  var str = '';
		    	$(result).each(function(index, element){
		    		
		    		console.log(selectedSigungu + ' / ' + element.sigunguNm);
		    		if(selectedSigungu == element.sigunguNm){
		    			str += '<option value="' + element.sigunguNm + '" selected >' + element.sigunguNm + '</option>';
		    		}
		    		else{
		    			str += '<option value="' + element.sigunguNm + '" >' + element.sigunguNm + '</option>';
		    		}
		    		
		    	});
		    	$('#sigungu').append('<option value="">전체</option>');
		    	$('#sigungu').append(str); 
		    	
		    	

		    	 
		      },
		      error: function(){ //ajax통신 실패 시 실행부분
		    	  alert('5555555류');
		      }
		});
		
	};

	
	//이전 버튼 이벤트
	fn_prev = function(page, range, rangeSize, doNm, sigunguNm) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "campSearch.do";
		var doNm = $('#chkDoNm').val();
		var sigunguNm = $('#sigungu').val();
		var selDetails = $('.selectDetail').val();
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&doNm=" + doNm;
		url = url + "&sigunguNm=" + sigunguNm;
		url = url + "&selDetails=" + selDetails;
		
		location.href = url;
	}

	//페이지 번호 클릭
	fn_pagination = function(page, range, rangeSize, doNm, sigunguNm) {
		var url = "campSearch.do";
		var doNm = $('#chkDoNm').val();
		var sigunguNm = $('#sigungu').val();
		var selDetails = $('.selectDetail').val();
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&doNm=" + doNm;
		url = url + "&sigunguNm=" + sigunguNm;
		url = url + "&selDetails=" + selDetails;
		
		location.href = url;	
	}

	//다음 버튼 이벤트
	fn_next = function(page, range, rangeSize, doNm, sigunguNm) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "campSearch.do";
		var doNm = $('#chkDoNm').val();
		var sigunguNm = $('#sigungu').val();
		var selDetails = $('.selectDetail').val();
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&doNm=" + doNm;
		url = url + "&sigunguNm=" + sigunguNm;
		url = url + "&selDetails=" + selDetails;
		
		location.href = url;
	}
	
	
	
	
	
	
})(jQuery);