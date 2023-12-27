<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 등록</title>
<style>
	.addr_form {
		border: 1px solid black;
	}
	
	.addr_form td {
		border: 1px solid black;
		padding: 5px;
	}
</style>
</head>
<body>
<div align="center">
	<h2>주소록 등록</h2><hr>
	<form action="addr_add.jsp" method="POST">
		<table class="addr_form">
			<tr>
				<td>이름</td>
				<td><input type="text" name="userName"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<select name="gender">
						<option>여</option>
						<option>남</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>그룹</td>
				<td>
					<select name="group">
						<option>친구</option>
						<option>직장</option>
						<option>가족</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="text-align:center;">
					<input type="submit" value="확인" />
					<input type="reset" value="취소" />
				</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>