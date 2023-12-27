<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
	<%
		Enumeration<String> e = request.getParameterNames();
		
		out.println("<h1>전달된 파라미터 이름들</h1>");
		while(e.hasMoreElements()){
			String name = e.nextElement();
			out.println(name + "<br>");
		}
		out.println("<hr>");
		
		String s1 = request.getParameter("type");
		String s2 = request.getParameter("strID");
		String s3 = request.getParameter("strPWD");
		
		out.println("타입: " + s1 + "<br>");
		out.println("아이디: " + s2 + "<br>");
		out.println("패스워드: " + s3 + "<br>");
	%>
</body>
</html>