<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	int a = 10;
	if(a>=0){
		out.println("<b>참입니다</b>");
	}else {
		out.println("<b>거짓입니다</b>");
	}
	
	%>
	
	<% if(a >= 0) { %>
		<b>참입니다</b>
	<% } else {%>
		<b>거짓입니다</b>
	<% }%>
	
	<hr/>
	
	<%
	for(int i = 1; i <=9; i++){
		
	}
	
	%>
	
</body>
</html>