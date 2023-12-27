<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application_02</title>
</head>
<body>
	<%
	    String id = request.getParameter("id"); // 입력받은 내용 가져오기
	    Date currentDate = new Date(); // 현재 시간 가져오기
	    
	    Integer count = (Integer) application.getAttribute("count");
	    if (count == null)
	    	count = 0;
	    else
	    	application.setAttribute("count", ++count);
	%>

	<% out.print(id); %>님 환영합니다.<br>
	현재 시간: <% out.print(currentDate); %><br>
	오늘의 접속자 수: <% out.print(count); %>
</body>
</html>