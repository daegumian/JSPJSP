<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@ include file="../include/header.jsp"%>
<body>
	<div id="wrapper">

		<section>
			<head>
<title>로그인</title>

<style type="text/css">
table {
	margin-left: auto;
	margin-right: auto;
	border: 3px solid skyblue;
}

td {
	border: 1px solid skyblue
}

#title {
	background-color: skyblue
}
</style>

<div align="center">
	<br> <br> <b><font size="6" color="gray">로그인</font></b> <br>
	<br> <br>

	<form action="loginForm.member" method="post">
		<table>
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="m_id" placeholder="아이디"></td>
				<tr />
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="m_pw" placeholder="비밀번호"></td>
				<tr />
			</table>
			<input type="submit" value="로그인">
			<input type="button" value="가입하기"
				onclick=" location.href = 'member_join.member' ">
	</form>
	<div style="color: orange;">${msg }</div>
</div>
		</section>

		<button type="button" id="top">상단이동</button>
	</div>
</body>
</html>
<div align="center">
	<%@ include file="../include/footer.jsp"%>
</div>