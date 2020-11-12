/* 페이지 로딩 후 실행 
$(document).ready(function(){
	
	
	//클릭 이벤트 +
	  // 수량변경 - 이벤트 델리게이션으로 이벤트 종류 구분해 처리
 

	var cnt = 0;
	var dispPrice = $('#dispPrice').text();
	var totPrice = 0;

	
	var cnt = 0;
	 var number = $('#dispPrice').text();
	var dispPrice = number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	var totPrice = 0;
	
	

	

	
	//클릭 이벤트 -
	$(document).on('change keyup click', '#btnIncItem', function() {
		
	    
		cnt = cnt+1;
		$('#textNum').val(cnt);
		totPrice = cnt * dispPrice;
		
	
		$('#totPrice').text(totPrice);
		
		
	});
	
	$(document).on('change keyup click', '#btnDecItem', function() {
		cnt = cnt-1;
		$('#textNum').val(cnt);
		totPrice = cnt * dispPrice;
		$('#totPrice').text(totPrice);
	});

});





 함수선언 영역
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
	
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}	
	
	//};
})(jQuery);*/