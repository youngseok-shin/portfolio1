/* 페이지 로딩 후 실행 */
$(document).ready(function(){

		//$('.contUl li').bind("click",function(){});
		initSubMenu();
		
		
		//탭 메뉴중 어떤 메뉴를 보여줄지 결정짓는 초기화
		initTabMenuContent();
		
		//li 클릭
		$(document).on('click', '.contUl li', function() {
			var subMenu = $(this).attr('data-subMenu');
			location.href = 'myPage.do?subMenu=' + subMenu;
			
			
//			$('.contUl li').each(function(index, element){
//				$(element).css('background-color','#999999');
//				$(element).css('border-top','0px');
//				$(element).css('color','white');
//				$(element).css('border-left','1px solid white');
//				$(element).css('border-right','1px solid white');
//			});
//			$(this).css('background-color','white');
//			$(this).css('color','black');
//			$(this).css('border-top','2px solid black');
//			$(this).css('border-left','1px solid #999999');
//			$(this).css('border-right','1px solid #999999');
		});
		
		
//		
//		$(document).on('click', '.contLi', function() {
//			var selectedTagIndex = $(this).index();
//			
//			$('.layoutTag').hide();
//			
//			$('.layoutTag').each(function(index, element){
//				if(index == selectedTagIndex){
//					$('.layoutTag').eq(index).show();
//				}
//			});
//		});
		
	//클릭 이벤트
	$(document).on('click', '#inMemInfoChPw', function() {
		inMemInfoChPw();
		
	});
	
	
	$(document).on('click', '#inMyInfoChPwBtn', function() {
		
		var realPw = $('#realPw').val();//실제 기존비번
		var realPw1 = $('#realPw1').val();//인풋태그에 입력한 기존 비번
		var newPw1 = $('#newPw1').val();//인풋태그에 입력한 새로운 비번1
		var newPw2 = $('#newPw2').val();//인풋태그에 입력한 새로운 비번2
		
		//기존 비밀번호와 새로운 비밀번호가 같은지 검사
		if(realPw == newPw1){
			alert('기존 비밀번호와 같습니다.');
			return;
		}
		//실제 기존비번과 내가 기존비번에 입력환 값이 같은지도 검사
		if(realPw != realPw1){
			alert('기존 비밀번호가 틀립니다.');
			return;
		}
		//새로운 비밀번호를 두번 똑같이 작성했는지 검사
		if(newPw1 != newPw2){
			alert('입력한 비밀번호가 일치하지 않습니다.');
			return;
		}
		//비밀번호 변경
		if(realPw != newPw1 && realPw == realPw1 && newPw1 == newPw2) {
			location.href = 'updatePwInfo.do?newPw1='+newPw1;
			alert('비밀번호가 변경되었습니다.');
		}

	});
	
	
	//찜삭제 클릭 이벤트
	$(document).on('click', '.selectDel', function() {
		var memberNum = $('.memberNum').val();
		var campNum = $(this).next().val();
		var facltNm = $(this).next().next().val();
		
		var chk = confirm(facltNm + " 을(를) 찜삭제하시겠습니까?")
		if (chk == true) {
			location.href = 'deleteSelect.do?memberNum=' + memberNum + '&campNum=' + campNum;
		}
		
	});
	
	//리뷰타이틀 클릭 이벤트
	$(document).on('click', '#boardTitle', function() {
		var boardNum = $(this).prev().text();
		location.href='board12.do?boardNum=' + boardNum;
	});
	
});

/* 함수선언 영역*/
(function($){
	//aaa라는 함수선언
	//aaa = function(){
	
	//};
	initSubMenu = function(){
		var selectedMenu = $('#subMenu').val(); //subMenu4
		
		$('.contUl li').each(function(index, element){
			var subMenu = $(element).attr('data-subMenu'); //subMenu1,..
			
			if(subMenu == selectedMenu){
				$(element).css('background-color','white');
				$(element).css('color','black');
				$(element).css('border-top','2px solid black');
				$(element).css('border-left','1px solid #999999');
				$(element).css('border-right','1px solid #999999');
				
//				$('.contUl li').last().css('background-color','white');
//				$('.contUl li').last().css('color','black');
//				$('.contUl li').last().css('border-top','2px solid black');
//				$('.contUl li').last().css('border-left','1px solid #999999');
//				$('.contUl li').last().css('border-right','1px solid #999999');
			}
		});
	};
	
	initTabMenuContent = function(){
		$('.layoutTag').hide();
		
		var subMenu = $('#subMenu').val();
		
		if(subMenu == 'subMenu1'){
			$('.layoutTag').eq(0).show();
		}
		else if(subMenu == 'subMenu2'){
			$('.layoutTag').eq(1).show();
		}
		else if(subMenu == 'subMenu3'){
			$('.layoutTag').eq(2).show();
		}
		else{
			$('.layoutTag').eq(3).show();
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
	
	//비밀번호 변경 
	inMemInfoChPw = function(){
		
  		$('#MyInfo').empty();
		
		var str = '';
		
		str += '<p>&nbsp; </p>';
		str += '<h4 style="margin: 15px;">';
		str += '&nbsp;&nbsp;비밀번호 변경</h4>';
		str += '<table class="listBoard" style="border-spacing: 2px;">';
		str += '<colgroup>';
		str += '	<col width="25%">';
		str += '	<col width="*">';
		str += '</colgroup>';
		str += '<tr class="boldBorder" >';
		str += '	<td style="font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;" >기존 비밀번호</td>';
		str += '	<td style="text-align: left;">';
		str += '		<input type="password" class="form-control" id="realPw1">';
		str += '	</td>';
		str += '</tr>';
		str += '<tr>';
		str += '	<td style="font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;">변경 비밀번호</td>';
		str += '	<td style="text-align: left;">';
		str += '		<input type="password" class="form-control" id="newPw1">';
		str += '	</td>';
		str += '</tr>';
		str += '<tr style="border-bottom: 2px solid #474747; font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold; ">';
		str += '	<td>변경 비밀번호 확인</td>';
		str += '	<td style="text-align: left;">';
		str += '		<input type="password" class="form-control" id="newPw2">';
		str += '	</td>';
		str += '</tr>';
		str += '</table>';
		str += '<div align="center">';
		str += '	<input type="button" id="inMyInfoChPwBtn" value="비밀번호 변경" class="btn btn-primary"  style="margin: 25px; padding: 15px; font-weight: bold;">';
		str += '</div>';
		
		
		$('#MyInfo').append(str);
		    	  

	};
	
	
})(jQuery);