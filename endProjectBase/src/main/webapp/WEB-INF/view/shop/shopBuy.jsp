<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매하기 페이지</title>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">
.carousel-item>img {
	width: 100%;
}

.V2 .cart-wrap {
	margin: 106px 0 80px;
}

.cart-wrap .cart-step {
	margin-top: -54px;
}

.cart-wrap .cart-step {
	float: right;
	margin-top: -85px;
}

.cart-wrap .cart-step span {
	position: relative;
	display: inline-block;
	padding: 0 20px;
	font-size: 14px;
	color: #898989;
}

.cart-wrap .bul-list li {
	position: relative;
	margin-top: 12px;
	padding-left: 10px;
	font-size: 13px;
	color: #aaa;
}

.cart-wrap .billing-v2 {
	display: table;
	position: relative;
	width: 100%;
	margin-top: 41px;
	padding: 40px 121px 39px;
	background-color: #fafafa;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	border-top: 1px solid #e2e2e2;
	white-space: nowrap;
}

.cart-wrap .billing-v2>* {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
	font-size: 18px;
	color: #1f1f1f;
}

.billing-v2 strong {
	display: inline-block;
	font-weight: 400;
	text-align: right;
}

.cart-wrap .cart-info .bul-list li {
	font-size: 12px;
	margin-top: 6px;
	color: #898989;
}

.cart-wrap .cart-step span.active {
	color: #1f1f1f;
}

.cart-wrap .cart-step span {
	position: relative;
	display: inline-block;
	padding: 0 20px;
	font-size: 14px;
	color: #898989;
}

.cart-wrap .cart-step span {
	position: relative;
	display: inline-block;
	padding: 0 20px;
	font-size: 14px;
	color: #898989;
}

.order-lists {
	margin-top: 33px;
	margin-bottom: 33px;
}

.cart-wrap .order-lists .cart-tab {
	padding-bottom: 25px;
	border-bottom: 1px solid #000;
}

.
.cart-wrap .order-lists .all-select {
	margin-top: 38px;
	margin-bottom: 43px;
	font-size: 0;
}

.cart-wrap .all-select {
	margin-top: 40px;
	margin-bottom: 30px;
}

.cart-wrap .order-lists .all-select .checkbox {
	width: 18px;
	height: 18px;
	margin-right: 8px;
	margin-bottom: 13px;
}

.cart-wrap .all-select .checkbox {
	margin-right: 15px;
}

.checkbox {
	display: inline-block;
	position: relative;
	width: 14px;
	height: 14px;
	margin-top: -2px;
	background-color: #fff;
	border-radius: 1px;
	vertical-align: middle;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}

.cart-wrap .billing-v2 {
	display: table;
	position: relative;
	width: 100%;
	margin-top: 41px;
	padding: 40px 121px 39px;
	background-color: #fafafa;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	border-top: 1px solid #e2e2e2;
	white-space: nowrap;
}

.cart-wrap .billing-v2>* {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
	font-size: 18px;
	color: #1f1f1f;
}

.
.cart-wrap .billing-v2 span {
	display: inline-block;
	margin-left: 15px;
	text-align: right;
}

.cart-wrap .billing-v2>* {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
	font-size: 18px;
	color: #1f1f1f;
}

.cart-wrap .billing-v2 .delivery-cost .before {
	position: relative;
	padding-left: 40px;
	padding-right: 22px;
}

.cart-wrap .billing-v2 span {
	display: inline-block;
	margin-left: 15px;
	text-align: right;
}

.cart-wrap .billing-v2>* {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
	font-size: 18px;
	color: #1f1f1f;
}

.cart-wrap .billing-v2 .total {
	font-size: 20px;
}

.cart-wrap .billing-v2>* {
	display: table-cell;
	text-align: center;
	vertical-align: middle;
	font-size: 18px;
	color: #1f1f1f;
}

.cart-wrap .cart-info {
	border-top: 0;
	padding-top: 0;
	margin-top: 37px;
}

cart-wrap .cart-info ul {
	margin-top: 20px;
}

.cart-wrap .end-row {
	padding-top: 0;
	border: 0;
}

.buttons.end-row {
	text-align: center;
	margin-top: 60px;
	padding-top: 60px;
	border-top: 2px solid #000;
}

.cart-wrap .buttons.end-row .btn {
	margin: 0 12px;
	width: 148px;
	height: 46px;
	line-height: 46px;
	border-color: #e5e5e5;
	font-size: 15px;
	color: rgba(31, 31, 31, .87);
}

.cart-wrap .order-lists {
	border-top: 0;
	border-bottom: 1px solid #e2e2e2;
}

.cart-wrap .order-lists .cart-tab {
	padding-bottom: 25px;
	border-bottom: 1px solid #000;
}

.btn-line {
	color: #000;
	border: 1px solid #ccc;
	background-color: #fff;
}

.order-lists .lists {
	padding-top: 49px;
	padding-bottom: 65px;
	border-top: 1px solid #1f1f1f;
}

.cart-wrap .cart-info {
	border-top: 0;
	padding-top: 0;
	margin-top: 37px;
}

.cart-wrap .order-lists .table-order-desktop tbody tr td {
	padding: 20px 0;
	border-color: #e2e2e2;
	background: none;
}

.table tbody tr:first-child td {
	padding-top: 18px;
	border-top: none;
}

.table-order-desktop .thumb {
	vertical-align: top;
}

.table tbody tr td {
	background: #fff;
	border-top: 1px solid #f3f3f3;
	padding: 21px 0;
	font-size: 13px;
	vertical-align: middle;
	text-align: center;
}

.cart-wrap .buttons.end-row .btn {
	margin: 0 12px;
	width: 148px;
	height: 46px;
	line-height: 46px;
	border-color: #e5e5e5;
	font-size: 15px;
	/* 	color: rgba(31, 31, 31, .87); */
	background: white;
}

.cart-wrap .end-row {
	padding-top: 0;
	border: 0;
}

.buttons.end-row {
	text-align: center;
	margin-top: 60px;
	padding-top: 60px;
	border-top: 2px solid #000;
}

.btn-big {
	min-width: 120px;
	font-size: 16px;
	line-height: 46px;
	height: 46px;
}

.btn-line {
	color: #000;
	border: 1px solid #ccc;
	background-color: #fff;
}

.btn {
	color: #fff;
	font-size: 14px;
	line-height: 40px;
	vertical-align: middle;
	display: inline-block;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	height: 40px;
	padding: 0 25px;
	background-color: #000;
}

button {
	margin: 0;
	padding: 0;
	background-color: transparent;
	-webkit-appearance: button;
	cursor: pointer;
}

button, input, select, textarea {
	font-family: inherit;
	margin: 0;
	padding: 0;
	vertical-align: middle;
}

.spinner button {
	font: 0/0 a;
	position: absolute;
	top: 0;
	height: 30px;
	width: 25px;
}

.spinner button:before {
	content: "";
	position: absolute;
	top: 50%;
	left: 50%;
	display: block;
	width: 7px;
	height: 1px;
	margin: -.5px 0 0 -3.5px;
	background-color: #1f1f1f;
}

.cart-wrap .order-lists .all-select label {
	font-size: 14px;
	font-weight: 700;
	vertical-align: middle;
}

.cart-wrap .all-select {
	margin-top: 40px;
	margin-bottom: 30px;
}

.table thead tr th {
	line-height: 19px;
	font-size: 13px;
	font-weight: 300;
	color: #989898;
	text-align: center;
}

.cart-wrap .order-lists .table-order-desktop thead tr th {
	padding-bottom: 18px;
	border-bottom: 1px solid #e2e2e2;
	font-weight: 300;
}

.cart-wrap .cart-step span:after {
	content: "";
	position: absolute;
	right: -4px;
	top: -1px;
	width: 8px;
	height: 15px;
	background:
		url(https://assets.kolonmall.com/_ui/img/pc/icn/icn-cart-step-f6cb209eb8.png)
		no-repeat;
	opacity: .3;
}

.cart-wrap .cart-step span.active:after {
	opacity: 1;
}

.cart-wrap {
	margin: 106px 0 80px;
}

.spinner input {
	font-size: 13px;
	text-align: center;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	width: 100%;
	height: 30px;
}

.spinner button {
	font: 0/0 a;
	position: absolute;
	top: 0;
	height: 30px;
	width: 25px;
}

input[type=number]::-webkit-inner-spin-button {
	-webkit-appearance: block;
}

.cart-wrap .billing-v2 strong {
	display: inline-block;
	font-weight: 400;
	text-align: right;
}

.cart-wrap .billing-v2 .total div em {
	color: #f23d4e;
}

.table-order-desktop .product h4 small {
	font-weight: 400;
	color: #bbb;
}

.form_area {
	padding: 10px 0 40px;
	border-top: 2px solid #000;
}

.form_area .row .ftit {
	float: left;
	width: 150px;
	padding-top: 13px;
	padding-left: 30px;
	line-height: 1.3;
}

.form_area .row.type_low .ftit {
	padding-top: 0;
}

.pa_group .form_area .row .ftit {
	padding-left: 21px;
}

.form_area .row .fdata {
	padding-left: 180px;
}

.form_area .row {
	padding-top: 30px;
}

.form_area .row .ftit .compulsory {
	display: inline-block;
	width: 3px;
	height: 3px;
	background: #e3233f;
	border-radius: 1.5px;
	text-indent: -999em;
	overflow: hidden;
	vertical-align: top;
}

.form_area .row .fdata {
	padding-left: 180px;
}

input.ip_text {
	display: inline-block;
	height: 45px;
	padding: 14px 15px;
	border: 1px solid #dbdbdb;
	color: #141414;
	line-height: 1;
	box-sizing: border-box;
	outline: none;
	width: 290px;
}

input.ip_text.sm {
	width: 230px;
}

.form_area .row .fdata .ip_text {
	margin-right: 4px;
	vertical-align: middle;
	margin-bottom: 10px;
}
}

.select_box select {
	display: block;
	width: 100%;
	height: 45px;
	padding: 0 30px 0 15px;
	border: 1px solid #dbdbdb;
	border-radius: 1px;
	background: #fff
		url(https://image.nbkorea.com/NBRB_PC/common/bg_select_box.png)
		no-repeat 100% 50%;
	color: #121212;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	box-sizing: border-box;
	   
	    margin-top: 10px;
    margin-bottom: 10px;
}

.form_area .row .fdata {
	padding-left: 180px;
}
.cart-wrap .cart-info {
    border-top: 0;
    padding-top: 0;
    margin: 40px 0;
}
.cart-wrap .cart-info {
    margin-top: 40px;
    padding-top: 40px;

}

 .cart-wrap .cart-info, .V2 .cart-wrap .order-info, .V2 .cart-wrap .order-write {
    float: left;
    width: 1020px;

}

 .cart-wrap .cart-info h6 {
    color: #1f1f1f;
    font-weight: 500;
}
.cart-wrap .cart-info h6 {
    font-size: 14px;
    color: #f23d4e;
    font-weight: 700;
}

.cart-wrap .bul-list li {
    position: relative;
    padding-left: 10px;
    font-size: 13px;
    color: #aaa;
    line-height: 1.4;
    margin-top: 8px;
}
}
</style>



<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

</head>

<body>

	<!-- carousel slide -->

	<div class="container-fluid"
		style="margin-bottom: 50px; margin-top: 85px;">
		<div id="demo" class="carousel slide" data-ride="carousel">


			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>


			<div class="carousel-inner mx-auto d-block">
				<div class="carousel-item active">
					<img src="resources/images/camp-mall/carousel-1.jpg" alt="img1">
					<div class="carousel-caption text-center" style="padding: 70px;">

						<h1>CAMPING GO!</h1>
						<h5>가격은 가볍게!양손 가득들고 캠핑GO!</h5>
						<a href="shopList.do" class="btn btn-light" role="button">SHOP
							NOW!</a>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/camp-mall/carousel-2.jpg" alt="img2">
					<div class="carousel-caption text-center" style="padding: 70px;">

						<h1>CAMPING GO!</h1>
						<h5>캠핑GO와 자연에서 온전하게 쉬어가기</h5>
						<a href="shopList.do" class="btn btn-light" role="button">SHOP
							NOW!</a>
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/camp-mall/carousel-3.jpg" alt="img3">
					<div class="carousel-caption text-center" style="padding: 70px;">

						<h1>CAMPING GO!</h1>
						<h5>올겨울에는 캠핑GO와 함께 캠핑을 떠나보세요.</h5>
						<a href="shopList.do" class="btn btn-light" role="button">SHOP
							NOW!</a>
					</div>
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>

	<!-- /////////////////// 배너 끝 ////////////////////////////////// -->


	<div id="reactRoot"
		style="width: 1300px; margin: 0 auto; margin-top: 100px;">
		<div>
			<form>
				<article class="cart-wrap">
					<h3 style="font-weight: bolder;">주문/결제</h3>
					<ul class="cart-step">
						<li>
							<span>장바구니</span>
							<span class="active">주문서 작성</span>
							<span class="last">주문완료</span>
						</li>
					</ul>
					<div id="normalList" class="order-lists normal">
						<p class="all-select"></p>
						<table class="table table-order-desktop">
							<colgroup>
								<col width="200px">
								<col width="200px">
								<col width="200px">
							</colgroup>
							<thead>
								<tr>
									<th>&nbsp;</th>
									<th>상품/옵션 정보</th>
									<th>&nbsp;</th>
									<th>주문금액</th>
									<th>수량/옵션</th>

								</tr>
							</thead>

							<tbody id="cartItemList">
								<c:forEach items="${goods }" var="goods">
									<tr data-product-base-code="${goods.cartId }" class="">
										<td class="select-order text-left">
											<span class="checkbox"></span>
										</td>
										<td class="thumb"><a href="/Product/KEXEX21550WHX">			
										<img	src="/images/${goods.fileName }" 
												alt="모먼트 COTTON  CHAIR 상품 썸네일" width="150px;"
												height="200px;"></a></td>
										<td class="product text-left"><h4>
												<small style="font-size: x-small;">${goods.goodsId }</small>
											</h4>
											<p>
												<a href="shopPage.do?goodsId=${goods.goodsId }">${goods.goodsName }</a>
											</p>
										<td class="price">${goods.goodsPrice }</td>
										<td class="range">
											<ul class="meta">
												<li>수량 <span>${goods.goodsCnt } </span></li>
												<li>옵션 <span>${goods.goodsColor } </span></li>
											</ul>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="billing-v2">
						<div class="delivery-cost">
							<div class="before">
								<div>
									<strong>배송비</strong> <span id="totalDeliveryCost">0</span>원
								</div>
							</div>
						</div>
						<div class="total">
							<div>
								<strong>총 주문금액</strong> <span id="">
									<em class="totalPrice" id="totalPrice">${total.totalPrice }</em>원</span>
							</div>
						</div>
					</div>
					<br>
					<h3 style="font-weight: bolder;">주문자/배송정보</h3>

					<div class="form_area">

						<div class="row type_low">
							<strong class="ftit">주문자 이름</strong>
							<div class="fdata">
								<span class="fval" id="orderCustName">${sessionScope.loginInfo.memberId }</span>
							</div>
						</div>
						<div class="row">
							<label class="ftit" for="email">이메일 <em
								class="compulsory">필수</em></label>
							<div class="fdata">
								<input type="text" id="email" class="ip_text sm"
									name="custEmailId" title="이메일 아이디" value=""
									maxlength="25"> <em class="unit">@</em> <input
									type="text" class="ip_text sm" name="custEmailDomain"
									title="이메일 도메인 주소" value="" maxlength="20"> <span
									class="select_box" style="width: 220px"> 
								</span> <em class="ip_info">* 주문내역이 이메일로 발송됩니다.</em>
							</div>
						</div>
						<div class="row">
							<strong class="ftit">휴대폰번호 
							<em class="compulsory">필수</em></strong>
							<!-- default -->
							
							<div class="fdata"  id="originCellNo2">
							
								<span class="select_box"> 
								
								<select
									title="휴대폰 앞 번호"  id="originCellNo1"
									name="originCellNo1" style="width: 100px; height: 45px; margin-bottom: 10px; 
									background: #fafafa; border: 1px solid #dbdbdb;" >
									
										<option value="010" selected="selected">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="019">019</option>
								</select>
								</span>
								
								 <input type="text" class="ip_text sm" id="originCellNo2"
									name="originCellNo2" title="휴대폰 가운데 번호" value="">
									 <input type="text"
									class="ip_text sm" id="originCellNo3" name="originCellNo3"
									title="휴대폰 마지막 번호" value="" >

							</div>
							<!-- //default -->

						</div>
						<div class="row">
							<strong class="ftit">주소</strong>
							<div class="fdata">
								<div class="block">
									
									
									<input type="text" class="ip_text sm" id="sample6_postcode"
										name="custZipCode" readonly title="배송지 우편번호" value=""
										maxlength="6" > 
										
										<input type="button"
										class="btn btn-line btn-big"
										id="postFind01" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"> 
										
										
										
								</div>
								<input type="text" class="ip_text xl" id="sample6_address"
									name="custAddr1" readonly title="기본 주소" value=""
									maxlength="120"> 
									
									<input type="text" class="ip_text xl"
									id="sample6_extraAddress" name="custAddr2" title="상세 주소" value=""
									maxlength="120">
									
							
								<input type="hidden" id="sample6_detailAddress" placeholder="참고항목">
									
							</div>
						</div>
						
						
						
					</div>

						
							<div class="cart-info">
				<div class="col">
					<h6>주문 전 확인하세요!</h6>
					<ul class="bul-list">
						<li class="color-black">
						<li>오프라인 매장과 동시 판매되고 있으므로, 결제완료 후 또는 입고 확정 이후에도 품절/결품이 발생될 수
							있으며, 재고 확인으로 인한 발송 지연도 있을 수 있습니다.</li>
						<li>품절/결품된 주문상품은 품절/결품 문자서비스 안내 후 자동취소해 드리며, 재결제가 필요한경우 추가
							안내드립니다.</li>
						<li>품절/결품이 발생한경우, 품절취소 고객보상 기준에 따라 보상해드리고 있습니다.</li>
					</ul>
				</div>
			</div>




					<div class="buttons end-row">


						<button type="button"
							class="ladda-button btn btn-order btn-big btn-animated from-top"
							data-style="zoom-in" data-spinner-color="#fff"
							data-ga-event-category="PC_CART" data-ga-event-action="하단버튼"
							data-ga-event-label="결제하기"
							style="background: #f23d4e; color: white;"
							
							onclick="location.href='shopOrderCompleted.do'">
							<span class="ladda-label"><span>결제하기</span></span><span
								class="ladda-spinner"></span>
							<div class="ladda-progress" style="width: 0px;"></div>
						</button>

						<button type="button" class="btn btn-line btn-big"
							data-ga-event-category="PC_CART" data-ga-event-action="하단버튼"
							data-ga-event-label="결제취소" id="cancleBtn">취소하기</button>
					</div>



		
				</article>
			</form>




		</div>
	</div>

	<script src="resources/js/shopBuy.js?ver=31"></script>


</body>
</html>