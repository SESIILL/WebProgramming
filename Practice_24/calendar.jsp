<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
</head>
<body>
	<%
		Calendar cal = Calendar.getInstance();
	
		String yearParam = request.getParameter("YEAR");
		String monthParam = request.getParameter("MONTH");
		int year, month;
		
		// 전달된 매개변수가 없거나 년도와 월 중에 1개만 전달된 경우
		if(yearParam == "" || monthParam == ""){ // 현재 달력 출력
			year = cal.get(Calendar.YEAR); // 2023
			month = cal.get(Calendar.MONTH); // 11
			
		}
		else{
			year = Integer.parseInt(request.getParameter("YEAR")); // 1919
			month = Integer.parseInt(request.getParameter("MONTH")) - 1; // 3
		}
		
		cal.set(year, month, 1);
		out.println("<h1>" + year + "년 " + (month + 1) + "월</h1><hr>");

		int day = cal.get(Calendar.DAY_OF_WEEK); // 1일의 날짜 구하기(토요일, 7)
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