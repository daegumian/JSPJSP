<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@ include file="../include/header.jsp"%>
<body>
	<div id="wrapper">

		<section>
			<head>
<title>회원가입</title>

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
					<br> <br> <b><font size="6" color="gray">회원가입</font></b>
					<br> <br> <br>
			<form action="joinForm.member" method="post">
				<table border="1">
					<tr>
						<td>아이디</td>
						<td><input type="text" name="m_id" required="required"
							pattern="\w{4,}"></td>
					<tr />
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="m_pw" required="required"></td>
					<tr />
					<tr>
						<td>이름</td>
						<td><input type="text" name="m_name" required="required"></td>
					<tr />
					<tr>
						<td>이메일</td>
						<td><input type="email" name="m_email"></td>
					<tr />
					<tr>
						<td>주소</td>
						<td><input type="text" name="m_adress" required="required"></td>
					<tr />
					<td>회원타입</td>
	 				<td> 
	 				<input type="radio" name = "m_type" value = "B" checked="checked">구매자
	 				<input type="radio" name = "m_type" value = "S">판매자
 					</td>
					
				</table>

				<div style="color: orange;">${msg }</div>


				<input type="submit" value="가입"> <input type="reset"
					value="정보초기화">

		</div>
</body>
</html>
<div align="center">
	<%@ include file="../include/footer.jsp"%>
</div>