<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/menu.css?ver=143" />
<style type="text/css">
	.hidden{
		display: none;
	}
	#logoutSpan:hover{
		cursor: pointer;
	}
	#logoutSpan{
		color: #1ABD9D;
	}
	
	#goCart{
		color: gray;
		cursor: pointer;
	}
	
</style>
</head>
<body>
<input type="hidden" id="loginId" value="${sessionScope.loginInfo.memberId}">
	<div class="flex-container">
		<div id="box1">
			<input type="checkbox" id="menuicon"> <label for="menuicon"> <span></span> <span></span>
				<span></span>
			</label>
			<div class="sidebar">
				<span class="mainSpanTag" style="margin-top: 80px;" onclick="location.href='/biz/main.do'">HOME</span>
				<c:if test="${sessionScope.loginInfo.memberType eq 1 }">
				<span class="mainSpanTag main_menu">MYPAGE</span>
				<ul class="hidden sub_menu">
					<li onclick="location.href='myPage.do'">내정보관리</li>
					<li onclick="location.href='userLetterInbox.do'">쪽지함<span id="newMsgSpan" class="badge">new</span></li>
					<li data-toggle="modal" data-target="#myModal2">쪽지보내기</li>
				</ul></c:if>
				<c:if test="${sessionScope.loginInfo.memberType eq 2 }">
				<span class="mainSpanTag main_menu">ADMINPAGE</span>
				<ul class="hidden sub_menu">
					<li onclick="location.href='admin.do'">관리 페이지</li>
					<li onclick="location.href='adminLetterInbox.do'">메세지 관리<span id="newMsgSpan" class="badge">new</span></li>
					<li onclick="location.href='api.do'">API 업데이트</li>
				</ul></c:if>
				<span class="mainSpanTag main_menu">CAMPING GO</span>
				<ul class="hidden sub_menu">
					<li onclick="location.href='campSearch.do'">캠핑장 검색</li>
					<li onclick="location.href='mapSearch.do'">지도로 검색</li>
				</ul>

				<span class="mainSpanTag main_menu">CAMPING TALK</span>
				<ul class="hidden sub_menu">
					<li onclick="location.href='board.do'">캠핑소식</li>
					<li onclick="location.href='board1.do'">캠핑 & 여행후기</li>
					<li onclick="location.href='board2.do'">공지사항</li>
				</ul>

				<span class="mainSpanTag main_menu">SHOPPING MALL</span>
				<ul class="hidden sub_menu">
					<li onclick="location.href = 'shopMain.do'">쇼핑몰 바로가기</li>
				</ul>



			</div>
		</div>
		
		<div id="box2" onclick="location.href='/biz/main.do'" style="cursor: pointer; margin-top: 13px;">
		
		<!-- 로고 이미지 넣을곳  -->
	 <img alt="" src="resources/images/MAIN.jpg" width="65px;" height="45px;" > 
	 
	 
		CAMPING GO</div>
		<div id="box3">
			<c:if test="${empty sessionScope.loginInfo }">
				<a href="join.do"><span id="signUp">회원가입</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="login.do"><span id="signIn">로그인</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</c:if>
			
		
			
			<c:if test="${not empty sessionScope.loginInfo }">
				${sessionScope.loginInfo.memberName }님 안녕하세요. &nbsp;&nbsp;&nbsp;&nbsp;
				
					<c:if test="${not empty sessionScope.loginInfo }">
					<span id="goCart" onclick="location.href='shopCart.do'">장바구니</span>&nbsp;&nbsp;
			</c:if>
							
				<span id="logoutSpan">Logout</span>&nbsp;&nbsp;
			</c:if>
			
		</div>
	</div>

	<script src="resources/js/menu.js?ver=27"></script>
</body>
</html>