<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_11</title>
</head>
<style>
	table {
		width: 500px;
		height: 500px;
		margin: 0 auto;
		border: 1px solid black;
	}
	
	tr, td {
		border: 1px solid black;
		text-align: center;
	}
</style>
<body>
	<%
		int count = 2;
	
		out.println("<table>");
		for(int i = 0; i < 2; i ++){ // 열 2개
			out.println("<tr>");
			for(int j = 0; j < 4; j++){ // 행 4개
				out.println("<td>");
				for(int k = 1; k <= 9; k++)
					out.println(count + " * " + k + " = " + (count * k) + "<br>");
				out.println("</td>");
				count++;
			}
			out.println("</tr>");
		}
		out.println("</table>");
	%>
</body>
</html>