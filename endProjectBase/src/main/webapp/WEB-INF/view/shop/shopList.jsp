<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>샵 리스트페이지</title>
<style type="text/css">
.sub .wrap-navi {
	float: left;
	width: 200px;
	margin: 90px 0 140px;
	padding-right: 74px;
}

.wrap {
	max-width: 1200px;
	width: 1200px;
	margin: 0 auto;
	background: #fff;
}

a {
	text-decoration: none;
	color: #666;
}

.sub .wrap-navi .sub-menu dd a {
	font-size: 15px;
	color: #898989;
}

.sub .wrap-navi .sub-menu {
	margin-top: 100px;
	min-height: 340px;
	padding-bottom: 70px;
	font-size: 0;
	letter-spacing: 0;
	word-spacing: 0;
	font-family: Helvetica Neue, sans-serif;
	min-height: 340px;
}

.sub .wrap-navi .sub-menu dt {
	margin-bottom: 21px;
}

#content .contents {
	float: left;
	width: 100%;
	max-width: 972px;
}

.sub .wrap-navi .sub-menu dt a {
	font-size: 15px;
	color: #1f1f1f;
}

a {
	cursor: pointer;
}

.wrap {
	max-width: 1200px;
	width: 1200px;
	margin: 0 auto;
	background: #fff;
}

#content .contents {
	float: left;
	width: 100%;
	max-width: 972px;
	margin-left: 28px;
}

.prod-wrap {
	margin-top: 80px;
}

.prod-wrap .tit {
	margin-bottom: 40px;
	font-size: 26px;
	font-weight: 300;
	text-align: center;
	color: #0f0f10;
}

.prod-list {
	margin-left: -20px;
	font-size: 0;
}

.prod-list .list {
	display: inline-block;
	vertical-align: top;
	color: #1f1f1f;
	position: relative;
	width: 224px;
	margin-left: 20px;
	margin-bottom: 51px;
	font-size: 1rem;
	letter-spacing: -.2px;
}

.sub .wrap-navi h3, .sub .wrap-navi h3 a {
	font-weight: 700;
	color: #1f1f1f;
}

.sub .wrap-navi h3 {
	margin-bottom: 48px;
	font-size: 24px;
}

.prod-wrap .tit {
	margin-bottom: 40px;
	font-size: 26px;
	font-weight: 300;
	text-align: center;
	color: #0f0f10;
}

.prod-list .list .title p {
	font-weight: 300;
}

.prod-list .list .label-box .label {
	font-size: 10px;
	line-height: 1.1;
	display: inline-block;
	margin-top: 12px;
	padding: 2px 4px;
	text-align: center;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	border: 1px solid #ced4dc;
	/* background-color: #fff; */
	/* color: #143c5a; */
	height: 17px;
	letter-spacing: .1px;
	margin-right: 4px;
}

.prod-list .list .thumb:after {
	content: "";
	display: block;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	opacity: .03;
	background-color: #000;
}

.prod-list .list .thumb .roll-over {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	opacity: 0;
	background-size: cover;
	background-position: 50% 0;
	-webkit-transition: .3s ease;
	transition: .3s ease;
}

.prod-list .list .thumb img {
	position: absolute;
	width: 100%;
	top: 50%;
	left: 0;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
}

img {
	border: 0;
}

.prod-list .list .title p {
	font-weight: 300;
}

.prod-list .list .price {
	position: relative;
	font-size: 13px;
	font-weight: 300;
	margin: 0 6px;
	color: #1f1f1f;
}

.prod-list .list .label-box {
	margin: 0 6px;
	font-size: 0;
	overflow: hidden;
}

.prod-wrap {
	margin-top: 80px;
}

.prod-list .list {
	display: inline-block;
	vertical-align: top;
	color: #1f1f1f;
	position: relative;
	width: 224px;
	margin-left: 20px;
	margin-bottom: 51px;
	font-size: 1rem;
	letter-spacing: -.2px;
}

.prod-list .list .thumb {
	position: relative;
	width: 100%;
	margin-bottom: 16px;
	padding-top: 150%;
	font-size: 0;
	overflow: hidden;
}

.sub .wrap-navi h3, .sub .wrap-navi h3 a {
	font-weight: 700;
	color: #1f1f1f;
}

.sub .wrap-navi h3 {
	margin-bottom: 48px;
	font-size: 30px;
}

.btn_blue {
	margin: 0px 0px 0px 6px;
	height: 38px;
	line-height: 38px;
	float: left;
	padding: 0px 20px;
	display: block;
	border-radius: 5px;
	overflow: visible;
	display: inline-block;
	text-decoration: none !important;
	text-align: center;
	white-space: nowrap;
	cursor: pointer;
	background-color: #18BC9C;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
	width: 80px;
}

.carousel-item>img {
	width: 100%;
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


						<a href="shopMain.do" class="btn btn-light" role="button"
							style="width: 100px;">Main</a>



					</div>
				</div>


				<div class="carousel-item">
					<img src="resources/images/camp-mall/carousel-2.jpg" alt="img2">
					<div class="carousel-caption text-center" style="padding: 70px;">

						<h1>CAMPING GO!</h1>
						<h5>캠핑GO와 자연에서 온전하게 쉬어가기</h5>

						<a href="shopMain.do" class="btn btn-light" role="button"
							style="width: 100px;">Main</a>


					</div>
				</div>


				<div class="carousel-item">
					<img src="resources/images/camp-mall/carousel-3.jpg" alt="img3">
					<div class="carousel-caption text-center" style="padding: 70px;">

						<h1>CAMPING GO!</h1>
						<h5>올겨울에는 캠핑GO와 함께 캠핑을 떠나보세요.</h5>


						<a href="shopMain.do" class="btn btn-light" role="button"
							style="width: 100px;">Main</a>


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

	<div class="sub wrap">
		<div class="content-wrap">

			<h2 class="hidden">본문영역</h2>
			<section id="content">
				<!-- navigation -->
				<nav class="wrap-navi">


					<h3>CAMPING</h3>




					<div class="sub-menu">


						<dl>


							<dt>
								<a>전체보기</a>
							</dt>
							<dd>
								<a>텐트</a>
							</dd>

							<dd>
								<a>테이블&amp;의자 </a>
							</dd>

							<dd>
								<a>액세서리 </a>
							</dd>

							<dd>
								<a>랜턴 </a>
							</dd>

							<dd>
								<a>주방 </a>
							</dd>

							<dd>
								<a>침낭/매트 </a>
							</dd>

							<dd>
								<a>백팩 </a>
							</dd>

							<dd>
								<a>NEW ARRIVALS </a>
							</dd>


						</dl>
							<input type="hidden" id="memberId" value="${sessionScope.loginInfo.memberId }">
							<input type="button" id="myCartBtn" class="btn btn-light" style="color: #1ABD9D; width: 160px;" value="MY CART">
							<!-- <a href="#" onclick="" id="myCartBtn" class="btn btn-light" role="button"
								style="color: #1ABD9D; width: 160px;">MY CART </a> -->
					</div>



				</nav>
				<!-- //navigation -->

				<article class="category-cont contents">
					<!-- top-banner-wide-list -->

					<article class="prod-wrap">

						<h3 class="tit">CAMPING BEST</h3>

						<div class="prod-list productResultArea">



							<c:forEach items="${goods }" var="goods">
								<div class="list">
									<div class="thumb" style="cursor: pointer;"
										onclick="location.href='shopPage.do?goodsId=${goods.goodsId}&cartId=${cartList.cartId }'">
										<img src="/images/${goods.fileName }"
											onerror="window.setDefaultImage(this);">
										<div class="roll-over"
											style="background-image: url(https://images.kolonmall.com/Prod_Img/KS/2021/RO/KEXEX21550WHX_RO.jpg)">

										</div>
									</div>



									<input type="hidden" id="cartId" value="${cartList.cartId }"
										style="border: none;" style="font-size: 15px; color: #1ABD9D;">


									<div class="title clamp">
										<p
											onclick="location.href='shopPage.do?goodsId=${goods.goodsId}&cartId=${cartList.cartId }'"
											style="cursor: pointer;">${goods.goodsName }
										<p>
									</div>



									<p class="price">${goods.goodsPrice }원</p>
									<p class="label-box">
										<span class="label">베스트</span>

										<c:if test="${sessionScope.loginInfo.memberId eq 'admin' }">

											<a href="shopRewriteBoard.do?goodsId=${goods.goodsId }"
												class="label" role="button"
												style="background: #18BC9C; color: white;">수정</a>


											<a href="deleteProduct.do?goodsId=${goods.goodsId }"
												class="label" role="button"
												style="background: #18BC9C; color: white;">삭제</a>

										</c:if>


									</p>




								</div>


							</c:forEach>


						</div>




					</article>
				</article>
			</section>

		</div>
	</div>
<script src="resources/js/shopList.js?ver=4"></script>
</body>
</html>