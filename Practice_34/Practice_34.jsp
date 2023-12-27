<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_34</title>
</head>
<body>
	<h1>Processing Parameters</h1>
	id: ${param.id}<br>
	pw: ${param.pw}<br>
	gender: ${param.gender}<br>
	phone1: ${param.phone1}<br>
	phone2: ${param.phone2}<br>
	phone3: ${param.phone3}<br>
	email: ${param.email}<br>
	birth: ${param.birth}<br>

	<%
		// 선택된 관심 분야 개수
	    String[] hobbies = request.getParameterValues("hobby");
	    int count = (hobbies != null) ? hobbies.length : 0;
	    session.setAttribute("count", count);
	%>
	선택된 관심 분야 ${count}개<br>
	
	<%
		for (int i = 0; i < 5; i++) {
     		if (i < count)
				out.println("[" + i + "]: " + hobbies[i] + "<br>");
			else
				out.println("[" + i + "]:<br>");
		}
    %>
</body>
</html>