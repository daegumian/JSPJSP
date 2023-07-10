<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@ include file="../include/header.jsp"%>
<body>
	<div id="wrapper">

		<section>
			<head>
<title>탈퇴 화면</title>

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
					<br> <br> <b><font size="6" color="gray">${sessionScope.member_name} 님 회원 정보를 수정합니다</font></b>
					<br> <br> <br>

				<form action="member_update.member" method="post">
					<table border="1">
						<tr>
							<td>아이디</td>
							<td><input type="text" name="m_id"
								value="${sessionScope.member_id }" readonly="readonly">
						<tr />
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="m_pw"></td>
						<tr />
						<tr>
							<td>이름</td>
							<td><input type="text" name="m_name" value="${vo.m_name }">
							</td>
						<tr />
						<tr>
							<td>이메일</td>
							<td><input type="email" name="m_email"
								value="${vo.m_email} "></td>
						<tr />
						<tr>
							<td>주소</td>
							<td><input type="text" name="m_adress"
								value="${vo.m_adress} "></td>
						<tr />
							<td>회원타입</td>
				 			<td> 
				 			<input type="radio" name = "m_type" value = "B" ${vo.m_type == 'B' ? 'checked' : '' }>구매자
				 			<input type="radio" name = "m_type" value = "S"${vo.m_type == 'S' ? 'checked' : '' }>판매자
				 			</td>
					</table>

					<input type="submit" value="수정"> 
					<input type="button" value="회원페이지로 가기" onclick="location.href='member_mypage.member'">


				</form>
			</div>


		</section>

		<button type="button" id="top">상단이동</button>
	</div>
</body>
</html>
<div align="center">
	<%@ include file="../include/footer.jsp"%>
</div>