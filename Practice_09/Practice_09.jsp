<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_09</title>
</head>
<body>
<%
	String s = "Hello, welcome to jsp world! let's go!";
	String t = "JSP";
	int index = s.toLowerCase().indexOf(t.toLowerCase());
	
	out.println("입력되어 있는 문자열: " + s + "<br>");
	out.println("문자열의 길이: " + s.length() + "<br>");
	out.println("'" + t + "'라는 문자의 위치: " + index + "<br>");
	out.println("모두 소문자로 변경: " + s.toLowerCase() + "<br>");
	out.println("모두 대문자로 변경: " + s.toUpperCase() + "<br>");
%>
</body>
</html>