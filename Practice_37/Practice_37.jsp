<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="jspbook.pr36.*" %>
<%@ page import="java.util.Arrays" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:useBean id="lm" class="jspbook.pr36.LectureManager" scope="session" />
<jsp:useBean id="lbean" class="jspbook.pr36.LectureBean" />
<jsp:setProperty name="lbean" property="*" />

<% lm.add(lbean); lm.buildMatrix(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_37</title>
</head>
<body style="text-align:center;">
	<form method="post" action="Practice_37.jsp">
	    과목 타입:
	    <select name="type">
	        <c:forEach items="${LectureBean.typeNames}" var="typeName" varStatus="loop">
	            <option value="${loop.index}">${typeName}</option>
	        </c:forEach>
	    </select> &nbsp;
	
	    과목명:
	    <select name="title">
	        <c:forEach items="${LectureBean.titleNames}" var="titleName" varStatus="loop">
	            <option value="${loop.index}">${titleName}</option>
	        </c:forEach>
	    </select> &nbsp;
	
	    요일:
	    <select name="day">
	        <c:forEach items="${LectureBean.dayNames}" var="day" varStatus="loop">
	            <option value="${loop.index}">${day}</option>
	        </c:forEach>
	    </select> &nbsp;
	    
	    시간:
		<select name="time">
		    <c:forEach begin="1" end="6" var="i">
		        <option value="${i}">${i}</option>
		    </c:forEach>
		</select> &nbsp;
		
		연강 여부:
		<select name="consecutive">
		    <c:forEach begin="1" end="6" var="i">
		        <option value="${i}">${i}</option>
		    </c:forEach>
		</select> &nbsp;
		<input type=submit value="등록"> <br><hr><br>
	</form>
	
	<c:forEach var="lecture" items="${lm.getLectureList()}">
	    <c:if test="${lecture.type != -1 && lecture.title != -1}"> <!-- 초기 상태에서는 출력하지 않음 -->
	    	${lecture.toString()}<br>
	    </c:if>
	</c:forEach>
</body>
</html>