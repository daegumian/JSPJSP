<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	<!-- 폴더별로 경로를 맞춰 주는 게 좋다. -->
	<a href="add.test">회원추가기능</a>
	<a href="login.test">로그인기능</a>
	<a href="/JSPBasic/controller/update.test">회원수정기능</a>
	<a href="<%=request.getContextPath()%>/controller/getPw.test">비밀번호찾기기능</a>

</body>
</html>