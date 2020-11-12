/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	//클릭 이벤트
	//$(document).on('click', '선택자', function() {

	//});
	
	//댓글입력 버튼 클릭 이벤트
	$(document).on('click', '.submitButton', function() {
		var memberName = $('.memberName').val();
		if (memberName == null || memberName == "") {
			alert("댓글을 입력하려면 로그인을 해야합니다.")
		} else {
			$("#comment1").submit();
		}
	});
	
	//x버튼 클릭시
	$(document).on('click', '#xbutton', function() {
		var commentNum = $(this).next().val();
		var boardNum = $('.boardNum').val();
		location.href='commentDelete.do?commentNum=' + commentNum + '&boardNum=' + boardNum ;
//		$("#comment2").submit();
	});
	
});

/* 함수선언 영역*/
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
	//};
})(jQuery);