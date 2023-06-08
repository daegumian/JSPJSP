<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file = "../include/header.jsp"%>

<section>

	<div align = "center">
		<h3>로그인 페이지</h3>
		
		<form action="">
		
			<input type="text" name = "id" placeholder="아이디"> <br>
			<input type="password" name = "pw" placeholder="비밀번호"><br>
			
			<input type="submit" value = "로그인">			
			<input type="button" value = "회원가입" onclick=" location.href = 'user_join.jsp' ">			
		
		</form>	
	
	</div>


</section>

<%@ include file = "../include/footer.jsp"%>