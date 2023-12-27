<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_33</title>
</head>
<style>
table, tr, td{
    border: solid black 1px;
    border-collapse: collapse;
    font-size: 13px;
    text-align: center;
    margin: 0 auto;
}

td{
    width: 100px;
    height: 50px;
}

.day, caption{
    font-weight: bold;
    font-size: 20px;
}

caption{
    padding: 10px;
}

.yellow{
    background-color: #ffe08c;
}

.blue{
    background-color: #b2ccff;
}

.gray{
    background-color: #bdbdbd;
} 
</style>
<body>
	<%!
		int[][] lectureType = { // int[6][5]
			{0, 1, 1, 0, 1},
			{1, 0, 0, 0, 2},
			{0, 0, 2, 0, 4},
			{2, 3, 0, 3, 0},
			{0 ,0, 0, 2, 0},
			{0, 0, 0, 0, 0}
		};
		
		int[][] consecutive = { // span 여부
			{1, 2, 1, 1, 1},
			{2, 0, 1, 1, 1}, 
			{0, 1, 1, 1, 4}, 
			{2, 1, 1, 1, 0}, 
			{0, 1, 1, 2, 0}, 
			{1, 1, 1, 0, 0} 
		};
		
		int[][] lectureTitle = {
			{-1, 4, 5, -1, 5}, 
			{3, -1, -1, -1, 1}, 
			{-1, -1, 1, -1, 7}, 
			{0, 6, -1, 6, -1}, 
			{-1, -1, -1, 2, -1}, 
			{-1, -1, -1, -1, -1} 
		};
		
		String[] titleNames = {
			"웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론",
			"자료구조", "네트워크", "창의와감성", "사회봉사"
		};
	%>
	
	    <table>
        <caption>강의시간표</caption>
        <tr>
            <td class="day">2학년</td>
            <td class="day">월</td>
            <td class="day">화</td>
            <td class="day">수</td>
            <td class="day">목</td>
            <td class="day">금</td>
        </tr>

        <%
        	for (int i = 0; i < 6; i++) { 
        		out.println("<tr>");
        		out.println("<td class=\"day\">" + (i + 1) + "</td>");
        		for (int j = 0; j < 5; j++) {
        			int titleIndex = lectureTitle[i][j];
        			int typeIndex = lectureType[i][j];
        			String title;
        			String type = "";
        			
        			if(titleIndex == -1)
        				title = "";
        			else
        				title = titleNames[titleIndex];
        			
        			if(typeIndex == 1)
        				type = "yellow";
        			else if(typeIndex == 2)
        				type = "blue";
        			else if(typeIndex == 3)
        				type = "gray";
        			
        			if(consecutive[i][j] > 1)
        				out.println("<td rowspan=\"" + consecutive[i][j] + "\" class=\"" + type + "\">" + title + "</td>");
        			else if(consecutive[i][j] == 1)
        				out.println("<td class=\"" + type + "\">" + title + "</td>");
        		}
        		out.println("</tr>");
        	}
        %>
    </table>
</body>
</html>