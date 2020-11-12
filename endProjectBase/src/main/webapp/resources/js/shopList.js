/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	//클릭 이벤트
	$(document).on('click', '#myCartBtn', function() {
		var memberId = $('#memberId').val();
		if(memberId == "" || memberId == null) {
			alert('로그인 후 쇼핑몰을 이용해보세요!');
			location.href = 'login.do';
		}else {
			location.href = 'shopCart.do';
		}
	});
});

/* 함수선언 영역*/
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
	//};
})(jQuery);