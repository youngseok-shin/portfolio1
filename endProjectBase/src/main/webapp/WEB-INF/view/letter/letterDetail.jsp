<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<form action="answerMsg.do" method="post">
						<input type="hidden" name="sId" value="${messageInfo.rId }">
						<input type="hidden" name="rId" value="${messageInfo.sId }">
						<input type="hidden" name="title" value="${messageInfo.title }">
							<div class="form-group">
								<label for="memberId" class="col-md-5 control-label">${messageInfo.sId }에게 답장하기</label> 
							</div>
							<div class="form-group">
								<label for="note">Comment:</label>
								<textarea class="form-control" rows="7" id="note" name="note"></textarea>
							</div>
							<button type="submit" class="btn btn-default btn-block">보내기</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
</body>
</html>