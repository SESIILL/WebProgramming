<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include action</title>
</head>
<body>
	<h1 style="text-align:center;">include 액션 연습</h1><hr>
	<jsp:include page="greeting.jsp">
		<jsp:param name="name" value="Dongduk University" />
		<jsp:param name="date" value="2011/04/05" />
	</jsp:include>
</body>
</html>