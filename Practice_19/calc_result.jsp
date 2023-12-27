<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Enumeration" %>
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
	<%! 
		int result = 0;
		String[] ops = {"+", "-", "*", "/"};
	%>
	<%! 
		ArrayList<String> getParameterNames(HttpServletRequest request){
			Enumeration<String> e = request.getParameterNames();
			ArrayList<String> data = new ArrayList<>();
			while(e.hasMoreElements()){
				String name = e.nextElement();
				data.add(name);
			}
			return data;
		}
	%>
	<%
		ArrayList<String> p = getParameterNames(request);
		String pname = p.get(0); // op1
		String op1 = request.getParameter(pname);
		pname = p.get(2); // op2
		String op2 = request.getParameter(pname);
        
		pname = p.get(1); // operator
        String op3 = request.getParameter(pname);
		int index = Integer.parseInt(op3); // op3의 value 값
		
		switch(ops[index]){
		case "+":
			result = Integer.parseInt(op1) + Integer.parseInt(op2);
			break;
		case "-":
			result = Integer.parseInt(op1) - Integer.parseInt(op2);
			break;
		case "*":
			result = Integer.parseInt(op1) * Integer.parseInt(op2);
			break;
		case "/":
			result = Integer.parseInt(op1) / Integer.parseInt(op2);
			break;
		}
	%>

	<form name="calculator">
		<table>
		    <tr>
		        <td class="blue" colspan="2"><b><i>CalCuLaTor</i></b></td> 
		    </tr>
		    <tr>
		        <td><img src="image/cal.jpg"></td>
		        <td id="button">
					<input type="text" name="op1" value="<%= op1 %>" style="text-align:center;" readonly>
					<span><% out.println(ops[index]); %></span>
		        	<input type="text" name="op2" value="<%= op2 %>" style="text-align:center;" readonly>
		        	<input type="button" value="=" readonly>
		        	<input type="text" name="result" value="<%= result %>" style="text-align:center;" readonly>
		        </td>
		    </tr>
		    <tr>
		        <td class="blue" colspan="2"></td>
		    </tr>
		</table>
	</form>
</body>
</html>