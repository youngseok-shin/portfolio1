<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행후기 제목누르면 상세보기 페이지 댓글남길수있는</title>
<style type="text/css">
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

tr {
	height: 80px;
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

.num {
	line-height: 38px;
}

.layout {
	width: 1200px;
	margin: 0 auto;
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

.comment {
	width: 100%;
	min-height: 220px;
	background: #f8f9f9;
	box-sizing: border-box;
	padding: 40px 27px;
	border-bottom: 1px solid #dedede;
	border-top: 1px solid #dedede;
}

dt {
	display: inline-block;
	font-size: 17px;
	color: #000;
	font-weight: bold;
}

textarea {
	float: left;
	width: 92%;
	height: 100px;
	color: #666;
	letter-spacing: -1px;
	word-spacing: 2px;
	border: 1px solid #d6d4d5;
	overflow: auto;
	overflow-x: hidden;
	resize: none;
	box-sizing: border-box;
	padding: 10px;
	line-height: 22px;
}

.submitButton {
	border-radius: 5px;
	padding: 10px 20px;
	text-align: center;
	background: #000;
	color: #fff;
	height: 100px;
}
/* .buttonSub{
    float: right;
    width: 100px;
    margin: 10px 0 0 0;
    height: 100px;
    font-size: 16px;

} */
.content {
	word-break: break-all;
	word-wrap: break-word;
}
.commentList{
	padding: 27px;
}
#xbutton{
	cursor: pointer;
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
}
}
</style>


<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>

	<div class="topImage">
		<h1>사진은참고용</h1>

		<img alt="" src="resources/images/1234.jpg" width="100%;"
			style="height: 60%;">
	</div>

	<!--  시작 -->
	<div class="layout">
		<header>
			<h2 style="margin-top: 21px;">캠핑 &amp; 여행후기</h2>
			<hr>
		</header>
		<h4>
			<i class="fas fa-rss"></i> 캠핑 &amp; 여행후기
		</h4>

		<table class="listBoard">
			<tr class="board-top">
				<th style="font-size: x-large;">[${vv.facltNm }] ${vv.boardTitle }
					<div style="font-size: medium; display: inline-block; float: right; margin: 7px 30px 0px 0px;" align="right">${vv.boardWriter }&nbsp; |&nbsp; ${vv.boardDate }&nbsp; |&nbsp; 조회수 ${vv.boardCnt }</div>
				</th>
			</tr>
			<!-- 사진등록은 에디터폼을 써야함 -->
			<%-- <c:forEach items="${vvvv }" var="vv">
				<td><img src="/upload/${images.boardImgName }"></td>
			</c:forEach> --%>
		</table>

		<br>

		<table style="word-break: break-all; line-height: 40px; margin: 0 auto; text-align: center; width: 80%;">
			<tr>
				<td>${vv.boardContent }</td>
			</tr>
		</table>

		<!-- //표시 -->
		<br>
		
		<!--  댓글쓰는곳 -->
		<form action="comment.do" method="post" id="comment1">
			<input type="hidden" class="boardNum" name="boardNum" value="${vv.boardNum }">
			<input type="hidden" class="memberName" name="memberName" value="${sessionScope.loginInfo.memberId }">
			<div class="comment">
			
				<h4>댓글쓰기</h4>
				<textarea name="content"></textarea>
				
				<input type="button" value="입력" class="submitButton">
<!-- 				<button type="submit" class="submitButton">입력</button> -->
	
			</div>
		</form>
		
		<form action="commentDelete.do" method="post" id="comment2">
			<c:forEach items="${commentList }" var="comment">
				<div class="commentList">
					<p><strong style="color: #7A85FF;">${comment.memberName }</strong> &nbsp;&nbsp;|&nbsp;&nbsp; ${comment.createDate }&nbsp;&nbsp;
						<c:if test="${sessionScope.loginInfo.memberId eq comment.memberName }">
							<i class="fas fa-times" id="xbutton" style="color: #F2657A;"></i>
							<input type="hidden" id="commentNum" value="${comment.commentNum }">
							
						</c:if>
					</p>
					${comment.content }
				</div>
				<hr>
			</c:forEach>
		</form>
		
		<div class="last_button">
			<div class="keep_right">


				<c:if
					test="${sessionScope.loginInfo.memberId eq vv.boardWriter || sessionScope.loginInfo.memberType eq '2'}">
					<input type="button" value="수정" class="btn_blue" onclick="location.href='board16.do?boardNum=${vv.boardNum}';">
					<input type="button" value="삭제" class="btn_blue" id="deleteBtn" onclick="location.href='board18.do?boardNum=${vv.boardNum}';">
				</c:if>

				<button title="목록" class="btn_gray"
					onclick="location.href='board1.do'; return false;" type="button">
					<span>목록</span>
				</button>
			</div>

		</div>

	</div>
<script src="resources/js/reviewDetail.js?ver=111"></script>
</body>
</html>




