<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calc_result</title>
<style>
	table, tr, td{
	    border: solid 1px lightgray;
	    border-collapse: collapse;
	}
	
	.blue{
	    width: 350px;
	    height: 70px;
	    background-color: #32ccfe;
	    font-size: 50px;
	    text-align: center;
	}
	
	#button{
	    padding: 30px;
	}
	
	input, span{
		display: block;
		margin: 0 auto;
		margin-bottom: 15px;
		text-align: center;
	}
	
	form{
	    width: 350px;
	    margin: 0 auto;
	}
</style>
</head>
<body>
	<jsp:useBean id="calc" class="jspbook.pr31.Calculator" scope="page" />
	<jsp:setProperty name="calc" property="*" />

	<form name="calculator">
		<table>
		    <tr>
		        <td class="blue" colspan="2"><b><i>CalCuLaTor</i></b></td> 
		    </tr>
		    <tr>
		        <td><img src="image/cal.jpg"></td>
		        <td id="button">
					<input type="text" name="op1" value="${calc.op1}" style="text-align:center;" readonly>
					<span>${calc.operator}</span>
		        	<input type="text" name="op2" value="${calc.op2}" style="text-align:center;" readonly>
		        	<input type="button" value="=" readonly>
		        	<input type="text" name="result" value="${calc.calc()}" style="text-align:center;" readonly>
		        </td>
		    </tr>
		    <tr>
		        <td class="blue" colspan="2"></td>
		    </tr>
		</table>
	</form>
</body>
</html>