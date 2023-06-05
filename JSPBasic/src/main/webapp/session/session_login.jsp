<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    /*
	1. 아이디, 비밀번호, nick을 받습니다.
	2. 아이디 비밀번호가 동일하면 로그인 성공이라고 간주하고 (user_id, id)의 세션생성
	(user_nick, 닉네임)을 세션을 생성
	
	session_welcome로 이동해서 화면에 "id님 환영합니다"를 출력합니다.
	틀린경우는 로그인페이지로 리다이렉트 처리해주세요.
	
	session_welcome페이지에서는 a태그를 이용해서 로그아웃 기능을 만들어주세요
	로그아웃은 session_logout.jsp에서 세션을 무효화하고 리다이렉트로 이동해주면 됩니다.
	*/
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="session_login_ok.jsp" method="post">
		아이디 : <input type = "text" name = "id" ><br>
		비밀번호 : <input type = "password" name = "pw"><br>
		닉네임 : <input type = "text" name = "nick"><br>
		<input type = "submit" value = "로그인">
	</form>
</body>
</html>