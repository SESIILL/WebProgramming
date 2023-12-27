<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body style="text-align:center;">
	<jsp:useBean id="login" class="jspbook.pr30.LoginBean" scope="page" />
	<jsp:setProperty name="login" property="*" />
	
	<%
	   	String id = login.getId();
	    String pw = login.getPw();
	    String email = login.getEmail();
	    Integer gender = login.getGender();
	    String birth = login.getBirth();
	%>
	
	<h1>등록 내용</h1>
	이름: <%= id %><br>
	패스워드: <%= pw %><br>
	이메일: <%= email %><br>
	성별: <%= gender %><br>
	생일: <%= birth %><br>
	<hr>
	
	<%
		String age;
		String sGender;
		
		if(login.isGrownUp() == true)
			age = "성인이고,";
		else
			age = "성인이 아니고,";
		
		if(gender == 0)
			sGender = "남성";
		else
			sGender = "여성";
	%>
	<%= id %>씨는 <%= age %> <%= sGender %>입니다.
</body>
</html>