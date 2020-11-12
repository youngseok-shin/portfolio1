<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오더 완료</title>


<script src="https://cdn.bootpay.co.kr/js/bootpay-3.3.1.min.js" type="application/javascript"></script>


 <script type="text/javascript">
    //jQuery 수정 버전을 로드한다.
    require(["https://cdn.bootpay.co.kr/js/bootpay-3.3.0.min.js"], function(BootPay) {
        BootPay.request({
            // anyThing Data
        });
    });
</script> 

<script type="text/javascript">
//실제 복사하여 사용시에는 모든 주석을 지운 후 사용하세요
BootPay.request({
	price: '1000', //실제 결제되는 가격
	application_id: "[ WEB SDK용 Application ID ]",
	name: '블링블링 마스카라', //결제창에서 보여질 이름
	pg: 'danal',
	method: 'vbank', //결제수단, 입력하지 않으면 결제수단 선택부터 화면이 시작합니다.
	show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
	items: [
		{
			item_name: '나는 아이템', //상품명
			qty: 1, //수량
			unique: '123', //해당 상품을 구분짓는 primary key
			price: 1000, //상품 단가
			cat1: 'TOP', // 대표 상품의 카테고리 상, 50글자 이내
			cat2: '티셔츠', // 대표 상품의 카테고리 중, 50글자 이내
			cat3: '라운드 티', // 대표상품의 카테고리 하, 50글자 이내
		}
	],
	user_info: {
		username: '사용자 이름',
		email: '사용자 이메일',
		addr: '사용자 주소',
		phone: '010-1234-4567'
	},
	order_id: '고유order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
	params: {callback1: '그대로 콜백받을 변수 1', callback2: '그대로 콜백받을 변수 2', customvar1234: '변수명도 마음대로'},
	account_expire_at: '2020-10-25', // 가상계좌 입금기간 제한 ( yyyy-mm-dd 포멧으로 입력해주세요. 가상계좌만 적용됩니다. )
	extra: {
	    start_at: '2019-05-10', // 정기 결제 시작일 - 시작일을 지정하지 않으면 그 날 당일로부터 결제가 가능한 Billing key 지급
		end_at: '2022-05-10', // 정기결제 만료일 -  기간 없음 - 무제한
        vbank_result: 1, // 가상계좌 사용시 사용, 가상계좌 결과창을 볼지(1), 말지(0), 미설정시 봄(1)
        quota: '0,2,3', // 결제금액이 5만원 이상시 할부개월 허용범위를 설정할 수 있음, [0(일시불), 2개월, 3개월] 허용, 미설정시 12개월까지 허용,
		theme: 'purple', // [ red, purple(기본), custom ]
		custom_background: '#00a086', // [ theme가 custom 일 때 background 색상 지정 가능 ]
		custom_font_color: '#ffffff' // [ theme가 custom 일 때 font color 색상 지정 가능 ]
	}
}).error(function (data) {
	//결제 진행시 에러가 발생하면 수행됩니다.
	console.log(data);
}).cancel(function (data) {
	//결제가 취소되면 수행됩니다.
	console.log(data);
}).ready(function (data) {
	// 가상계좌 입금 계좌번호가 발급되면 호출되는 함수입니다.
	console.log(data);
}).confirm(function (data) {
	//결제가 실행되기 전에 수행되며, 주로 재고를 확인하는 로직이 들어갑니다.
	//주의 - 카드 수기결제일 경우 이 부분이 실행되지 않습니다.
	console.log(data);
	var enable = true; // 재고 수량 관리 로직 혹은 다른 처리
	if (enable) {
		BootPay.transactionConfirm(data); // 조건이 맞으면 승인 처리를 한다.
	} else {
		BootPay.removePaymentWindow(); // 조건이 맞지 않으면 결제 창을 닫고 결제를 승인하지 않는다.
	}
}).close(function (data) {
    // 결제창이 닫힐때 수행됩니다. (성공,실패,취소에 상관없이 모두 수행됨)
    console.log(data);
}).done(function (data) {
	//결제가 정상적으로 완료되면 수행됩니다
	//비즈니스 로직을 수행하기 전에 결제 유효성 검증을 하시길 추천합니다.
	console.log(data);
});

</script>






<style type="text/css">
.carousel-item>img {
	width: 100%;
}

.cart-wrap .cart-step span.active {
	color: #1f1f1f;
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

.btn-line {
	color: #000;
	border: 1px solid #ccc;
	background-color: #fff;
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

.cart-wrap .cart-step span {
	position: relative;
	display: inline-block;
	padding: 0 20px;
	font-size: 14px;
	color: #898989;
}

.cart-wrap .cart-step span.active {
	color: #1f1f1f;
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

.orderCom {
	margin-top: 200px;
	margin-bottom: 150px;
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
					<h3 style="font-weight: bolder; border-bottom: 2px solid #000;">주문완료</h3>
					<ul class="cart-step" style="float: right;">
						<span>장바구니</span>
						<span class="last">주문서 작성</span>
						<span class="active">주문완료</span>
					</ul>


					<div class="orderCom">
						<h2 align="center">주문 결제가 정상적으로 완료 되었습니다.</h2>
						<h5 align="center">${sessionScope.loginInfo.memberId }고객님의
							상품이 최대한 빠르게 배송 될 수 있도록 최선을 다하겠습니다.</h5>
					</div>

					<div class="buttons end-row">


						<button type="button"
							class="ladda-button btn btn-order btn-big btn-animated from-top"
							data-style="zoom-in" data-spinner-color="#fff"
							style="background: #f23d4e; color: white;"
							onclick="location.href='shopMain.do'">
							<span class="ladda-label"><span>메인으로</span></span><span
								class="ladda-spinner"></span>
							<div class="ladda-progress" style="width: 0px;"></div>
						</button>





					</div>




				</article>
			</form>




		</div>
	</div>












</body>
</html>