<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>캠핑 &amp; 여행후기 첫페이지</title>

<style type="text/css">
.fab {
	padding: 20px;
	font-size: 30px;
	width: 50px;
	text-align: center;
	text-decoration: none;
	border-radius: 50%;
}

.fab:hover {
	opacity: 0.7;
}

/* Facebook */
.fa-facebook {
	background: #3B5998;
	color: white;
}

.fa-instagram {
	background: #DF0174;
	color: white;
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
.review > li{
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

.board_btn {
	float: right;
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
		<h1>사진은참고용</h1>
		<img alt="" src="resources/images/1234.jpg" width="100%;" style="height: 60%;">
	</div>

	<div class="layout">
		<header>
			<div style="margin-top: 21px;">
				<h2>
					캠핑 &amp; 여행후기 &emsp; &emsp; &emsp;&emsp; &emsp; &emsp; &emsp; &emsp;
					&emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp; 
					
					<a href="https://www.facebook.com/groups/campingpeople" target="_blank">
						<img alt="facebook" src="resources/images/logo2.png" width="50px;">
					</a>
					
					<a href="https://www.instagram.com/explore/tags/camping/" target="_blank">
						<img alt="insta" src="resources/images/logo1.png" width="50px;">
					</a>
					
					<a href="https://section.blog.naver.com/Search/Post.nhn?pageNo=1&rangeType=ALL&orderBy=sim&keyword=%EC%BA%A0%ED%95%91" target="_blank">
						<img alt="naver" src="resources/images/logo.png" width="50px;">
					</a>
				</h2>
			</div>

			<hr>
		</header>


	<form action="board13.do" method="post">
		<div class="total-search">
			<div class="title">
				<select style="width: 15%; height: 40px;" name="searchKeyword">
					<option value="BOARD_TITLE" <c:if test="${searchVO.searchKeyword eq 'BOARD_TITLE'}"> selected </c:if> > 제목 </option>
					<option value="BOARD_WRITER" <c:if test="${searchVO.searchKeyword eq 'BOARD_WRITER'}"> selected </c:if> > 작성자 </option>
				</select> 
		
				<input type="text" class="searchInput" placeholder="검색어를 입력하세요" name="searchValue" 
					<c:if test="${searchVO.searchValue ne null }">
						value="${searchVO.searchValue }"
					</c:if> >
				
				<input class="button" type="submit" value="검색">
	
			</div>
		</div>
	</form>
		<h4>
			<i class="far fa-comments"></i> 캠핑 &amp; 여행후기
		</h4>

		<p class="span1">
			<i class="fas fa-book-open"></i> <span>전체게시물</span> <span>Ι
				현재페이지</span>
		</p>




		<!-- 	<thead class="board-top">
		
			<tr>
			
					게시물 목록중 하나하나 
					<td class="image">이미지
						<img alt="" src="">
					</td>
					
					<tr>
						<p>후기제목</p>
						<p>후기내용</p>
					</tr>
					
					</thead>
					
				</tr>
					 -->
		<!-- 	
					<div class="date"> -->
		<div class="board_list">
			<!-- foreach문 -->
			
<c:forEach items="${vvv }" var="reviews"> 
		<ul class="review">
			<li onclick="location.href='board12.do?boardNum=${reviews.boardNum}'" >
				<div style="display: inline-block;">
					<c:choose>
						<c:when test="${reviews.mainImg eq null}">
							<img src="resources/images/noImage.jpg" width="250px;" height="150px;" style="border: 1px solid #ADADAD;" >
						</c:when>
						<c:otherwise>
		 					<img src="/teamBoardImage/${reviews.mainImg }" width="250px;" height="150px;" >
						</c:otherwise>
					</c:choose>
		 		</div>
		 		<div style="display: inline-block; margin-left: 30px; width: 690px;">
					<p style="margin: 15px 0px; ">
						<strong style="font-weight: bold; font-size: 18px;">
							<!-- 캠핑장 이름 -->       <!-- 제목 -->
							[${reviews.facltNm }]&nbsp;${reviews.boardTitle }
						</strong>
					</p>
					<p style="margin: 15px 0px 15px 0px; color: #738393;">
						<!-- 내용 -->
						${reviews.boardContent }
					</p>
					<div style="float: right; margin-top: 15px; color: #525D68;" >
							<ul>
								<li style="float: left;">
									<!-- 작성자 -->
									${reviews.boardWriter }&nbsp;&nbsp;|&nbsp;&nbsp;
								</li>
								<li style="float: left;">	
									<!-- 작성일 -->
									${reviews.boardDate }&nbsp;&nbsp;|&nbsp;&nbsp;
								</li>
								<li style="float: left;"> 
									<!-- 조회수 --> 
									조회수 ${reviews.boardCnt }
								</li>
							</ul>
					</div>
				</div>
			</li>
		</ul>
	</c:forEach> 


		</div>

		<!--글쓰기 코너  -->
		<div class="board_btn">
			<input type="button" value="글쓰기" class="btn_blue">
			<input type="hidden" class="loginSession" value="${sessionScope.loginInfo.memberId }">
		</div>
		<!-- 		
		</table> 
 -->
		<br>

		<div>
			<!-- //표시 -->

			<ul class="sub22">
				<li class="pre">
					<i class="fas fa-angle-double-left"></i>
				</li>

				<!--페이지 넘버들어갈거임  -->
				<li class="num">
					<a href="#">1</a>
<!-- 					<a href="#">2</a> -->
<!-- 					<a href="#">3</a> -->
				</li>

				<li class="next">
					<i class="fas fa-angle-double-left  fa-flip-horizontal"></i>
				</li>

			</ul>
		</div>


	</div>
<script src="resources/js/review.js?ver=111111"></script>
</body>
</html>