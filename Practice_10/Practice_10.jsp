<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_10</title>
<style>
	table {
		width: 700px;
		height: 300px;
		margin: 0 auto;
		border: 1px solid black;
	}
	
	tr, td {
		border: 1px solid black;
		text-align: center;
		text-weight: bold;
	}
	
	.sun {
        color: red;
    }
    
    .sat {
    	color: blue;
    }
</style>
</head>
<body>
	<%
		String week[] = {"일", "월", "화", "수", "목", "금", "토"};
		
		out.println("<table>");
		out.println("<tr>");
		for(int i = 0; i < 6; i++){
			if(i == 0)
				out.println("<td class='sun'><b>" + week[i] + "</b></td>");
			else if(i == 5)
				out.println("<td class='sat'><b>" + week[i] + "</b></td>");
			else
				out.println("<td><b>" + week[i] + "</b></td>");	
		}
		out.println("</tr>");
		
		for(int i = 0; i < 4; i++){
			out.println("<tr>");
			for(int j = 0; j < 6; j++)
				out.println("<td>&nbsp</td>");
			out.println("</tr>");	
		}
		out.println("</table>");
	%>
</html>