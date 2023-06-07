<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 경로만(ex .test 맞으면 controller에 다 들어간다. -->
	<a href="add.test">회원추가기능</a>
	<a href="login.test">로그인기능</a>
	<a href="/JSPBasic/update.test">회원수정기능</a>
	<a href="asdfljknavjbansdalskvjdb.test">비밀번호찾기기능</a> <br>
	
	<!-- 폴더별로 경로를 맞춰 주는 게 좋다. -->
	<a href="add.test">회원추가기능</a>
	<a href="login.test">로그인기능</a>
	<a href="/JSPBasic/controller/update.test">회원수정기능</a>
	<a href="<%=request.getContextPath()%>/controller/getPw.test">비밀번호찾기기능</a>

	//3. 요청분기...
	
</body>
</html>