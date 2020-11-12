<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style type="text/css">

.bgLayer {display:none;position:absolute; top:0; left:0; width:100%; height:100%; background:#000; opacity:.5; filter:alpha(opacity=50); z-index:10;}  /

</style>
</head>
<body>
	<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body" id="viewPart">
					<!-- <form action="#" method="post" onclick="isConfirm();"> -->
						<div class="form-group">
							<label for="memberId">아이디</label>
							<input type="text" id="memberId" name="memberId" class="form-control"/>
						</div>
						<div class="form-group">
							<label for="email">이메일</label>
							<input type="email" id="email" name="email" class="form-control"/>
						</div>
						<div style="height: 10px;"></div>
						<input id="searchBtn" type="button" value="확인" class="btn btn-default">
					<!-- </form> -->
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>
<div align="center">
	<img alt="" src="resources/images/loading.gif" style="display: none;" id="loadingImg">
</div>
<script src="resources/js/findPassword.js?ver=9"></script>
</body>
</html>