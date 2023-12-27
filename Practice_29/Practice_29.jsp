<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_29</title>
</head>
<body>
	<%!
		String[] typeNames = {"전공필수", "전공선택", "교양", "자유선택"};
		String[] titleNames = { "웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사"};
		String[] days = {"월", "화", "수", "목", "금"};
	%>
	
	<form method="post" action="Practice_29.jsp">
		과목 타입:
		<select name="lectureType">
			<%
				for(int i = 0; i < typeNames.length; i++)
					out.println("<option value=" + i + ">" + typeNames[i] + "</option>");	
			%>
		</select> &nbsp;
		 
		과목명:
		<select name="lectureTitle">
			<%
				for(int i = 0; i < titleNames.length; i++)
					out.println("<option value=" + i + ">" + titleNames[i] + "</option>");	
			%>
		</select> &nbsp;
	
		요일:
		<select name="day">
			<%
				for(int i = 0; i < days.length; i++)
					out.println("<option value=" + i + ">" + days[i] + "</option>");	
			%>
		</select> &nbsp;
		
		시간:
		<select name="time">
			<%
				for(int i = 1; i <= 6; i++)
					out.println("<option value=" + i + ">" + i + "</option>");	
			%>
		</select> &nbsp;
		
		연강 여부:
		<select name="consecutive">
			<%
				for(int i = 1; i <= 6; i++)
					out.println("<option value=" + i + ">" + i + "</option>");	
			%>
		</select> &nbsp;
		<input type=submit value="등록"> <br><hr><br>
		
		<%    
		    String lectureTypeParam = request.getParameter("lectureType"); // value(0, 1, ...) 값
		    String lectureTitleParam = request.getParameter("lectureTitle");
		    String dayParam = request.getParameter("day");
		    String time = request.getParameter("time");
		    String consecutive = request.getParameter("consecutive");
	
		    if (lectureTypeParam != null && lectureTitleParam != null && dayParam != null && time != null && consecutive != null) {
		        // null이 아닌 경우에만 정수로 변환
		        int typeIdx = Integer.parseInt(lectureTypeParam);
		        int titleIdx = Integer.parseInt(lectureTitleParam);
		        int dayIdx = Integer.parseInt(dayParam);

		        // 변환된 정수를 사용하여 나머지 작업 수행
			    String lectureType = typeNames[typeIdx];
			    String lectureTitle = titleNames[titleIdx];
			    String day = days[dayIdx];
			    String resultString = lectureType + "/" + lectureTitle + "/" + day + "/" + time + "/" + consecutive;

		        // session 객체에서 timetable 속성 가져오기
		        ArrayList<String> timetable = (ArrayList<String>) session.getAttribute("timetable");
	
		        // timetable 속성이 없으면 새로운 ArrayList 생성
		        if (timetable == null)
		            timetable = new ArrayList<String>();
	
		        // ArrayList에 문자열 값 추가
		        timetable.add(resultString);
	
		        // 세션 객체에 업데이트된 timetable 속성 저장
		        session.setAttribute("timetable", timetable);
	
		        for (int i = 0; i < timetable.size(); i++)
		            out.println(timetable.get(i) + "<br>");
		    }
		%>
	</form>
</body>
</html>