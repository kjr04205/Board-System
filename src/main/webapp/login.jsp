<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/main.css">
<title>BoardSystem</title>
</head>
<body>
	<div class="container">
		<div class="form-body">
			<form method="post" action="loginAction.jsp">
				<h1 class="form-title">
					<img src="image/logo.png">
				</h1>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="아이디" name="userID">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="비밀번호" name="userPw">
				</div>
				<input type="submit" class="form-control-btn" value="로그인">
			</form>
		</div>
	</div>
</body>
</html>