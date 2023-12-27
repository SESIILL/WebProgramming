<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_add</title>
</head>
<body style="text-align:center;">
	<%
		String username = request.getParameter("username");
	    String tel = request.getParameter("tel");
	    String email = request.getParameter("email");
	    String gender = request.getParameter("gender");
	    String resultString = username + "/" + tel + "/" + email + "/" + gender;
	
	    // application 객체에서 addrbook 속성 가져오기
	    ArrayList<String> addrbook = (ArrayList<String>) application.getAttribute("addrbook");

	    // addrbook 속성이 없으면 새로운 ArrayList 생성
	    if (addrbook == null) 
	        addrbook = new ArrayList<String>();
	    
	    // ArrayList에 현재 주소록 항목 저장
	    addrbook.add(resultString);

	    // application 객체에 업데이트된 addrbook 속성 저장
	    application.setAttribute("addrbook", addrbook);
	%>
	
	<h1>등록 내용</h1>
	이름: <%= username %><br>
	전화번호: <%= tel %><br>
	이메일: <%= email %><br>
	성별: <%= gender %><br><br><hr><br>
	<a href="addr_list.jsp">목록 보기</a> <a href="addr_form.jsp">주소 추가</a>
</body>
</html>