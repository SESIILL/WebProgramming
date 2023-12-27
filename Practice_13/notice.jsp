<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
</head>
<style>
	table{
	    margin: 0 auto;
	    text-align: center;
	}
	
	.orange{
	    background-color: #ffdab9;
	    padding: 5px 0px;
	}
	
	.ivory{
	    background-color: #ffefd5;
	    width: 700px;
	    height: 300px;
	}
	
	.flower{
	    padding: 10px;
	}
	
	h1{
	    text-align: center;
	}
	
	img{
	    margin: 0 auto;
	    display: block;
	}
</style>
<body>
	<img src="image/eclass_title.jpg" class="eclass_title">
    <table>
        <tr>
            <td class="orange"><b>오류가 발생했습니다.</b></td>   
        </tr>
        <tr>
            <td class="ivory">
                <img src="image/flower.gif" class="flower">
                <b>오류 발생 시간: </b>
                <%= new java.util.Date() %> <br>
                <b>최대한 빨리 조치하겠습니다.</b>
            </td>
        </tr>
    </table>
</body>
</html>