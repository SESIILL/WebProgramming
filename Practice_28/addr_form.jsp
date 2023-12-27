<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_form</title>
<style>
body {
	margin: 0 auto;
	text-align: center;
}

table {
	width: 300px;
	height: 250px;
	margin: 30px auto;
	border: 1px solid black;
}

td, tr {
	border: 1px solid black;
}
</style>
</head>
<body>
	<h1>주소록 등록</h1><hr>
	<form method="post" action="addr_add.jsp">
		<table>
			<tr>
				<td>이름</td>
				<td><input type=text name="username"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type=tel name="tel"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type=email name="email"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<select name="gender">
						<option selected>남</option>
						<option>여</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type=submit value="확인"> <input type=reset value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>