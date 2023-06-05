<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	//세션에서 값이 있다면 로그인
    String id = (String)session.getAttribute("user_id");
    String nick = (String)session.getAttribute("user_nick");
    
    //로그인한 사람만 접근이 가능
    if( session.getAttribute("user_id")==null){
    	response.sendRedirect("session_login.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인성공</h3>
	(<%=id %>)<%=nick %>님 환영합니다!
	<a href="session_logout.jsp">로그아웃</a>
</body>
</html>