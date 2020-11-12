/* 페이지 로딩 후 실행 */
$(document).ready(function(){

	// 장바구니 버튼클릭시
	$(document).on('click', '#goCart', function() {
		insertCart();
	});
	
	
	
	// 수량변경
	$(document).on('click', '#goodsCnt', function() {
		
		var goodsCnt = $('#goodsCnt').val(); //수량을 받고
        var dispPrice = $('#dispPrice').text(); //가격을 받고
         var result = goodsCnt * dispPrice;
        $('#totPrice').text(result);  //수량과 가격을 곱하고
	
	});
	
	// 바로구매 버튼클릭시
	$(document).on('click', '#oneBuyBtn', function() {
		var goodsCnt = $('#goodsCnt').val();
		var selectColor = $('#selectColor').val();
		var goodsId = $('#goodsId').val();
		location.href ='shopOneBuy.do?goodsCnt='+goodsCnt+'&goodsId='+goodsId + '&goodsColor=' + selectColor ;
	});
	
	
});

/* 함수선언 영역*/
(function($) {
	// 장바구니 담기
	insertCart = function() {

		var goodsCnt = $('#goodsCnt').val();
		var goodsId = $('#goodsId').val();
		var goodsColor = $('#selectColor').val();
		// Ajax 시작

		$.ajax({
			url : 'insertCart.do', // 요청경로
			type : 'post',
			data : {
			'goodsId' : goodsId,
				'goodsCnt' : goodsCnt,
				'goodsColor' : goodsColor
			}, // 요청경로로 던질 파라메터. '파레메터명':파라메터
			success : function(result) { // ajax 통신 성공 시 실행부분. result가 결과
											// 데이터를 가진다.
				var result1 = confirm("장바구니로 가시겠습니까?");

				if (result1) {
					location.href = 'shopCart.do?goodsId=' +goodsId;
				}

			},
			error : function() { // ajax통신 실패 시 실행부분
			alert('실패');
			}
		});

	};
})(jQuery);