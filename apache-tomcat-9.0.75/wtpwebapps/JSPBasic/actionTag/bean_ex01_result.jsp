<%@page import="com.demo.bean.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member = (Member)request.getAttribute("member");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 자바빈을(자바 객체 생성) 이용한 호출 출력 -->
	ID : <%= member.getId() %><br>
	PW : <%= member.getPw() %><br>
	이름 : <%= member.getName() %>

</body>
</html>