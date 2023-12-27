<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice_17</title>
</head>
<body>
	<%! String[] mChoices = {"hobby"}; %>
	<%! String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"}; %>
	<%! String[] telCompany = {"010", "011", "017", "070"}; %>
	<%! String[] gNames = {"남", "여"}; %>
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
	    for(int i = 0; i < p.size(); i++){
	        String pname = p.get(i); // html에 저장된 name 속성 값
	        String[] pvalue = request.getParameterValues(pname); // 사용자가 입력한 값
	        
	        out.println(pname + ": ");
	        if(pvalue.length > 1){ // 복수 선택인 경우
	        	for(int j = 0; j < pvalue.length; j++)
	        		out.print(pvalue[j] + "/"); // 사용자가 입력한 값 출력
	        	out.println("<br>");
	        }
	        else{ // 값이 하나인 경우
				out.print(pvalue[0]); // 사용자가 입력한 값 출력
	        	out.println("<br>");
	        }
	    }
	    
	    out.println("<hr>");
	    out.println("<h1>Processing Parameters</h1>");
	    
	    for(int i = 0; i < p.size(); i++){
	        String pname = p.get(i); // html에 저장된 name 속성 값
	        String[] pvalue = request.getParameterValues(pname); // 사용자가 입력한 값
	        
	        out.println(pname + ": ");
	        if(pname.equals("gender")){
	        	for(int j = 0; j < pvalue.length; j++){
	        		int index = Integer.parseInt(pvalue[j]);
	        	    out.print(gNames[index]);
	        	}
	        	out.println("<br>");
	        }
	        else if(pname.equals("hobby")){
	        	for(int j = 0; j < pvalue.length; j++){
	        		int index = Integer.parseInt(pvalue[j]);
	        	    out.print(hobbyNames[index] + "/");
	        	}
	        	out.println("<br>");
	        }
	        else if(pname.equals("phone1")){
	        	for(int j = 0; j < pvalue.length; j++){
	        		int index = Integer.parseInt(pvalue[j]);
	        	    out.print(telCompany[index]);
	        	}
	        	out.println("<br>");
	        }
	        else{
		        if(pvalue.length > 1){ // 복수 선택인 경우
		        	for(int j = 0; j < pvalue.length; j++)
		        		out.print(pvalue[j] + "/"); // 사용자가 입력한 값 출력
		        	out.println("<br>");
		        }
		        else{
					out.print(pvalue[0]); // 사용자가 입력한 값 출력
		        	out.println("<br>");
		        }	
	        }
	    }
	%>
</body>
</html>