/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	//클릭 이벤트
	//$(document).on('click', '선택자', function() {

	//});
	
	//글쓰기 버튼 클릭 이벤트
	$(document).on('click', '.btn_blue', function() {
		var loginSession = $('.loginSession').val();

		if (loginSession == null || loginSession == "") {
			alert("글을 작성하시려면 로그인 해야합니다.");
			location.href="login.do"
		} else {
			location.href='board3.do'
		}
		
	});
});

/* 함수선언 영역*/
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
	//};
})(jQuery);