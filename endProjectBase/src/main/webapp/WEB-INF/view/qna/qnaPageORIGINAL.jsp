<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
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
	margin: 0 auto;
}

label:hover {
	text-decoration: underline;
}
</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>

<body>
	<div class="topImage">
		<h1> </h1>
		<img alt="" src="resources/images/2000.jpg" width="100%;"
			style="height: 400px;">
	</div>
	<!--  시작 -->
	<div class="layout">
		<header>
			<h2 style="margin-top: 21px;">고객센터</h2>
			<hr>
		</header>
		<div class="total-search">
			<div class="title">
				<select style="width: 15%; height: 40px;">
					<option>제목+내용</option>
				</select> <input type="text" placeholder="검색어를 입력하세요"  style="width: 40%; height: 40px;"> <i class="fas fa-search fa-lg"></i>
			</div>
		</div>
		<h4>
			<i class="fas fa-question"></i>&nbsp;&nbsp;Q & A</h4>
		<p class="span1">
			<i class="fas fa-book-open"></i> <span>전체게시물 <strong></strong>
			</span> <span> Ι 현재페이지<strong></strong></span>
		</p>
		<div>
			<table class="listBoard">
				<thead class="board-top">
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일</th>
					<th>조회</th>
				</thead>
				<tbody>
					<tr>
						<td>57</td>
						<td onclick="location.href='board4.do'">
							<label 	style="cursor: pointer;">[캠핑꿀팁] 캠핑매듭, 이것만 알면 99%는 해결!</label>
						</td>
						<td>관리자</td>
						<td>등록일</td>
						<td>조회</td>
					</tr>
					<tr>
						<td>15</td>
						<td onclick="location.href='board4.do'">
							<label	style="cursor: pointer;">check</label>
						</td>
						<td>관리자</td>
						<td>등록일</td>
						<td>조회</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<!-- //표시 -->
			<ul class="sub22">
				<li class="pre"><i class="fas fa-angle-double-left"></i></li>
				<!--페이지 넘버들어갈거임  -->
				<li class="num"><a href="#">1</a> <a href="#">2</a> <a href="#">3</a></li>
				<li class="next"><i
					class="fas fa-angle-double-left  fa-flip-horizontal"></i></li>
				<li></li>
			</ul>
		</div>
	</div>
</body>
</html>




