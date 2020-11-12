/* 페이지 로딩 후 실행 */
$(document).ready(function(){
	
	initSubMenu();
	initTabMenuContent();
	
	//li 클릭
	$(document).on('click', '.contUl li', function() {
		var subMenu = $(this).attr('data-subMenu');
		location.href = 'userLetterInbox.do?subMenu=' + subMenu;
		
	});
	
	$(document).on('click', '#sendBtn', function() {
		alert('메세지가 전송되었습니다.');
		$('#letterSendForm').submit();
	});
	
	//클릭 이벤트
	$(document).on('click', '.tems', function() {
		var mesNum = $(this).children().children().val();
		location.href = 'letterDetail.do?mesNum=' + mesNum;
	});
});

/* 함수선언 영역*/
(function($){

	//탭메뉴 관련
	initSubMenu = function(){
		var selectedMenu = $('#subMenu').val(); //subMenu3
		
		$('.contUl li').each(function(index, element){
			var subMenu = $(element).attr('data-subMenu'); //subMenu1,..
			
			if(subMenu == selectedMenu){
				$(element).css('background-color','white');
				$(element).css('color','black');
				$(element).css('border-top','2px solid black');
				$(element).css('border-left','1px solid #999999');
				$(element).css('border-right','1px solid #999999');
			}
		});
	};
	//탭 메뉴의 내용
	initTabMenuContent = function(){
		$('.layoutTag').hide();
		
		var subMenu = $('#subMenu').val();
		
		if(subMenu == 'subMenu1'){
			$('.layoutTag').eq(0).show();
		}else {
			$('.layoutTag').eq(1).show();
		}

	};
	
	   //이전 버튼 이벤트
	   fn_prev = function(page, range, rangeSize) {
	      var page = ((range - 2) * rangeSize) + 1;
	      var range = range - 1;
	      var url = "userLetterInbox.do";
	      url = url + "?page=" + page;
	      url = url + "&range=" + range;
	      
	      location.href = url;
	   }

	   //페이지 번호 클릭
	   fn_pagination = function(page, range, subMenu, rangeSize) {
	      var url = "userLetterInbox.do";
	      url = url + "?page=" + page;
	      url = url + "&range=" + range;
	      url = url + "&subMenu=" + subMenu;
	      
	      location.href = url;   
	   }

	   //다음 버튼 이벤트
	   fn_next = function(page, range, rangeSize) {
	      var page = parseInt((range * rangeSize)) + 1;
	      var range = parseInt(range) + 1;
	      var url = "userLetterInbox.do";
	      url = url + "?page=" + page;
	      url = url + "&range=" + range;
	      
	      location.href = url;
	   }
})(jQuery);