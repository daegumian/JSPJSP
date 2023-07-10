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
/* 스타일을 적용할 링크에 대한 클래스 지정 */
					.link-style {
						text-decoration: none;
						cursor: pointer;
						color: gray;
					}

					.link-style:hover {
						text-decoration: underline;
						color: blue;
					}
		</style>
		
		<div align="center">
			<br> <br> <b><font size="6" color="gray">감사합니다!</font></b> <br>
			<br> <br>
			<h3 style="color: grey;">정상적으로 로그아웃 되었습니다</h3>
			<br> <a
				href="<%=request.getContextPath()%>/member/member_login.member" class="link-style">초기화면으로
				돌아가기</a>
		</div>
				</section>
		
				<button type="button" id="top">상단이동</button>
			</div>
</body>
</html>
<div align="center">
	<%@ include file="../include/footer.jsp"%>
</div>