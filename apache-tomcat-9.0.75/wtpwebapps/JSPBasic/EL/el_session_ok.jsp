<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	//java로 세션 값 참조
	//String name = (String)session.getAttribute("name"); //el에선 필요없음
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>세션값은 sessionScope,applicationScope를 생략할 수 있지만, 적어주는게 좋다. 사용 유무를 알기 위해.</h3>
	${sessionScope.name }<br>
	${sessionScope.id }<br>
	${applicationScope.count }<br>
	
</body>
</html>