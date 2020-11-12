<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 메인페이지</title>
<link rel="stylesheet" type="text/css"
	href="resources/css/shop/shopMain.css">
<style type="text/css">
.jumbotron {
	background-image:
		url("resources/images/camp-mall/083120-Camping-Main2.jpg");
	background-size: cover;
	margin-top: 80px;
	margin-bottom: 80px;
}

.sub-con {
	height: 375px;
	background-size: cover;
	height: 375px;
}

.subcat-links {
	display: none;
	z-index: 1;
}

.sub-con:hover .subcat-links {
	display: block;
}

.subcat-panel {
	position: absolute;
	bottom: 0px;
	left: 0px;
	background-color: rgb(102 77 88/ 55%);
	width: 100%;
	padding: 15px;
}

.subcat-panel * {
	color: #fff;
}

.carousel-item>img {
	width: 100%;
}
</style>
</head>
<body>

	<%-- <div class="jumbotron jumbotron-fluid">
		<div class="container align-middle">
			<h2 class="text-light">CAMPING GO</h2>
			<br>
			 <h5 class="text font-italic text-white-50">
				성공적인 캠핑을 위한 첫 번째 과정은 준비물이죠.<br> 캠핑GO의 캠핑용품으로 안락한 휴식을 즐겨 보세요.
			</h5>
			<br> <a href="shopList.do" class="btn btn-light" role="button">SHOP
				NOW!</a>



			<c:if test="${sessionScope.loginInfo.memberId eq 'admin' }">

				<a href="shopBoard.do" class="btn" role="button"
					style="background: #18BC9C; color: white;">상품등록</a>

			</c:if>




		</div>
	</div> --%>


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


	<!-- 상품 리스트 -->

	<div class="container-fluid" style="width: 79vw;">
		<div class="row">
			<div class="col m-1 sub-con"
				style="background-image: url('resources/images/camp-mall/1.jpg')">


				<div class="subcat-panel">
					<a href="/shop/en/tents"><h4>텐트</h4></a>
					<ul class="subcat-links">
						<li><a class="subcat-panel-1" href="shopPage.do?goodsId=${goods.goodsId }">오두막
								텐트</a></li>
						<li><a class="subcat-panel-1" href="/shop/en/cabin-tents">패밀리
								돔 텐트</a></li>
						<li><a class="subcat-panel-1" href="/shop/en/dome-tents">초
								경량 텐트</a></li>
						<li><a class="subcat-panel-1"
							href="/shop/en/tent-accessories">선쉐이드</a></li>

					</ul>
				</div>
			</div>
			<div class="col m-1 sub-con"
				style="background-image: url('resources/images/camp-mall/2.jpg')">
				<div class="subcat-panel">
					<a href="/shop/en/cots-beds-sleeping-pads"><h4>테이블 & 의자</h4></a>
					<ul class="subcat-links">
						<li><a class="subcat-panel-2" href="/shop/en/sleeping-bags">우드
								테이블</a></li>
						<li><a class="subcat-panel-2" href="/shop/en/sleeping-pad">폴딩
								테이블</a></li>
						<li><a class="subcat-panel-2" href="/shop/en/Cots">릴렉스 체어</a></li>
						<li><a class="subcat-panel-2" href="/shop/en/camp-furniture">컴포터블
								체어</a></li>
					</ul>
				</div>
			</div>
			<div class="col m-1 sub-con"
				style="background-image: url('resources/images/camp-mall/3.jpg')">
				<div class="subcat-panel">
					<a href="/shop/en/camp-essentials"><h4>액세서리</h4></a>
					<ul class="subcat-links">
						<li><a class="subcat-panel-3"
							href="/shop/en/bug-spray-sunscreen">캠프 액세서리</a></li>
						<li><a class="subcat-panel-3"
							href="/shop/en/camp-accessories">히터</a></li>
						<li><a class="subcat-panel-3" href="/shop/en/drinkware">기타용품</a></li>
						<li><a class="subcat-panel-3" href="/shop/en/camp-chairs">선크림</a></li>

					</ul>
				</div>


			</div>
			<div class="col m-1 sub-con"
				style="background-image: url('resources/images/camp-mall/4.jpg')">
				<div class="subcat-panel">
					<a href="/shop/en/lighting"><h4>버너/랜턴</h4></a>
					<ul class="subcat-links">
						<li><a class="subcat-panel-4" href="/shop/en/batteries">휘발유버너</a></li>
						<li><a class="subcat-panel-4" href="/shop/en/flashlights">가스버너</a></li>
						<li><a class="subcat-panel-4" href="/shop/en/headlamps">알파인버너</a></li>
						<li><a class="subcat-panel-4" href="/shop/en/lanterns">전기랜턴</a></li>

					</ul>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col m-1 subcat sub-con"
				style="background-image: url('resources/images/camp-mall/5.jpg')">
				<div class="subcat-panel">
					<a href="/shop/en/camp-stoves-cooking"><h4>주방</h4></a>
					<ul class="subcat-links">
						<li><a class="subcat-panel-5" href="/shop/en/coolers">티타늄티팟</a></li>
						<li><a class="subcat-panel-5" href="/shop/en/camp-cookware">텀블러</a></li>
						<li><a class="subcat-panel-5" href="/shop/en/camp-food">조리도구</a></li>
						<li><a class="subcat-panel-5" href="/shop/en/camp-stoves">스토브</a></li>

					</ul>
				</div>
			</div>
			<div class="col m-1 sub-con"
				style="background-image: url('resources/images/camp-mall/6.jpg')">
				<div class="subcat-panel">
					<a href="/shop/en/patio-cooking"><h4>침낭/매트</h4></a>
					<ul class="subcat-links">
						<li><a class="subcat-panel-6" href="/shop/en/grills">4계절침낭</a></li>
						<li><a class="subcat-panel-6" href="/shop/en/smokers">하계용침낭</a></li>
						<li><a class="subcat-panel-6"
							href="/shop/en/turkey-and-fish-fryers">에어매트</a></li>
						<li><a class="subcat-panel-6" href="/shop/en/coolers">방석/배개</a></li>

					</ul>
				</div>
			</div>
			<div class="col m-1 sub-con"
				style="background-image: url('resources/images/camp-mall/7.jpg')">
				<div class="subcat-panel">
					<a href="/shop/en/packs-bags"><h4>백팩</h4></a>
					<ul class="subcat-links">
						<li><a class="subcat-panel-7"
							href="/shop/en/duffel-travel-bags">백팩</a></li>
						<li><a class="subcat-panel-7"
							href="/shop/en/daypacks-backpacks">다용도가방</a></li>
						<li><a class="subcat-panel-7" href="/shop/en/hydration-packs">방수가방</a></li>
						<li><a class="subcat-panel-7"
							href="/shop/en/hunting-packs-bags-shop-all">하드케이스</a></li>
					</ul>
				</div>
			</div>
			<div class="col m-1 sub-con"
				style="background-image: url('resources/images/camp-mall/8.jpg')">
				<div class="subcat">
					<div class="subcat-panel">
						<a href="/shop/en/game-food-processing"><h4>NEW ARRIVALS</h4></a>
						<ul class="subcat-links">
							<li><a class="subcat-panel-8" href="/shop/en/dehydrators">NEW
									ARRIVALS</a></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>