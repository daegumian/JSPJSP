<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>

<section>

	<div align="center">
		<h3>회원정보 페이지</h3>
			<form action="">
				
				${sessionScope.user_id }
				(${sessionScope.user_name })님의 정보를 관리중입니다.<br>
				
				<a href="user_modfy.user">회원수정</a>
				<a href="user_logout.user">로그아웃</a>
				<a href="#">회원탈퇴</a> <!-- 숙제 -->
				
			</form>
	</div>


</section>

<%@ include file = "../include/footer.jsp" %>