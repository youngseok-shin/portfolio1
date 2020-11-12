/* 페이지 로딩 후 실행 */
$(document).ready(function() {



	// 전체 체크박스 클릭시
	$(document).on('click', '#checkAll', function() {
		// 체크 유무 확인
		var isChecked = $('#checkAll').is(':checked');

		if (isChecked) {
			$('.checkEach').prop('checked', true);
			setTotalPrice();
		} else {
			$('.checkEach').prop('checked', false);
			setTotalPrice();
		}
	});
	
	// 수량변경
	$(document).on('change', '.quantity', function() {
		setTotalPrice();
	});
	
	
	// 각 상품의 체크박스 클릭시
	$(document).on('click', '.checkEach', function() {
			setTotalPrice();
	});
	
	// 선택삭제버튼클릭시
	$(document).on('click', '#deleteAll', function() {
		var cartIds = [];
		$('.checkEach:checked').each(function(index,element){
			var cartId = $(element).val();
			cartIds[index] = cartId;
		});
		
		location.href = 'deleteCart.do?cartIds=' + cartIds; 
	});

});



$(document).on('click', '#gotoBuy', function() {
	
	var cartIdes = [];
	
	$('.checkEach:checked').each(function(index,element){
		
		var cartId = $(element).val();
		cartIdes[index] = cartId;
		
	});
	
	location.href = 'shopBuy.do?cartIdes=' +cartIdes;
	
});




/* 함수선언 영역 */
(function($) {
	setTotalPrice = function() {
		
		var totalPrice = 0;
		
		$('.checkEach:checked').each(
				
				function(index, element) {

					var goodsCnt = $(element).parent().parent().parent().children().eq(4).children(':first').children(':first').val();
					var priceEach = $(element).parent().parent().parent().children().eq(3).children(':first').text();
									
					totalPrice += priceEach * goodsCnt;

				});

		$('.totalPrice').text(totalPrice);

	};
	

})(jQuery);