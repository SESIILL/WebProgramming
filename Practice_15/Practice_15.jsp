<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_15</title>
</head>
<body>
	<%
		Calendar cal = Calendar.getInstance();
	
		int year = 1919; // 년
		int month = 3; // 월
		cal.set(year, month - 1, 1); // Calendar.March = 2
		
		int day = cal.get(Calendar.DAY_OF_WEEK); // 1일의 날짜 구하기(토요일, 7)

		out.println("<h1>" + year + "년 " + month + "월</h1><hr>");
		
		int start = cal.getMinimum(Calendar.DATE);
		int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		int count = 0;
		
		for(int i = 0; i < 7; i++){
			if (i < day - 1)
				out.println("&nbsp&nbsp&nbsp");
			else {
				out.println(start);
				start++;
			}
		}
		
		for(int i = start; i <= end; i++){
			if(count % 7 == 0)
				out.println("<br>");
			out.println(i + "&nbsp");
			count++;
		}		
	%>
</body>
</html>