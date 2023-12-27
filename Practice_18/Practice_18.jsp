<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_18</title>
<style>
	table {
		width: 700px;
		height: 300px;
		margin: 0 auto;
		border-collapse: collapse;
	}
	
	tr, td {
		border: 1px solid black;
		text-align: center;
		text-weight: bold;
	}
	
	.text {
		position: relative;
		left: 900px;
    }
</style>
</head>
<body>
	<%!
		public String parseDay(int cnt, String day){
			if(cnt % 7 == 0 || cnt == 0)
				return "<font color=\"red\">" + day + "</font>";
			else if((cnt - 6) % 7 == 0 || cnt == 6)
				return "<font color=\"blue\">" + day + "</font>";
			else
				return day;
		}
	%>
	
	<%		
		Calendar today = Calendar.getInstance(); // 오늘 날짜를 저장하고 있는 객체 추가
 		int year = today.get(Calendar.YEAR); // 현재 년도
		int month = today.get(Calendar.MONTH); // 10월이면 month = 9
		int date = today.get(Calendar.DATE); // 현재 일
		int day = today.get(Calendar.DAY_OF_WEEK); // 현재 요일

		Calendar cal = Calendar.getInstance(); // 달력 생성을 위한 객체
		cal.set(year, month, date); // 10월을 입력하기 위해 + 1
		
		int cnt = 0; // 현재 출력하고 있는 테이블 셀의 위치 저장
		String week[] = {"일", "월", "화", "수", "목", "금", "토"};
		
		out.println("<b class=\"text\">" + year + "-" + (month + 1) + "-" + date + "</b><br>");
		
		int start = cal.getMinimum(Calendar.DATE);
		int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		
		cal.set(year, month, 1);
		int startDay = cal.get(Calendar.DAY_OF_WEEK);
		
		out.println("<table>");
		out.println("<tr>"); // 첫 번째 줄 요일 입력
		for(int i = 0; i < 7; i++){
			out.println("<td><b>" + parseDay(cnt, week[i]) + "</b></td>");
			cnt++;
		}
		out.println("</tr>");
		
		out.println("<tr>");
		for(int i = 0; i < 7; i++){ // 빈칸 출력
			if (i < startDay - 1)
				out.println("<td>&nbsp</td>");
			else{
				out.println("<td>" + parseDay(cnt, Integer.toString(start)) + "</td>");
				start++;
			}
			cnt++;
		}
		out.println("</tr>");
		
		for(int i = 0; i < 4; i++){ // 날짜 출력
			out.println("<tr>");
			for(int j = 0; j < 7; j++){
				if(start > end){
					out.println("<td>&nbsp</td>");
				}
				else{
					out.println("<td>" + parseDay(cnt, Integer.toString(start)) + "</td>");
					start++;	
				}
				cnt++;
			}
			out.println("</tr>");
		}
		
		out.println("</tr>");
		out.println("</table>");
	%>
</html>