<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list</title>
<style>
ol {
	width: 500px;
	margin: 0 auto;
}
</style>
</head>
<body style="text-align:center;">
	<% ArrayList<String> addrbook = (ArrayList<String>) application.getAttribute("addrbook"); %>
	<h1>주소록</h1><br><hr><br>
    <ol>
        <% 
            // "addrbook" 속성에 저장된 내용 출력
            for (int i = 0; i < addrbook.size(); i++) 
            	out.println("<li>" + addrbook.get(i) + "</li>");
        %>
    </ol>
	<br><hr><br><a href="addr_form.jsp">주소 추가</a>
</body>
</html>