<%@page import="com.demo.bean.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	//~~~~~~~~~~~~~~............
	
	//멤버객체를 request에 강제로 저장
	Member member = new Member(id, pw, name);
	request.setAttribute("member", member);
	//다음 페이지로 보내준다.
	request.getRequestDispatcher("bean_ex01_result.jsp").forward(request, response);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>