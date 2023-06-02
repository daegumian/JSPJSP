<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String path = request.getContextPath();
	StringBuffer url = request.getRequestURL();
	String uri = request.getRequestURI();
	String remote = request.getRemoteAddr();
	
	String header = request.getHeader("content-tpye"); //헤더 정보값

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	컨텍스트패스(프로젝트식별주소) : <%= path%> <br>
	URL : <%=url %> <br>
	URI(URL에서 경로만 남은 값) : <%=uri %> <br>
	접속한 주소 : <%=remote %> <br>
	요청에 대한 문서 타입 : <%=header %> <br>




</body>
</html>