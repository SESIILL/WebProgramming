<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jspbook.pr32.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="am" class="jspbook.pr32.AddrManager" scope="application" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록(전체보기)</title>
<style>
	.addr_list {
		border: 1px solid black;
		margin-top: 20px;
	}

	.addr_list td {
		padding: 5px;
		border: 1px solid black;
	}
</style>
</head>
<body>
<div align="center">
	<h2>주소록(전체보기)</h2><hr>
	<a href="addr_form.jsp">주소 추가</a> <a href="addr_list_group.jsp">그룹별 목록 보기</a>
	
	<table class="addr_list">
		<tr>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>성별</td>
			<td>그룹</td>
		</tr>

		<c:forEach var="ab" varStatus="i" items="${am.getAddrList()}">
		<tr>
			<td>${ab.getUserName()}</td>
			<td>${ab.getTel()}</td>
			<td>${ab.getEmail()}</td>
			<td>${ab.getGender()}</td>
			<td>${ab.getGroup()}</td>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>