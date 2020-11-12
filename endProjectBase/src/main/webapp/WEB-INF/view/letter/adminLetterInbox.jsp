<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.tems:hover{
	cursor: pointer;
	opacity: 0.7;
}
.isRead{
	font-weight: bold;
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

tr {
	height: 50px;
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
.contUl>li {
	float: left;
	width: auto;
	height: 60px;
	text-align: center;
	font-size: 13px;
	background-color: #999999;
	color: white;
	padding: 15px 50px;
}

.contLi {
	border-right: 1px solid white;
	border-right: 1px solid white;
}

.contUl a {
	font-weight: bold;
	color: white;
}

.contUl > li:hover {
	/* background-color: #dedede; */
	color: black;
	border-top: 2px solid black;
/* 	border-left: 1px solid #999999;
	border-right: 1px solid #999999; */
	cursor: pointer;
}
.layout2 {
	width:1200px;
	height:auto;
	margin: 0 auto;
	padding-top: 50px;
}
</style>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
<input type="hidden" id="subMenu" value="${subMenu}">
<div class="topImage">
	<h1></h1>
	<img alt="" src="resources/images/cutback1.jpg" width="100%;"
		style="height: 60%;">
</div>
<div class="layout">
	<hr style="padding-top: 10px; margin-top: 45px;">
	<div class="infoContent">
		<ul class="contUl">
			<li class="contLi" data-subMenu="subMenu1"><h4><i class="far fa-envelope"></i>&nbsp;&nbsp;받은 메세지</h4></li>
			<li class="contLi" data-subMenu="subMenu2"><h4><i class="fas fa-inbox"></i>&nbsp;&nbsp;보낸 메세지</h4></li>
		</ul>
	</div>
</div>
<div class="layout2">
	<div class="layoutTag">
		<div>
			<table class="listBoard">
				<colgroup>
					<col width="5%">
					<col width="15%">
					<col width="50%">
					<col width="15%">
					<col width="15%">
				</colgroup>
				<thead class="board-top">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성자</th>
					<th>등록일</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${selectReceiveMsgList }" var="mes" varStatus="status">
				<c:choose>
					<c:when test="${mes.isChecked eq 'N' }">
						<tr class="tems isRead">
					</c:when>
					<c:otherwise>
						<tr class="tems">
					</c:otherwise>
				</c:choose>
						<td>
							<input type="hidden" class="mesNum" value="${mes.mesNum }">
							${rlistCnt - mes.rowNum + 1 }
						</td>
						<td>${mes.title }</td>
						<td>${mes.note }</td>
						<td>${mes.sId }</td>
						<td>${mes.inputDate }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		   <!-- pagination{s} -->
		   <div id="paginationBox">
		      <ul class="pagination">
		         <c:if test="${messageVO.prev}">
		            <li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${messageVO.page}', '${messageVO.range}', '${messageVO.rangeSize}')">Previous</a></li>
		         </c:if>
		         <c:forEach begin="${messageVO.startPage}" end="${messageVO.endPage}" var="idx">
		            <li class="page-item <c:out value="${messageVO.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${messageVO.range}', '${subMenu}', '${messageVO.rangeSize}')"> ${idx} </a></li>
		         </c:forEach>
		         <c:if test="${messageVO.next}">
		            <li class="page-item"><a class="page-link" href="#" onClick="fn_next('${messageVO.range}', '${messageVO.range}', '${messageVO.rangeSize}')" >Next</a></li>
		         </c:if>
		      </ul>
		   </div>
	</div>
<!-- 	</div> -->
	<div class="layoutTag">
		<div>
			<table class="listBoard">
				<colgroup>
					<col width="5%">
					<col width="15%">
					<col width="50%">
					<col width="15%">
					<col width="15%">
				</colgroup>
				<thead class="board-top">
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>내용</th>
						<th>작성자</th>
						<th>등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${selectSendMsgList }" var="mes" varStatus="status">
					<tr>
						<td>${slistCnt - mes.rowNum + 1 } </td>
						<td>${mes.title }</td>
						<td>${mes.note }</td>
						<td>${mes.sId }</td>
						<td>${mes.inputDate }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		   <!-- pagination{s} -->
		<div id="paginationBox">
		      <ul class="pagination">
		         <c:if test="${mv.prev}">
		            <li class="page-item"><a class="page-link" href="#" onClick="fn_prev('${mv.page}', '${mv.range}', '${mv.rangeSize}')">Previous</a></li>
		         </c:if>
		         <c:forEach begin="${mv.startPage}" end="${mv.endPage}" var="idx">
		            <li class="page-item <c:out value="${mv.page == idx ? 'active' : ''}"/> "><a class="page-link" href="#" onClick="fn_pagination('${idx}', '${mv.range}', '${subMenu}', '${mv.rangeSize}')"> ${idx} </a></li>
		         </c:forEach>
		         <c:if test="${mv.next}">
		            <li class="page-item"><a class="page-link" href="#" onClick="fn_next('${mv.range}', '${mv.range}', '${mv.rangeSize}')" >Next</a></li>
		         </c:if>
		      </ul>
		   </div>

	</div>
</div>
	<script src="resources/js/adminLetterInbox.js?ver=6"></script>
</body>
</html>