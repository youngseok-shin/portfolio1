<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 글쓰는곳</title>
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
}
</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>



	<!--enctype="multipart/form-data"  -->

	<div class="topImage">
		<h1>사진은참고용</h1>

		<img alt="" src="resources/images/1234.jpg" width="100%;"
			style="height: 60%;">
	</div>

	<div class="layout">

		<header>
			<div style="margin-top: 21px;">
				<h2>
					캠핑 &amp; 여행후기 &emsp; &emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp;
					&emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; <a
						href="https://www.facebook.com/groups/campingpeople"
						target="_blank"><img alt="facebook"
						src="resources/images/logo2.png" width="50px;"></a> <a
						href="https://www.instagram.com/explore/tags/camping/"
						target="_blank"><img alt="insta"
						src="resources/images/logo1.png" width="50px;"></a> <a
						href="https://section.blog.naver.com/Search/Post.nhn?pageNo=1&rangeType=ALL&orderBy=sim&keyword=%EC%BA%A0%ED%95%91"
						target="_blank"><img alt="naver"
						src="resources/images/logo.png" width="50px;"></a>

				</h2>
			</div>

			<hr>

		</header>


		<h4>
			<i class="far fa-comments"></i> 캠핑 &amp; 여행후기
		</h4>

<!-- ?boardNum=${vvv.boardNum } -->
			<form action="board17.do?boardNum=${vv.boardNum }" method="post" enctype="multipart/form-data">
		<div class="board_form_first">
				<table>
					<tbody class="board_form">
						<tr>

							<th><label>제목</label></th>

							<td colspan="3">
								<input type="text" name="boardTitle" class="boardTitle" value="${vv.boardTitle}">
							</td>

						</tr>
						<tr>

							<th><label>작성자</label></th>
							<td colspan="3">
								<input type="text" name="boardWriter" value="${vv.boardWriter}" readonly>
							</td>
						</tr>


						<tr>
							<th><label>캠핑장</label></th>

							<td>
								<select style="width: 100%;" id="chkDoNm">
										<option value="">전체 (시, 도)</option>
										<c:forEach items="${doNmList }" var="doNms">
											<option value="${doNms.doNm }">${doNms.doNm }</option>
										</c:forEach>
								</select></td>
	
								<td><select style="width: 100%;" id="chkSigungu">
										<option value="">전체 (구, 군)</option>
								</select></td>
	
								<td><select style="width: 100%;" id="chkSite" name="facltNm">
										<option value="facltNm">전체 (캠핑장)</option>
								</select>
							</td>
						</tr>
						<tr>
							<th>
								<label> 사진첨부 </label>
							</th>

							<td colspan="3">
								<p>
									<input type="file" title="첨부파일1" name="fileName" placeholder="대표이미지" accept="image/*"> 
								</p>
								<i class="fas fa-camera"></i>첫 번째 첨부파일이 대표 이미지로 등록됩니다.
							</td>



<!--<input type="hidden" name="">  -->


						</tr>
						<tr class="middle">
							<th><label> 내용</label></th>



							<td colspan="3">
								<textarea rows="15" cols="1" style="width: 100%; height: 300;" class="textArea" name="boardContent">${vv.boardContent}</textarea>
							</td>

							<!-- <iframe src="smart_editor2_inputarea.html" width="100%" height="300"> </iframe> -->
						</tr>
					</tbody>
				</table>
		</div>

		<div class="last_button">
			<div class="keep_right">
				<input type="button" class="btn_blue" value="등록">

				<button title="목록" class="btn_gray"
					onclick="location.href='board1.do'; return false;" type="button">
					<span>목록</span>
				</button>
			</div>

		</div>

	</form>


	</div>


	<script src="resources/js/reviewRewriteForm.js?ver=81111"></script>
</body>
</html>