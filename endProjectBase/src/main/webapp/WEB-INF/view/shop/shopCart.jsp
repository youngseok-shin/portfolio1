<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니페이지</title>


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
}
</style>
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
						<a href="shopList.do" class="btn btn-light" role="button">
							SHOP NOW!
						</a>
					</div>
				</div>
				
				<div class="carousel-item">
					<img src="resources/images/camp-mall/carousel-2.jpg" alt="img2">
					<div class="carousel-caption text-center" style="padding: 70px;">
						<h1>CAMPING GO!</h1>
						<h5>캠핑GO와 자연에서 온전하게 쉬어가기</h5>
						<a href="shopList.do" class="btn btn-light" role="button">
							SHOP NOW!
						</a>
					</div>
				</div>
				
				<div class="carousel-item">
					<img src="resources/images/camp-mall/carousel-3.jpg" alt="img3">
					<div class="carousel-caption text-center" style="padding: 70px;">
						<h1>CAMPING GO!</h1>
						<h5>올겨울에는 캠핑GO와 함께 캠핑을 떠나보세요.</h5>
						<a href="shopList.do" class="btn btn-light" role="button">
							SHOP NOW!
						</a>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- /////////////////// 배너 끝 ////////////////////////////////// -->


	<div id="reactRoot" style="width: 1300px; margin: 0 auto; margin-top: 100px;">
		<div>
			<form>
				<article class="cart-wrap">
					<h3 style="font-weight: bolder;">장바구니</h3>
					<ul class="cart-step">
						<li>
							<span class="active">장바구니</span>
							<span>주문서작성</span>
							<span class="last">주문완료</span>
						</li>
					</ul>

					${sessionScope.loginInfo.memberId } 님 무료배송 혜택을 이용해보세요!
					<div id="normalList" class="order-lists normal">
						
						<p class="all-select">
							<span class="checkbox">
								<input type="checkbox" checked id="checkAll">
							</span>
							<label>전체선택</label>
						</p>

						<table class="table table-order-desktop">
							<colgroup>
								<col width="25px">
								<col width="100px">
								<col width="*">
								<col width="214px">
								<col width="180px">
								<col width="126px">
								<col width="235px">
								<col width="115px">
							</colgroup>
							
							<thead>
								<tr>
									<th>&nbsp;</th>
									<th>상품정보</th>
									<th>&nbsp;</th>
									<th>판매금액</th>
									<th>수량</th>
									<th>배송정보</th>
									<th>선택</th>
								</tr>
							</thead>

							<tbody id="cartItemList">
								<c:forEach items="${cartList }" var="goods">

									<input type="hidden" value="${goods.cartId }" id="cartId">

									<tr data-product-base-code="KEXEX21550WHX" class="" style="border-bottom: 1px solid #e2e2e2;">
									
										<td class="select-order text-left">
											<span class="checkbox">
												<input type="checkbox" class="cartItemCheckbox checkEach" checked value="${goods.cartId }"> <i></i>
											</span>
										</td>
										
										<td class="thumb">
											<a href="/Product/KEXEX21550WHX">
												<img src="/images/${goods.fileName }" width="200px;" height="300px;">
											</a>
										</td>
										
										<td class="product text-left">
											<h4>
												<small style="font-size: medium;">${goods.goodsId }</small>
											</h4>
											
											<p>
												<a href="shopPage.do?goodsId=${goods.goodsId }">
													${goods.goodsName }
												</a>
											</p>
											
											<ul class="meta">
												<li>
													<em>옵션 : </em><span>${goods.goodsColor }</span>
												</li>
											</ul>
										</td>

										<td class="price">
											<span class="priceEach">${goods.goodsPrice }</span>원
										</td>

										<td class="range">
											<div class="spinner" align="center">
												<input type="number" value="${goods.goodsCnt }" class="quantity" style="display: block; width: 70px;" min="1">
											</div>
										</td>

										<td class="division" rowspan="1">
											<div class="cost">
												무료배송
											</div>
										</td>
										
										<td class="state">
											<button type="button" id="deleteCartBtn" class="ladda-button btn btn-line btn-small btn-animated from-top" 
												data-style="zoom-in"
												data-spinner-color="#000"
												data-ga-event-category="PC_CART"
												data-ga-event-action="상품별버튼"
												data-ga-event-label="삭제하기_KEXEX21550WHX"
												onclick="location.href='deleteEach.do?cartId=${goods.cartId}&goodsId=${goods.goodsId }'">
												<span class="ladda-label">
													<span> 삭제하기</span>
												</span>
											</button>
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
								<strong>총 주문금액</strong> <span><em class="totalPrice">${total.totalPrice }</em>원
								</span>
							</div>
						</div>
					</div>



					<div class="cart-info">
						<ul class="bul-list">
							<li>
								택배상품은 30일간 보관됩니다. 장기간 보관을 원하실 경우 [관심상품]을 이용해 주세요.
							</li>
							
							<li>
								택배 상품과 매장픽업 상품은 한번에 주문이 불가하오니 분리하여 주문하여 주셔야 합니다.
							</li>
							
							<li>
								주문 시 편의점 배송으로 배송지 지정을 할 경우, 편의점 픽업가능 상품끼리만 주문 가능하며 한 곳의 편의점으로만 배송이 가능합니다.
							</li>
							
							<li>
								실 결제되는 상품 금액과 배송비는 주문하기에서 프로모션/쿠폰 적용에 따라 달라집니다.
							</li>
						</ul>
					</div>
					
					<div class="buttons end-row">
						<button type="button"
							class="ladda-button btn btn-line btn-big btn-animated from-top"
							data-style="zoom-in" data-spinner-color="#000"
							data-ga-event-category="PC_CART" data-ga-event-action="하단버튼"
							data-ga-event-label="선택상품삭제">
							
							<span class="ladda-label">
								<span id="deleteAll">
									선택상품 삭제
								</span>
							</span>
						</button>

						<button type="button" class="btn btn-line btn-big"
							data-ga-event-category="PC_CART" data-ga-event-action="하단버튼"
							data-ga-event-label="쇼핑계속하기"
							onclick="location.href='shopList.do'">
							쇼핑계속하기
						</button>

						<button type="button"
							class="ladda-button btn btn-order btn-big btn-animated from-top"
							data-style="zoom-in" data-spinner-color="#fff"
							data-ga-event-category="PC_CART" data-ga-event-action="하단버튼"
							data-ga-event-label="선택상품주문"
							style="background: #f23d4e; color: white;" id="gotoBuy">
							
							<span class="ladda-label">
								<span>
									선택상품 주문
								</span>
							</span>
							
						</button>
					</div>

				</article>
			</form>
		</div>
	</div>

	<script src="resources/js/shopCart.js?ver=74"></script>
</body>
</html>