<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>

	<section>
	
	<div align="center" >
	
	<h3>로그아웃 페이지</h3>
		
		정상적으로 로그아웃 되었습니다. <a href="<%=request.getContextPath() %>/user/user_login.user">초기화면으로 돌아가기</a>
	
	</div>
	
	</section>
    
<%@ include file = "../include/footer.jsp" %>