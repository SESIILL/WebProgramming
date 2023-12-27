<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include</title>
</head>
<style>
    h1 {
        text-align: center;
    }
	
	#mytable {
		width: 1000px;
		height: 300px;
		margin: 0 auto;
		margin-top: 30px;
	}
	
	#calendar {
		border: none;
	}
	
	#news {
		border: none;
	}
</style>
<body>	
	<h1>include 지시어 연습</h1><hr>
	<table id='mytable'>
		<tr>
			<td id='calendar'><%@ include file="Calendar.jsp" %></td>
			<td id='news'><%@ include file="News.jsp" %></td>
		</tr>
    </table>
</body>
</html>