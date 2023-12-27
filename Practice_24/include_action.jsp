<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include_action</title>
<style>
	table{
		width: 500px;
		margin: 0 auto;
	}
	
	td{
		width: 250px;
	}
</style>
</head>
<body>
	<h1 style="text-align:center;">Include Action Practice</h1><hr>
    <table>
        <tr>
            <td>
                <jsp:include page="calendar.jsp">
                    <jsp:param name="YEAR" value="2017" />
                    <jsp:param name="MONTH" value="10" />
                </jsp:include>
            </td>
            <td>
                <jsp:include page="news.jsp">
                    <jsp:param name="TASK1" value="" />
                    <jsp:param name="TASK2" value="Homework" />
                </jsp:include>
            </td>
        </tr>
    </table>
</body>
</html>