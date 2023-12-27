<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_14</title>
</head>
<body>
	<%
		Calendar cal = Calendar.getInstance(); // 캘린더 객체 생성
		int year = cal.get(Calendar.YEAR); // 현재 년도
		int month = cal.get(Calendar.MONTH) + 1; // 현재 월(0 ~ 11의 값을 가지므로 + 1)
		int date = cal.get(Calendar.DATE); // 현재 일
		int day = cal.get(Calendar.DAY_OF_WEEK); // 현재 요일
		String stringDay = null;
		
		switch (day) {
		case 1:
			stringDay = "일요일";
			break;
		case 2:
			stringDay = "월요일";
			break;
		case 3:
			stringDay = "화요일";
			break;
		case 4:
			stringDay = "수요일";
			break;
		case 5:
			stringDay = "목요일";
			break;
		case 6:
			stringDay = "금요일";
			break;
		case 7:
			stringDay = "토요일";
			break;
		}	
		out.println("오늘은 " + year + "년 " + month + "월 " + date + "일 " + stringDay + "입니다.<br>");
		
		cal.set(2023, Calendar.OCTOBER, 24); // 2023년 10월 24일로 기준 날짜 설정(Calendar.OCTOBER = 9)
		int start = cal.getMinimum(Calendar.DATE);
		int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		out.println("이번 달은 " + start + "일부터 시작하여 " + end + "일에 끝납니다.<br>");
		
		cal.set(2023, Calendar.AUGUST, 10); // 2023년 8월 10일로 기준 날짜 설정(Calendar.AUGUST = 7)
		year = cal.get(Calendar.YEAR);
		month = cal.get(Calendar.MONTH) + 1;
		date = cal.get(Calendar.DATE);
		day = cal.get(Calendar.DAY_OF_WEEK);
		stringDay = null;
		
		switch (day) {
		case 1:
			stringDay = "일요일";
			break;
		case 2:
			stringDay = "월요일";
			break;
		case 3:
			stringDay = "화요일";
			break;
		case 4:
			stringDay = "수요일";
			break;
		case 5:
			stringDay = "목요일";
			break;
		case 6:
			stringDay = "금요일";
			break;
		case 7:
			stringDay = "토요일";
			break;
		}
		out.println("내 생일 " + year + "년 " + month + "월 " + date + "일은 " + stringDay + "입니다.<br>");
	%>
</body>
</html>