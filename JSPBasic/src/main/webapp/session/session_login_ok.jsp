<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if (id.equals(pw)) {
		session.setAttribute("user_id", id); //세션에 저장
		session.setAttribute("user_nick", nick);
		response.sendRedirect("session_welcome.jsp"); //성공시 welcom 페이지로
	} else {
		response.sendRedirect("session_login.jsp"); //실패시 로그인 페이지로
	}
%>












