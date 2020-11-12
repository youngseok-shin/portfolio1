<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>
<style type="text/css">
	label{
		font-weight: bold;
	}
	.container{
		animation : fadein 2s;
		margin-top: 180px;
		opacity: 0.95;
		position: relative;
		top: auto;
		left: auto;
	}
	@keyframes fadein{
		from {opacity : 0;}
		to {opacity : 0.95;}
	}
	 body {overflow:hidden}
</style>
</head>
<body>
<div style="position: absolute; z-index: -1;">
	<img src="resources/images/joinBack.jpg" width="100%" height="100%">
</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<form action="realJoin.do" method="post" id="joinForm">
							<div class="form-group">
								<label for="memberId" class="col-md-3 control-label">아이디</label> <input type="text"
									class="form-control" id="memberId" name="memberId" placeholder="아이디를 입력하세요">
							</div>
							<div class="form-group">
								<label for="memberPassword" class="col-md-3 control-label">비밀번호</label> <input type="password"
									class="form-control" id="memberPassword" name="memberPassword" placeholder="비밀번호를 입력하세요">
							</div>
							<div class="form-group">
								<label for="password1" class="col-md-3 control-label">비밀번호 확인</label> <input type="password"
									class="form-control" id="password1" name="password1" placeholder="비밀번호를 확인하세요">
							</div>
							<div class="form-group">
								<label for="memberName" class="col-md-3 control-label">이름</label> <input type="text"
									class="form-control" id="memberName" name="memberName" placeholder="이름을 입력하세요">
							</div>
							<div class="form-group">
								<label for="email" class="col-sm-3 control-label">이메일</label>
									<input type="text" class="form-control" id="email" name="email" placeholder="email을 입력하세요.">
							</div>
							<div class="form-group">
								<label for="emailYN1" class="col-md-5 control-label">이메일 수신여부</label>
									<label class="radio-inline"> <input type="radio"
										name="emailYn" id="emailYN1" value="Y" checked> 네 &nbsp;&nbsp;
									</label> <label for="emailYN2" class="radio-inline"> <input type="radio"
										name="emailYn" id="emailYN2" value="N"> 아니오
									</label>
							</div>
							<button type="submit" class="btn btn-default btn-block" id="goBtn">제출</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
<script src="resources/js/join.js?ver=1"></script>
</body>
</html>








