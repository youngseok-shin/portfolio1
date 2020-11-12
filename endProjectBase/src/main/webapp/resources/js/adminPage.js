/* 페이지 로딩 후 실행 */
$(document).ready(function(){

		//$('.contUl li').bind("click",function(){});
		initSubMenu();
		
		
		//탭 메뉴중 어떤 메뉴를 보여줄지 결정짓는 초기화
		initTabMenuContent();
		
		//li 클릭
		$(document).on('click', '.contUl li', function() {
			var subMenu = $(this).attr('data-subMenu');
			location.href = 'admin.do?subMenu=' + subMenu;
			
		});
		
	//클릭 이벤트
//	$(document).on('click', '#', function() {
//		
//	});
	
	//전체체크박스 클릭 이벤트
	$(document).on('click', '#checkAll', function() {
		//체크유무 확인
		var isChecked = $('#checkAll').is(':checked');
		
		if(isChecked){
			$('.chk').prop('checked', true);
		}else {
			$('.chk').prop('checked', false);
		}
		
	});
		
	//각 체크박스 클릭 이벤트
	$(document).on('click', '#delBtn', function() {
		var checkCnt = $('.chk:checked').length;
		
		var memberNums = new Array();
		$('.chk:checked').each(function(index,element){
			var memberNum = $(element).val();
			memberNums[index] = memberNum;
		});
		location.href = 'delMember.do?memberNums=' + memberNums;
	});
});

/* 함수선언 영역*/
(function($){
//	//chkDeleteMem라는 함수선언
//	chkDeleteMem = function(){
//		
//	};
	
	
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
		}else if(subMenu == 'subMenu2'){
			$('.layoutTag').eq(1).show();
		}else{
			$('.layoutTag').eq(2).show();
		}
		
//var selectedTagIndex = $(this).index();
//		
//		$('.layoutTag').hide();
//		
//		$('.layoutTag').each(function(index, element){
//			if(index == selectedTagIndex){
//				$('.layoutTag').eq(index).show();
//			}
//		});
	};
	

	
})(jQuery);