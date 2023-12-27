<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jspbook.pr32.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="jspbook.pr32.AddrBean" />
<jsp:setProperty name="addr" property="*" />
<jsp:useBean id="am" class="jspbook.pr32.AddrManager" scope="application" />

<% am.add(addr); %> <!-- am의 리스트에 addr 객체 추가 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 내용</title>
</head>
<body>
<div align="center">
    <h2>등록 내용</h2>

    이름 : <jsp:getProperty property="userName" name="addr"/><br>
    전화번호 : <c:out value="${addr.tel}" default="Not registered" escapeXml="true" /><br>
    이메일 : <c:out value="${addr.email}" default="Not registered" escapeXml="true" /><br>
    성별 : <c:out value="${addr.gender}" default="Not registered" escapeXml="true" /><br>
    그룹 : <jsp:getProperty property="group" name="addr"/><hr>

	<a href="addr_form.jsp">주소 추가</a>
    <a href="addr_list.jsp">전체 목록보기</a>
    <a href="addr_list_group.jsp">그룹별 목록보기</a>
</div>
</body>
</html>