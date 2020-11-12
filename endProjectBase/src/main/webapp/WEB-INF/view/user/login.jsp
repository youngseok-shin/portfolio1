<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>login</title>
<style type="text/css">
	.form-group a{
		color: black;
	}
	.form-group button {
		color:black;
	}
	#findPwForm{
		font-size: 9px;
	}
	#findPwForm:hover{
		cursor: pointer;
	}
	.container{
		animation : fadein 2s;
		margin-top: 300px;
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
	<img src="resources/images/loginBack.jpg" width="100%" height="100%">
</div>
<div class="container">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form action="realLogin.do" method="post">
						<div class="form-group">
							<label for="memberId">아이디</label>
							<input type="text" id="memberId" name="memberId" class="form-control"/>
						</div>
						<div class="form-group">
							<label for="memberPassword">비밀번호</label>
							<input type="password" id="memberPassword" name="memberPassword" class="form-control"/>
						</div>
						<div class="form-group text-right">
							<button type="submit" class="btn btn-link">로그인</button>
							<a href="join.do" class="btn btn-link ">회원가입</a>
						</div>
					</form>
					<div style="height: 10px;"></div>
						<span id="findPwForm">
							비밀번호를 잊어버렸어요
						</span>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>
<script src="resources/js/login.js?ver=1"></script>
</body>
</html>








    