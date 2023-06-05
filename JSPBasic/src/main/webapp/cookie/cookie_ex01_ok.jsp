<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String id_check = request.getParameter("id_check"); //아이디 기억하기
	
	//이이디 기억하기
	if(id_check != null){
		Cookie coo = new Cookie("id_check", id);
		coo.setMaxAge(30);
		response.addCookie(coo);
	}
	
	//아이디 aaa123 비밀번호 1234라면 로그인성공이라고 간주
	
	if(id.equals("aaa123")&&pw.equals("1234")){
		
		//로그인 아이디를 저장하는 쿠키
		Cookie coo = new Cookie("user_id", id);//선언되는 값이 저장되도록
		coo.setMaxAge(1800); //30분
		response.addCookie(coo); //쿠키 반환.
		
		response.sendRedirect("cookie_ex01_welcome.jsp"); //성공시 welcom 페이지로
		
	}else{
		
		Cookie coo = new Cookie(id, null);//선언되는 값이 저장되도록
		coo.setMaxAge(1800); //30분
		response.addCookie(coo); //쿠키 반환.

		response.sendRedirect("cookie_ex01.jsp"); //실패시 로그인 페이지로
		
	}
%>