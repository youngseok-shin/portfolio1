<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 상품상세정보</title>

<style type="text/css">
.detail_top {
	width: 1200px;
	margin: 0 auto;
	padding: 100px 0 115px;
}

.detail_top .pr_visual {
	position: relative;
	float: left;
	width: 680px;
}

.pr_visual .img {
	width: 680px;
	height: 680px;
	box-sizing: border-box;
}

.pr_visual .img .inner {
	position: relative;
}

.detail_top .pr_option {
	float: right;
	width: 440px;
	margin-top: 50px;
}

.pr_option .pr_info .title {
	color: #121212;
	font-size: 28px;
	line-height: 32px;
	text-indent: -0.04em;
}

.pr_info .box {
	position: relative;
	margin-top: 21px;
}

.pr_info .box .price {
	padding: 24px 0 30px;
}

.pr_info .box .price .won {
	display: inline-block;
	font-size: 14px;
	color: #121212;
	line-height: 14px;
}

.pr_select .total_price {
	margin-top: 30px;
	padding-top: 28px;
	border-top: 2px solid #2b2b2b;
}

.pr_select .total_price>div {
	text-align: right;
}

.pr_btn_area {
	margin-top: 19px;
	overflow: hidden;
}

.fr {
	float: right;
}

.fl {
	float: left;
}

.pr_btn_area .btn_ty_rface {
	margin-bottom: 20px;
	min-width: 140px;
	padding: 20px 18px;
	font-size: 16px;
	width: 290px;
	margin-bottom: 20px;
	text-align: center;
}

.pr_btn_area .btn_ty_bline {
	min-width: 140px;
	padding: 20px 18px;
	font-size: 16px;
	width: 137px;
	margin-bottom: 20px;
	text-align: center;
}

.btn_ty_bline, .btn_ty_bline:hover {
	border: 2px solid #444;
	color: #141414;
}

.btn_ty_rface, .btn_ty_rface:hover {
	border: 2px solid #cf0a2c;
	background: #cf0a2c;
	color: #fff;
}

.detail_wrap {
	position: relative;
	padding: 0 0 98px;
	border-bottom: 1px solid #dbdbdb;
}

.detail_wrap .sticky_wrap .inner {
	position: relative;
	width: 1200px;
	margin: 0 auto;
}

.detail_wrap .sticky_wrap {
	position: relative;
	top: 0;
	width: 100%;
	background: #fff;
	border-bottom: 1px solid #dbdbdb;
	z-index: 10;
}

.sticky_wrap .tab_box {
	width: 900px;
	margin-bottom: -1px;
}

.sticky_wrap .tab_box li {
	float: left;
	width: 300px;
}

.sticky_wrap .tab_box li.active a {
	border-bottom: 3px solid #141414;
	font-weight: 700;
}

.explain_wrap {
	/* width: 840px; */
	/* padding-right: 360px; */
	margin: 0 auto;
	margin-top: 60%;
}

.tab_cont .cont.active {
	display: block;
}

.prod_name {
	font-size: 22px;
	font-weight: 700;
	line-height: 24px;
}

.info_list {
	margin-top: 17px;
	padding: 9px 0 36px;
	border-top: 1px solid #121212;
	border-bottom: 1px solid #dfdfdf;
}

.info_list li {
	width: 100%;
	padding-top: 28px;
	display: table;
}

.info_list li>.ttl {
	float: left;
	padding-left: 20px;
	color: #141414;
	line-height: 20px;
	letter-spacing: -0.04em;
}

.info_list li>div {
	padding-left: 140px;
	padding-right: 30px;
	color: #555;
	line-height: 20px;
	letter-spacing: -0.04em;
	word-break: keep-all;
}

.sticky_wrap .tab_box {
	width: 900px;
	margin-bottom: -1px;
}

.wrap.detail .container {
	padding-top: 0;
}

.container {
	padding-top: 0px;
}

.container {
	min-width: 1200px;
	padding-bottom: 200px;
}

.sticky_wrap .tab_box {
	width: 900px;
	margin-bottom: -1px;
}

.sticky_wrap .tab_box li {
	float: left;
	width: 300px;
}

.pr_select .choice {
	margin-top: 30px;
	padding-top: 10px;
	border-top: 1px solid #dbdbdb;
}

.pr_select .choice li .plusminus_wrap {
	float: left;
}

.plusminus_wrap {
	position: relative;
	display: inline-block;
	width: 110px;
	height: 35px;
	padding: 0 0 0 35px;
	border: 1px solid #dbdbdb;
	vertical-align: middle;
}

.plusminus_wrap .text {
	width: 42px;
	height: 30px;
	padding: 10px 0;
	border: solid #dbdbdb;
	border-width: 0 1px;
	font-size: 15px;
	line-height: 1;
	text-align: center;
	vertical-align: top;
}

.pr_select .choice li .plusminus_wrap {
	float: left;
}

.pr_select .choice li {
	position: relative;
	margin-top: 20px;
}

.plusminus_wrap .numbtn_minus {
	position: absolute;
	left: 0;
	top: 0;
	vertical-align: top;
}

.numbtn_minus {
	width: 35px;
	height: 35px;
	background: url(https://image.nbkorea.com/NBRB_PC/common/btn_minus.png)
		no-repeat 0 0;
	overflow: hidden;
}

button {
	background: transparent;
	cursor: pointer;
}

span.blind {
	position: absolute;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	width: 1px;
	height: 1px;
	margin: -1px;
}

.blind {
	position: absolute;
	top: 0;
	left: 0;
	width: 1px;
	height: 1px;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
}

.plusminus_wrap .numbtn_plus {
	position: absolute;
	right: 0;
	top: 0;
	vertical-align: top;
}

.numbtn_plus {
	width: 35px;
	height: 35px;
	background: url(https://image.nbkorea.com/NBRB_PC/common/btn_plus.png)
		no-repeat 0 0;
	overflow: hidden;
}

input, textarea, select, button {
	font: inherit;
	vertical-align: middle;
	padding: 0;
	margin: 0;
}

.pr_select .total_price>div {
	text-align: right;
}

.pr_select .total_price>div .ttl {
	float: left;
	width: 100px;
	text-align: left;
	letter-spacing: -0.04em;
	line-height: 1;
}

.pr_select .total_price>div.total .ttl {
	font-weight: 700;
	line-height: 24px;
}

.pr_select .total_price>div.total .won {
	font-size: 18px;
	font-weight: 700;
	line-height: 24px;
}

.pr_select .total_price>div .won {
	display: block;
	padding-left: 100px;
}

.pr_select .total_price>div {
	text-align: right;
}

.pr_select .total_price>div .ttl {
	float: left;
	width: 100px;
	text-align: left;
	letter-spacing: -0.04em;
	line-height: 1;
}

.icon_delivery {
	height: 17px;
	background:
		url(https://image.nbkorea.com/NBRB_PC/product/icon_delivery.png) 0 0
		no-repeat;
	background-size: 27px 17px;
	display: inline-block;
	padding-left: 40px;
	line-height: 18px;
}

.icon_credit {
	height: 17px;
	background:
		url(https://image.nbkorea.com/NBRB_PC/product/icon_credit.png) 0 0
		no-repeat;
	background-size: 27px 16px;
	display: inline-block;
	padding-left: 40px;
	line-height: 18px;
}

.mt_28 {
	margin-top: 28px !important;
}

.pr_select .total_price>div.total .won strong {
	font-size: 24px;
	font-weight: 700;
	line-height: 24px;
	vertical-align: top;
}

.sub .wrap-navi h3 {
	margin-bottom: 48px;
	font-size: 35px;
}

.sub .wrap-navi h3, .sub .wrap-navi h3 a {
	font-weight: 700;
	color: #1f1f1f;
}

.carousel-item>img {
	width: 100%;
}
#topButton {
	position: fixed;
	right: 7%;
	bottom: 200px;
	display: none;
	z-index: 999;
	width: 50px;
	height: 60px;
	cursor: pointer;
	border: 0px;
	outline: 0px;
}
#topButtonImg {
	width: 30px;
	height: 30px;
	border: 0px;
	outline: 0px;
}
#topButtonIcon{
	width: 50px;
	height: 40px;
	border: 0px;
	outline: 0px;
}
</style>

<script type="text/javascript">
$(window).scroll(function() {
    // top button controll
    if ($(this).scrollTop() > 500) {
        $('#topButton').fadeIn();
    } else {
        $('#topButton').fadeOut();
    }
});

$(document).ready(function() {
	  // Top Button click event handler
	  $("#topButtonImg").click(function() {
	    $('html, body').animate({scrollTop:0}, '300');
	  });
	});



</script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

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
		</div>
	</div>


	<div class="container">
		<div class="detail_top">
			<div class="pr_visual">
				<div class="img">
					<div class="inner">
						<img alt="" src="/images/${goods.fileName }" width="500" height="700">
					</div>
				</div>
			</div>
			<input type="hidden" value="${sessionScope.loginInfo.memberId }"
				id="memberId">

			<div class="pr_option">
				<div class="pr_info">
					<small class="title"
						style="font-size: 15px;">
						</small>
						 <input type="hidden"  id="goodsId" value="${goods.goodsId }" style="border: none;" style="font-size: 15px; color: #1ABD9D;"> 
					<br>
					<%-- <input type="text" id="goodsName" value="${goods.goodsName }"
						style="border: none; font-size: 30px;  color: #1ABD9D;" readonly> --%>
					<span id="goodsName" style="border: none; font-size: 30px;  color: #1ABD9D;">${goods.goodsName }</span>
					<div class="marketing" id="iconOpt">
						<img src="https://image.nbkorea.com/NBRB_Icon/NB20180727200053137001.png">
					</div>
					<div class="price">
						<span class="won" style="float: right; font-size: 18px;"><strong
							id="dispPrice">${goods.goodsPrice }</strong>원</span>
					</div>
				</div>
				<div class="pr_select">
					<div class="choice">

						<div class="color">
							색상 <select style="width: 250px; float: right;" name="selectColor" id="selectColor">
								<c:forEach items="${colors }" var="color">
									<option value="${color }">${color }</option>
								</c:forEach>
							</select>
						</div>
						<br> 수량 
						<input type="number" id="goodsCnt"
							value="1" style="width: 250px; float: right;"
							min="1" >
		
						<ul id="prodOptAdd">
							<li class="clearfix"></li>
						</ul>
					</div>
					<div class="total_price mb_30" id="add_opt_guide"
						style="margin-top: 30px; padding-top: 28px; border-top: 2px solid rgb(43, 43, 43);">
						<div class="total" style="" id="total_calc_price">
							<div class="ttl">합계</div>
							<div class="won">
								<strong id="totPrice">${goods.goodsPrice }</strong>원
							</div>
						</div>
						<div class="delivery mt_28" style="" id="delivery_price_guide">
							<div class="ttl">
								<span class="icon_delivery">무료배송</span>
							</div>
							<div class="won">
								<p class="tooltip">
									<span class="blind">?</span> <span class="text"> <strong>배송비</strong>
									</span>
								</p>
							</div>
						</div>
						<div class="delivery mb_30" style="" id="credit_benifit_guide">
							<div class="ttl">
								<span class="icon_credit">카드혜택</span>
							</div>
							<div class="won">&nbsp;</div>
						</div>
						<div class="pr_btn_area">
							<input type="button" id="goCart" class="btn_ty_bline lg fl" value="장바구니" >
							<input type="button" class="btn_ty_rface lg fr" id="oneBuyBtn" value="구매하기" style="cursor: pointer;">
						</div>
						<p class="noti">* 주문/배송/반품 등 일반 문의는 1:1 문의를 이용해 주시기 바랍니다.</p>
					</div>
					<br>
					<br>
				<c:if test="${sessionScope.loginInfo.memberId eq 'admin' }">
	 	<a href="shopRewriteBoard.do?goodsId=${goods.goodsId }" class="btn" role="button"
					style="background: #18BC9C; color: white; width: 215px;" >상품수정</a>
						<a href="deleteProduct.do?goodsId=${goods.goodsId }" class="btn" role="button"
					style="background: #18BC9C; color: white; width: 215px;">상품삭제</a>
			</c:if>
					<div class="total_price mb_30" id="add_opt_guide"
						style="margin-top: 0px; padding-top: 0px; border-top: #ffffff">
					</div>
				</div>
			</div>
		</div>
		<div class="explain_wrap">
			<div class="inner"></div>
			<div class="cont">
				<p class="prod_name">상품명</p>
				<ul class="info_list">
					<li><strong class="ttl">제품</strong>
						<div id="optStyleCode">${goods.goodsId }</div></li>
					<li><strong class="ttl">컬러</strong>
						<div id="optStyleCode">${goods.goodsColor }</div></li>
					<li><strong class="ttl">제조국</strong>
						<div id="optStyleCode">${goods.goodsMadeFrom }</div></li>
					<li><strong class="ttl">제조년월</strong>
						<div id="optStyleCode">${goods.goodsCreateDate }</div></li>
					<li><strong class="ttl">제품 특징</strong>
						<div id="optStyleCode">
							- ${goods.goodsContent } <br> 
						</div></li>
					<li>
						<div id="styleFeaturedImg" style="padding-top: 70px;">
							<c:forEach items="${selectShopImages }" var="image">
								<img alt="" src="/images/${image.fileName }">
							</c:forEach>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="topButton">
		<button id="topButtonImg">
			<i class="fas fa-angle-double-up" id="topButtonIcon"></i>
			<p style="font-size: 13px; font-weight: bold; margin-left: 12px;">TOP</p>
		</button>

	</div>
<script src="resources/js/shopPage.js?ver=78"></script>
</body>
</html>
