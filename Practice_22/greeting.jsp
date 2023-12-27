<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>greeting message</title>
</head>
<body style="text-align:center;">
	<h2>greeting.jsp에서 출력한 메세지입니다.</h2>
	<p>
		<%= request.getParameter("name") %>님 환영합니다.<br>
		오늘은 <%= request.getParameter("date") %>입니다.
	</p>
</body>
</html>