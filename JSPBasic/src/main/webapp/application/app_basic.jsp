<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	int count = 0;

	//누적하는 기능
	if(application.getAttribute("count") != null){
		
		count = (int)application.getAttribute("count");
	
	}

	count++;
	
	//application객체는 session과 사용방법이 동일하다.
	application.setAttribute("count", count);
	
	//어플리케이션 출력
	int total = (int)application.getAttribute("count");

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	결과 : <%=total %>
	
	
</body>
</html>