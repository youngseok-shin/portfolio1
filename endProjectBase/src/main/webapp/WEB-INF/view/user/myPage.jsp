<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
.selectDel{
	text-align:center;
	color:white;
	background-color:black;
	border:0px;
	border-radius:5px;
	font-size:15px;
	float: right;
	width: 60px;
	height: 30px;"
}
.phone{
	transform:rotate(180deg);
}
.campList{
	padding:15px;
	height: 232px;
	border-bottom: 1px solid #999999;
}
.titleImg{
	width: 300px;
	height: 200px;
	border: 1px solid #999999;
	cursor: pointer;
}
.titleFacltNm{
	display: inline-block;
	cursor: pointer;
}
.campListDetail{
	display: inline-block;
	float: left;
	margin: 30px 0px 30px 40px;
	font-size: 20px;
	width: 70%;
}
#boardTitle{
	cursor: pointer;
}
</style>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>
<body>
<input type="hidden" id="subMenu" value="${subMenu}">
<input type="hidden" id="realPw" value="${inMyInfoSelPw.memberPassword }">
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
				<li class="contLi" data-subMenu="subMenu1">내가찜한 캠핑장</li>
				<li class="contLi" data-subMenu="subMenu2">내가 작성한 후기</li>
				<!-- <li class="contLi" data-subMenu="subMenu3">내가 작성한 리뷰</li> -->
				<li class="contLi" data-subMenu="subMenu4">회원정보</li>
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

		<!-- 내가찜한 캠핑장 -->
		<div class="layoutTag">
			<p>&nbsp; </p>
			<h4 style="margin: 15px;"><i class="fas fa-chevron-circle-right"></i>&nbsp;&nbsp;내가 찜한 캠핑장</h4>
			<input class="memberNum" type="hidden" value="${sessionScope.loginInfo.memberNum }">
			<c:choose>
				<c:when test="${empty callSelectCamp}">
				<div style="text-align: center; border-top: 2px solid #474747; border-bottom: 1px solid #999999; padding: 15px 0px;">찜한 캠핑장이 없습니다.</div>
				</c:when>
				<c:otherwise>
				<div style="border-top:2px solid #474747"></div>
					<c:forEach items="${callSelectCamp }" var="campInfo">
						<div class="campList" >
						
							<div style="display: inline-block; float: left;">
								<c:choose>
									<c:when test="${campInfo.firstImageUrl ne null}">
										<img class="titleImg" src="${campInfo.firstImageUrl }" onclick="location.href='detailCamp.do?campNum=${campInfo.campNum}&contentId=${campInfo.contentId }&facltNm=${campInfo.facltNm }'">
									</c:when>
									<c:otherwise>
										<img class="titleImg"  src="resources/images/noImage.jpg"  onclick="location.href='detailCamp.do?campNum=${campInfo.campNum}&contentId=${campInfo.contentId }&facltNm=${campInfo.facltNm }'">
									</c:otherwise>
								</c:choose>
							</div>
							<div class="campListDetail">
								<div class="titleFacltNm" onclick="location.href='detailCamp.do?campNum=${campInfo.campNum}&contentId=${campInfo.contentId }&facltNm=${campInfo.facltNm }'">[${campInfo.doNm } ${campInfo.sigunguNm }]${campInfo.facltNm }</div>
								<input type="button" value="찜삭제" class="selectDel">
								<input type="hidden" value="${campInfo.campNum }">
								<input type="hidden" value="${campInfo.facltNm }">
								<div style="font-size: 15px; margin: 20px 0px 0px 15px;">
									<i class="fas fa-map-marker-alt"></i>&nbsp;&nbsp;${campInfo.addr1 }<c:if test="${campInfo.addr1 eq null}">주소가 없습니다.</c:if>
									<br><br>
									<i class="fas fa-phone phone"></i>&nbsp;&nbsp;${campInfo.tel }<c:if test="${campInfo.tel eq null}">연락처가 없습니다.</c:if>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			
			
			<!-- <div>
				//표시
				<ul class="sub22">
					<li class="pre"><i class="fas fa-angle-double-left"></i></li>
					페이지 넘버들어갈거임 
					<li class="num"><a href="#">1</a> <a href="#">2</a> <a
						href="#">3</a></li>
					<li class="next"><i
						class="fas fa-angle-double-left  fa-flip-horizontal"></i></li>
					<li></li>
				</ul>
			</div> -->
			
		</div>
		
		<!-- 내가작성한 후기 -->
		<div class="layoutTag">
			<p>&nbsp; </p>
			<h4 style="margin: 15px;"><i class="fas fa-chevron-circle-right"></i>&nbsp;&nbsp;내가 작성한 후기</h4>
				<table class="listBoard">
					<colgroup>
						<col width="15%">
						<col width="*">
						<col width="15%">
						<col width="15%">
						<col width="15%">
					</colgroup>
					<tr class="boldBorder" style="border-bottom : 1px solid #E5E5E5;">
						<td class="backColor">번호</td>
						<td class="backColor">제목</td>
						<td class="backColor">작성자</td>
						<td class="backColor">날짜</td>
						<td class="backColor">조회수</td>
					</tr>
					<c:forEach items="${selectReview }" var="board">
						<tr style="border-bottom : 1px solid #E5E5E5;">
							<td>${board.boardNum }</td>
							<td id="boardTitle">${board.boardTitle }</td>
							<td>${board.boardWriter }</td>
							<td>${board.boardDate }</td>
							<td>${board.boardCnt }</td>
						</tr>
					</c:forEach>
				</table>
		</div>

		<!-- 내가 작성한 리뷰 -->
		<div class="layoutTag"></div>



		<!-- 회원정보 -->
		<div class="layoutTag" id="MyInfo">
 		<p>&nbsp; </p>
			<h4 style="margin: 15px;"><i class="fas fa-chevron-circle-right"></i>&nbsp;&nbsp;내 정보확인</h4>
				<table class="listBoard">
					<colgroup>
						<col width="30%">
						<col width="70%">
					</colgroup>
					<tr class="boldBorder" style="border-bottom : 1px solid #E5E5E5;">
						<td class="backColor">이름</td>
						<td style="text-align: left; padding-left: 20px;">${sessionScope.loginInfo.memberName }</td>
					</tr>
					<tr style="border-bottom : 1px solid #E5E5E5;">
						<td class="backColor">아이디</td>
						<td style="text-align: left; padding-left: 20px;">${sessionScope.loginInfo.memberId }</td>
					</tr>
					<tr style="border-bottom : 1px solid #E5E5E5;">
						<td class="backColor">이메일</td>
						<td style="text-align: left; padding-left: 20px;">${sessionScope.loginInfo.email }</td>
					</tr>
				</table>
				<div align="right">
					<input type="button" id="inMemInfoChPw" value="비밀번호 변경" style="margin-top: 15px; font-size: 13px; padding: 10px;" class="btn btn-primary">
				</div>
		</div>
	</div>
<hr size="2px" width="100%">
<script type="text/javascript" src="resources/js/myPage.js?ver=43"></script>
</body>
</html>