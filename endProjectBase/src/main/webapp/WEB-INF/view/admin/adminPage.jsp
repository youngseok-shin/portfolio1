<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style type="text/css">
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

.boldBorder {
	border-top: 2px solid #474747;
}
.backColor{
	background: #f6f8f8;
	font-weight: bold;
}
.listBoard {
	width: 100%;
	text-align: center;
}
table{
	font-size: 17px;
}
tr {
	height: 60px;
	
	margin: 0 auto;
}

td, th {
	vertical-align: middle;
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

.layout {
	width: 1200px;
	height: auto;
	margin: 0 auto;
	padding-top: 24px;
}

label:hover {
	text-decoration: underline;
}

.infoContent {
	
}

.contUl>li {
	float: left;
	width: auto;
	height: 60px;
	text-align: center;
	font-size: 15px;
	background-color: #999999;
	color: white;
	padding: 15px 99px;
}

.contLi {
	border-right: 1px solid white;
	border-right: 1px solid white;
}

.contUl a {
	font-weight: bold;
	color: white;
}

.contUl>li:hover {
	background-color: #dedede;
	color: black;
	border-top: 2px solid black;
	border-left: 1px solid #999999;
	border-right: 1px solid #999999;
	cursor: pointer;
}
.layout2 {
	width:1200px;
	height:auto;
	margin: 0 auto;
	padding-top: 66px;
}
</style>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
<body>
<input type="hidden" id="subMenu" value="${subMenu}">
<%-- <input type="hidden" id="realPw" value="${inMyInfoSelPw.memberPassword }"> --%>
	<div class="topImage">
		<h1></h1>
		<img alt="" src="resources/images/cutback1.jpg" width="100%;"
			style="height: 60%;">
	</div>
	<!--  시작 -->
	<div class="layout">
		<hr style="padding-top: 10px;">
		<div class="infoContent">
			<ul class="contUl">
				<!-- <li class="contLi" data-subMenu="subMenu1">게시판 글 관리</li> -->
				<li class="contLi" data-subMenu="subMenu2">쇼핑몰 상품관리</li>
				<li class="contLi" data-subMenu="subMenu3">회원관리</li>
			</ul>
		</div>
		<!-- <h4>
			<i class="fas fa-question"></i>&nbsp;&nbsp;Q & A</h4>
		<p class="span1">
			<i class="fas fa-book-open"></i> <span>전체게시물 <strong></strong>
			</span> <span> Ι 현재페이지<strong></strong></span>
		</p> -->
	</div>
	<!-- <hr style="height: 1px; border-width: 0; color: gray; background-color: gray; margin-top: 75px; margin-bottom: 0px;"> -->
	<div class="layout2">

		<!-- 게시판 글 관리 -->
		<div class="layoutTag">
 		
		</div>
		
		<!-- 쇼핑몰 상품관리(상품등록) -->
		<div class="layoutTag">
			<p>&nbsp;</p>
			<h4 style="margin: 15px;">
				<i class="fas fa-chevron-circle-right"></i>&nbsp;&nbsp;쇼핑상품 등록</h4>
			<form action="shopBoardInsert2.do" method="post" enctype="multipart/form-data">
			<table class="listBoard" style="border-spacing: 2px;">
				<colgroup>
					<col width="15%">
					<col width="*">
					<col width="*">
					<col width="*">
				</colgroup>
				<tr class="boldBorder">
					<td style="font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;">분류</td>
					<td style="text-align: left;">
						<select class="form-control">
							<option>텐트</option>
							<option>테이블&amp;의자</option>
							<option>액세서리</option>
							<option>랜턴</option>
							<option>주방도구</option>
							<option>침낭/매트</option>
							<option>기타용품</option>
						</select>
					</td>
				</tr>
				<tr>
					<td style="font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;">상품이름</td>
					<td style="text-align: left;"><input type="text" class="form-control" name="goodsName" id="goodsName" placeholder="상품이름을 입력하세요"></td>
				</tr>
				<tr>
					<td style="font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;">상품가격</td>
					<td style="text-align: left;"><input type="text" class="form-control" name="goodsPrice" id="goodsPrice" placeholder="상품가격을 입력하세요"></td>
				</tr>
				<tr>
					<td style="font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;">컬러</td>
					<td style="text-align: left;">
						<!-- <input type="text" class="form-control" name="goodsColor" id="goodsColor" placeholder="상품색상을 입력하세요"> -->
						<input type="checkbox" value="red" name="goodsColor" id="red">Red&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="beige" name="goodsColor" id="beige">Beige&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="black" name="goodsColor" id="black">Black&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="white" name="goodsColor" id="white">White&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="blue" name="goodsColor" id="blue">Blue&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="green" name="goodsColor" id="green">Green&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="orange" name="goodsColor" id="orange">Orange&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="yellow" name="goodsColor" id="yellow">Yellow&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="navy" name="goodsColor" id="navy">Navy&nbsp;&nbsp;&nbsp;
						<input type="checkbox" value="purple" name="goodsColor" id="purple">Purple
					</td>
				</tr>
				<tr>
					<td style="font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;">제조국</td>
					<td style="text-align: left;"><input type="text" class="form-control" name="goodsMadeFrom" id="goodsMadeFrom" placeholder="상품제조국을 입력하세요"></td>
				</tr>
				<tr>
					<td style="font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;">상품이미지</td>
					<td style="text-align: left;"><input type="file" class="form-control" id="file1" name="file1" placeholder="상품 이미지를 등록하세요."></td>
				</tr>
				<tr>
					<td style="font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;">상품상세이미지</td>
					<td style="text-align: left;"><input type="file" multiple="multiple" class="form-control" id="file2" name="file2" placeholder="상품 상세이미지를 등록하세요."></td>
				</tr>
				<tr style="border-bottom: 2px solid #474747; font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;">
					<td style="font-size: 14px; padding: 15px 10px; line-height: 18px; font-weight: bold;">상세내용</td>
					<td style="text-align: left; margin-bottom: 15px;">
						<textarea class="form-control" name="goodsContent" id="goodsContent" rows="3" style="margin-bottom: 15px;"></textarea>
					</td>
				</tr>
			</table>
			<div align="center">
				<input type="submit" value="상품등록" class="btn btn-primary" style="margin: 25px; padding: 15px; font-weight: bold;">
			</div>
		</form>
		</div>

		<!-- 회원관리 -->
		<div class="layoutTag" id="MyInfo">
 		<p>&nbsp; </p>
			<h4 style="margin: 15px;"><i class="fas fa-chevron-circle-right"></i>&nbsp;&nbsp;회원관리</h4>
				<table class="listBoard">
					<colgroup>
						<col width="5%">
						<col width="20%">
						<col width="20%">
						<col width="20%">
						<col width="20%">
					</colgroup>
					<tr class="boldBorder backColor" style="border-bottom : 1px solid #E5E5E5;">
						<td>
							<input type="checkbox" id="checkAll">
						</td>
						<td>회원아이디</td>
						<td>회원이름</td>
						<td>이메일</td>
						<td>회원등급</td>
						<td>가입일</td>
					</tr>
					<c:forEach items="${selectAllMember }" var="me">
						<tr style="border-bottom : 1px solid #E5E5E5;">
							<td>
								<input type="checkbox" class="chk" value="${me.memberNum }">
							</td>
							<td>${me.memberId }</td>
							<td>${me.memberName }</td>
							<td>${me.email }</td>
							<td>${me.memberType }</td>
							<td>${me.regDate }</td>
						</tr>
					</c:forEach>
				</table>
				<div align="right">
					<input type="button" id="delBtn" value="선택 회원 삭제" style="margin-top: 15px; font-size: 13px; padding: 10px;" class="btn btn-primary">
				</div>
		</div>
	</div>
<hr size="2px" width="100%">
<script src="resources/js/adminPage.js?ver=8"></script>
</body>
</html>