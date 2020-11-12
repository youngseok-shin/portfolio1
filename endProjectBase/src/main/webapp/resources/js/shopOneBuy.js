/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	
	$(document).on('click', '#cancleBtn', function() {
		var isConfirm = confirm('정말 취소 하시겠습니까?');
		if(isConfirm) {
			history.back();
		}
	});
	
	// 수량변경
	$(document).on('change', '#goodsCnt', function() {
		var goodsCnt = $('#goodsCnt').val(); //수량을 받고
        var dispPrice = $('#dispPrice').text(); //가격을 받고
        var result = goodsCnt * dispPrice;
        $('#totalPrice').text(result);  //수량과 가격을 곱하고
	
	});
	
});





/* 함수선언 영역*/
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
})(jQuery);