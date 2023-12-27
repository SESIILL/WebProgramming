<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jspbook.pr32.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="am" class="jspbook.pr32.AddrManager" scope="application" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록(그룹별 보기)</title>
<style>
	.addr_list_group {
		border: 1px solid black;
	}
	
	.addr_list_group td {
		padding: 5px;
		border: 1px solid black;
	}
</style>
</head>
<body>
<div align="center">
	<h2>주소록(그룹별 보기)</h2><hr>
	<a href="addr_form.jsp">주소 추가</a> <a href="addr_list.jsp">전체 목록 보기</a>
	
	<h3>그룹: 가족</h3>
	<table class="addr_list_group">
		<tr>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>성별</td>
			<td>그룹</td>
		</tr>
		
		<c:forEach var="ab" varStatus="i" items="${am.getAddrList()}">
		<tr>
			<c:if test='${ab.getGroup().equals("가족")}'>
				<td>${ab.getUserName()}</td>
				<td>${ab.getTel()}</td>
				<td>${ab.getEmail()}</td>
				<td>${ab.getGender()}</td>
				<td>${ab.getGroup()}</td>
			</c:if>
		</tr>
		</c:forEach>
	</table>
	
	<h3>그룹: 친구</h3>
	<table class="addr_list_group">
		<tr>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>성별</td>
			<td>그룹</td>
		</tr>
		
		<c:forEach var="ab" varStatus="i" items="${am.getAddrList()}">
		<tr>
			<c:if test='${ab.getGroup().equals("친구")}'>
				<td>${ab.getUserName()}</td>
				<td>${ab.getTel()}</td>
				<td>${ab.getEmail()}</td>
				<td>${ab.getGender()}</td>
				<td>${ab.getGroup()}</td>
			</c:if>
		</tr>
		</c:forEach>
	</table>
	
	<h3>그룹: 직장</h3>
	<table class="addr_list_group">
		<tr>
			<td>이름</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>성별</td>
			<td>그룹</td>
		</tr>
		
		<c:forEach var="ab" varStatus="i" items="${am.getAddrList()}">
		<tr>
			<c:if test='${ab.getGroup().equals("직장")}'>
				<td>${ab.getUserName()}</td>
				<td>${ab.getTel()}</td>
				<td>${ab.getEmail()}</td>
				<td>${ab.getGender()}</td>
				<td>${ab.getGroup()}</td>
			</c:if>
		</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>