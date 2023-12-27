<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control_04</title>
</head>
<body>
	<%= request.getParameter("src") %>에서 전달된 내용입니다.<br>
	page_control_04.jsp에서 출력합니다.<br><hr>
	
	넘겨받은 파라미터들<br>
	<%
		Enumeration<String> e = request.getParameterNames();
		while (e.hasMoreElements()) {
			String s = e.nextElement();
			out.println(s + " : " + request.getParameter(s) + "<br>");
		}
	%>
	<hr>안녕하세요, <%= request.getParameter("username") %>님. 반갑습니다.<hr>
</body>
</html>