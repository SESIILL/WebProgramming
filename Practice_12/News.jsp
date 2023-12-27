<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>News</title>
</head>
<style>
	div {
		width: 500px;
		height: 300px;
		text-align: center;
	}
</style>
<body>
	<%
		out.println("<div>");
		out.println("<h1>오늘의 공지사항</h1>");
		out.println("<hr>");
		out.println("<ul>"); // 순서 없는 목록 태그
		out.println("<li>차년도 약학대학 입학전형 기본계획 공지</li>");
		out.println("<li>차년도 정시모집 원서접수 현황</li>");
		out.println("</ul>");
		out.println("</div>");
	%>
</body>
</html>