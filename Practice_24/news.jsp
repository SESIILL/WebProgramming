<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>news</title>
</head>
<body>
	<%
	    String task1 = request.getParameter("TASK1");
	    String task2 = request.getParameter("TASK2");
	    
	    if(task1 == "")
	    	task1 = "일정 없음";
	    if(task2 == "")
	    	task2 = "일정 없음";
	%>
	
	<h1>오늘의 일정</h1><hr>
	<ol>
		<li><%= task1 %></li>
		<li><%= task2 %></li>
	</ol>
</body>
</html>