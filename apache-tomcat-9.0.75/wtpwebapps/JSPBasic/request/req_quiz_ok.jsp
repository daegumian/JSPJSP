<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%

	//한글처리
	request.setCharacterEncoding("utf-8");	

	//아이디&비번
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//관심분야
	String[] inter = request.getParameterValues("inter");
	
	//전공분야
	String[] major = request.getParameterValues("major");
	
	//지역
	String region = request.getParameter("region");

	//자기소개
	String hello = request.getParameter("hello");


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	
	아이디 : <%=id %><br><br>
	비밀번호 : <%=pw %><br><br>
	관심분야 : <%=Arrays.toString(inter) %><br><br>
	전공분야 : <%=Arrays.toString(major) %><br><br>
	지역 : <%=region %><br><br>
	자신을 소개해 보세요! : <%=hello %>
	

</body>
</html>