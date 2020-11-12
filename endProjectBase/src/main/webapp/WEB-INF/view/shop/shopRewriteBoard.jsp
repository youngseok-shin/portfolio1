<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품올리기수정</title>
<style type="text/css">
iframe {
	border: solid 1px #777;
	vertical-align: middle;
}

.total-search {
	background: #f6f8f8;
	padding: 20px 10px 20px 10px;
	display: block;
	text-align: center;
	border: 1px solid #dedede;
	margin-bottom: 20px;
}

.search {
	width: auto;
	padding: 5px 10px 5px 21px;
	font-family: inherit;
	background: #fff;
	border: 1px solid #c7c7c7;
	appearance: none;
	font-size: 13px;
	line-height: 25px;
	margin-right: 0px;
	box-sizing: border-box;
	width: 100%;
}

header {
	height: 100px;
}

.span1 {
	text-align: right;
	font-size: 14px;
	line-height: 28px;
}

.board-top {
	border-top: 2px solid #474747;
	background: #f6f8f8;
}

.listBoard {
	width: 100%;
	text-align: center;
}

.layout {
	width: 1200px;
	margin: 0 auto;
}

.sub22 {
	display: block;
	position: relative;
	width: 99.5%;
	height: 40px;
	overflow: hidden;
	text-align: center;
	margin-top: 30px;
	clear: both;
	border: 1px solid #ddd;
	background-color: #f8f8f8;
	clear: both;
}

.pre {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 80px;
	height: 40px;
	line-height: 38px;
	background-color: #fff;
	border-right: 1px solid #ddd;
	text-align: center;
}

.next {
	position: absolute;
	top: 0px;
	right: 0px;
	width: 80px;
	height: 40px;
	line-height: 38px;
	background-color: #fff;
	border-left: 1px solid #ddd;
	text-align: center;
}

.num {
	line-height: 38px;
}

.board_list {
	position: relative;
	width: 100%;
	clear: both;
	border-top: 2px solid #474747;
	font-size: 15px;
	border-collapse: collapse;
}

.review {
	width: 100%;
	border-bottom: 1px solid #dedede;
	height: auto;
	overflow: hidden;
	padding: 45px 40px;
	box-sizing: border-box;
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

.btn_gray {
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
	background-color: gray;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
}

.board_btn {
	float: right;
}

.board_form_first {
	border-top: 2px solid #474747;
	border-bottom: 1px solid #474747;
	background: #f9fafb;
	width: 1200px;
	margin: 0 auto;
}

select {
	width: 100%;
	box-sizing: border-box;
	padding: 5px 50px 5px 5px;
	font-family: inherit;
	background: #fff url(/img/2018/layout/arr2.png) no-repeat 98% 50%;
	border: 1px solid #c7c7c7;
	appearance: none;
	font-size: 14px;
	line-height: 25px;
	margin-right: 5px;
}

table {
	display: table;
	border-collapse: separate;
	box-sizing: border-box;
	border-spacing: 3px;
	border-color: grey;
	width: 100%;
}

th {
	box-sizing: border-box;
	width: 100% !important;
	display: block;
	padding: 10px 10px 0 15px;
	line-height: 18px;
	font-weight: bold;
	color: #333;
	text-align: center;
}

input[type="text"] {
	width: 100%;
	border: 1px solid #c7c7c7;
	height: 35px;
	font-size: 12px;
	margin: 1px 0px;
	line-height: 35px;
	background: #fff;
	box-sizing: border-box;
}

input {
	/* padding: 0 8px; */
	border: 1px solid #e5e5e5;
	background: #f9f9f9;
	font-size: inherit;
	font-family: inherit;
	color: inherit;
	vertical-align: middle;
	width: 100%;
}
select {
	font-size: 12px;
	font-family: inherit;
	color: inherit;
}
td {
	padding: 10px 15px;
	line-height: 18px;
	font-weight: normal;
	color: #777;
}

.last_button {
	position: relative;
	width: 100%;
	height: 38px;
	margin-top: 20px;
	clear: both;
}

.keep_right {
	float: right;
}

.textArea {
	vertical-align: middle;
	border: 1px solid #c7c7c7;
}

.carousel-item>img {
	width: 100%;
}
</style>

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




	<form action="shopRewriteBoard1.do?goodsId=${goods.goodsId }" method="post" >


		<div class="board_form_first">

			<h4>상품 업로드 수정</h4>
			<table>
				<tbody class="board_form">
				
					<tr>


						<th><label>상품</label></th>

						<td><input type="text" name="goodsId" value="${goods.goodsId }"></td>

					</tr>
					<tr>

						<th><label>상품명</label></th>
						<td><input type="text" name="goodsName" value="${goods.goodsName }"></td>
					</tr>



					<tr>
						<th><label>가격</label></th>
						<td><input type="text" name="goodsPrice" value="${goods.goodsPrice }"></td>

					</tr>
					
						<tr>
						<th><label>컬러</label></th>
						<td><select name="goodsColor">
								<c:forEach items="${colors }" var="color">
									<option>${color }</option>
								</c:forEach>	
							</select></td>

					</tr>
					
						<tr>
						<th><label>제조국</label></th>
						<td><input type="text" name="goodsMadeFrom" value="${goods.goodsMadeFrom }"></td>

					</tr>
					
					<tr>
						<th><label> 사진첨부 </label>
							<div>
								<i class="fas fa-plus-circle"></i> <i
									class="fas fa-minus-circle"></i>
							</div>

							<div>
								<a href="#" onclick=""> </a> <a href="#" onclick=""> </a>
								<!-- onclick 누를시 + 첨부파일 하나하나 늘어나게 -누르면 줄게   -->
							</div></th>

						<td>
							<p>
								<i class="fas fa-camera"></i>첫 번째 첨부파일이 대표 이미지로 등록됩니다.
							</p> <label></label> <input type="file" title="첨부파일1" name="fileName"
							placeholder="대표이미지" accept="image/*"> <!-- <input
								type="file" title="첨부파일2" name="file2"
								multiple="multiple" placeholder="상세이미지" accept="image/*"> -->
						</td>



					</tr>
					<tr class="middle">
						<th><label>내용</label></th>



						<td><textarea rows="15" cols="1"
								style="width: 100%; height: 300;" class="textArea"
								name="goodsContent" > ${goods.goodsContent }</textarea></td>

						<!-- <iframe src="smart_editor2_inputarea.html" width="100%" height="300"> </iframe> -->
					</tr>

				</tbody>
			</table>

		<div class="last_button">
			<div class="keep_right">



				<input type="submit" class="btn_blue" value="등록">


				<button title="목록" class="btn_gray"
				
					onclick="location.href='shopList.do';" type="button">
					<span>목록</span>
				</button>
			</div>

		</div>
		</div>
	</form>





</body>
</html>