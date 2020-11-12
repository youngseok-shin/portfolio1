<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style type="text/css">
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

.last_button{
	position: relative;
    width: 100%;
    height: 38px;
    margin-top: 20px;
    clear: both;
}

.keep_right{
	float: right;
}

.total-search{

  background: #f6f8f8;
    padding: 20px 10px 20px 10px;
    display: block;
    text-align: center;
    border: 1px solid #dedede;
    margin-bottom: 20px;
}

.search{

    width: auto;
    padding: 5px 10px 5px 21px;
    font-family: inherit;
    background: #fff ;
    border: 1px solid #c7c7c7;
    appearance: none;
    font-size: 13px;
    line-height: 25px;
    margin-right: 0px;
    box-sizing: border-box;
    width: 100%;
}

header{
	height: 100px;
}

.span1{
	text-align:  right;
	font-size: 14px;
    line-height: 28px;
}

.board-top{
	border-top: 2px solid #474747;
	background: #f6f8f8;
}
.listBoard{
	width: 100%;
	text-align: center;
}

tr{
	height:80px;
	margin: 0 auto;
}

td,th{
	vertical-align: middle;
}

.sub22{
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

.pre{
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

.next{
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
.num{
    line-height: 38px;
}
.layout{
	width:1200px;
	margin: 0 auto;
}

label:hover { 
	text-decoration: underline; 
}

.searchInput{
	 width: 40%;
	 height: 40px;
	 margin-right: 5px;
}

.button{
	border:1px solid #ADADAD;
	cursor: pointer;
	background: #FFFBED;
	width:45px;
	height: 30px;
	text-align: center;
	border-radius: 5px;
}

.button:hover {
	background-color: #EDEDAA;
}
</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>

<body>

	<div class="topImage">
		<h1>
			사진은참고용
		</h1>
		<img alt="" src="resources/images/1234.jpg" width="100%;" style="height: 60%;" > 
	</div>

<!--  시작 -->
	<div class="layout">
	
		<header>
			<h2  style="margin-top: 21px;">
				공지사항
			</h2>
			<hr>
		</header>
	
		<form action="board23.do" method="post">
		<div class="total-search">
			<div class="title">
				<select style="width: 15%; height: 40px;"name="searchKeyword">
					<option value="BOARD_TITLE"> 제목 + 내용 </option>
				</select>
			
				<input type="text" class="searchInput" placeholder="검색어를 입력하세요" name="searchValue" value="${searchVO.searchValue }" >
				<input class="button" type="submit" value="검색">
			
			</div>
		</div>
		</form>
		
		<h4> <i class="fas fa-rss"></i> 공지사항</h4>
	
		<p class="span1">
			<i class="fas fa-book-open"></i>
			<span>
				전체게시물 | 현재페이지
			</span>
		</p>
	
		<div>
		<table  class="listBoard">
			<colgroup width="10%"/>
			<colgroup width="60%"/>
			<colgroup width="10%"/>
			<colgroup width="10%"/>
			<colgroup width="10%"/>
			<thead class="board-top">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회</th>
				</tr>
			</thead>
		
			<tbody>
				<c:forEach items="${selectNoticeList }" var="vv">
				
				<tr>
					<td>${vv.boardNum }</td>
					<td onclick="location.href='board22.do?boardNum=${vv.boardNum}'" >
					<label style="cursor:pointer;">${vv.boardTitle }</label></td>
					<td>${sessionScope.loginInfo.memberName }</td>
					<td>${vv.boardDate }</td>
					<td>${vv.boardCnt }</td>
				</tr>
				
				</c:forEach>
			</tbody>
		</table>
		
		</div>
	
		<div>
		<!-- //표시 -->
			<ul class="sub22">
				<li class="pre">
					<i class="fas fa-angle-double-left"></i>
				</li>
			
			<!--페이지 넘버들어갈거임  -->
				<li class="num">
					<a href="#">1</a>
					<!-- <a href="#">2</a> -->
					<!-- <a href="#">3</a> -->
				</li>
			
				<li class="next">
					<i class="fas fa-angle-double-left  fa-flip-horizontal"></i>
				</li>
			</ul>
		</div> 
 
		<!-- admin일때만보이게  나중에 수정 -->
		<div class="last_button">
			<div class="keep_right">
				<c:if test="${sessionScope.loginInfo.memberId eq 'admin' }">
					<button title="글쓰기" class="btn_blue" onclick="location.href='board19.do';" type="button">
						<span>글쓰기</span>
					</button>
				</c:if>
			</div>
		</div>
	 
	</div>
</body>
</html>




