<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar</title>
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
	
	 .link {
	  width: 700px;
	  height: 50px;
	  line-height: 50px;
	  margin: 0 auto;
	  display: flex;
	  justify-content: space-between;
	  align-items: center;
	}
	
	.nav {
	  display: flex;
	}
	
	.nav a {
	  font-weight: bold;
	  margin: 0 10px;
	}
</style>
</head>
<body>
	<%!	
		public String parseDay(int cnt, String day){
			if(cnt % 7 == 0 || cnt == 0)
				return "<font color=\"red\">" + day + "</font>";
			else
				return day;
		}
	%>

	<%
		Calendar today = Calendar.getInstance();
		int date = today.get(Calendar.DATE);
		int day = today.get(Calendar.DAY_OF_WEEK);
		int year, month;
		String sYear = request.getParameter("YEAR");
		String sMonth = request.getParameter("MONTH");
		
		if(sYear != null)
			year = Integer.parseInt(sYear);
		else
			year = today.get(Calendar.YEAR);
		
		if(sMonth != null)
			month = Integer.parseInt(sMonth);
		else
			month = today.get(Calendar.MONTH);

		Calendar cal = Calendar.getInstance();
		cal.set(year, month, 1);
		
		int cnt = 0;
		String week[] = {"일", "월", "화", "수", "목", "금", "토"};
		
		// 왼쪽 연도로 이동
		out.print("<div class=\"link\">");
		out.print("<div class=\"nav\">");
		out.print("<a href=\"calendar.jsp?YEAR=" + (year - 1));
		out.println("&MONTH=" + month + "\">" + "◀</a>");
		out.println("<b>" + year + "년<b>");
		
		// 오른쪽 연도로 이동
		out.print("<a href=\"calendar.jsp?YEAR=" + (year + 1));
		out.println("&MONTH=" + month + "\">" + "▶</a>");
		out.print("</div>");
		
		// 왼쪽 월로 이동
		out.print("<div class=\"nav\">");
		if(month > 0){
			out.print("<a href=\"calendar.jsp?MONTH=" + (month - 1));
			out.println("&YEAR=" + year + "\">" + "◀</a>");	
		}
		else{
			out.print("<a href=\"calendar.jsp?MONTH=" + month);
			out.println("&YEAR=" + year + "\">" + "◀</a>");	
		}
		out.print("<b>" + (month + 1) + "월<b>");
		
		// 오른쪽 월로 이동
		if(month < 11){
			out.print("<a href=\"calendar.jsp?MONTH=" + (month + 1));
			out.println("&YEAR=" + year + "\">" + "▶</a>");	
		}
		else{
			out.print("<a href=\"calendar.jsp?MONTH=" + month);
			out.println("&YEAR=" + year + "\">" + "▶</a>");	
		}
		out.print("</div>");
		
		out.println(year + "-" + (month + 1) + "-" + date);
		out.print("</div>");
		
		int start = cal.getMinimum(Calendar.DATE);
		int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		int startDay = cal.get(Calendar.DAY_OF_WEEK);
		cal.set(year, month, 1);
		
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
</body>
</html>