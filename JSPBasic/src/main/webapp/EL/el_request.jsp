<%@page import="com.demo.bean.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request에 있는 값 참조
	
	Member mem = new Member("aaa", "1234", "박동훈");

	request.setAttribute("mem", mem);
	request.setAttribute("name", "박동훈");
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h3>requestScope를 생략하고 사용, 디폴트값으로 request값을 참조하기 때문.</h3>
	${name }<br><br>

	<h3>request에 들어있는 객체(ex.Member) 안에 값은 반드시 getter명을 참조한다.</h3>
	${mem.id }<br>
	${mem.pw }<br>
	${mem.name }<br>

</body>
</html>