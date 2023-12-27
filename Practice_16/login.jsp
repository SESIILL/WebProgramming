<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<style>
	table{
	    margin: 0 auto;
	}
	
	.yellow{
	    background-color: #ffff99;
	}
	
	h1{
	    text-align: center;
	}
	
	img{
	    margin: 0 auto;
	    display: block;
	}
</style>
</head>
<body>
	<img src="image/eclass_title.jpg" class="eclass_title">
    <h1>로그인</h1>
    <hr>
    <form name="frm1" method="post" action="result.jsp">
        <table>
            <tr>
                <td rowspan="5"><img src="image/eclass_logo.png"></td>
                <td colspan="2"><b>회원님의 아이디와 비밀번호를 정확히 입력하세요.</b></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <select name="type">
                        <option value="학부생" selected>학부생</option>
                        <option value="대학원생">대학원생</option>
                        <option value="교직원">교직원</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td><b>아이디</b></td>
                <td><input type="text" name="strID" size="15" maxlength="15" class="yellow"></td>
            </tr>
            <tr>
                <td><b>비밀번호</b></td>
                <td><input type="password" name="strPWD" size="15" maxlength="15" class="yellow"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="로그인">
                    <input type="button" value="가입하기" onclick="document.location='member2.html'">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>