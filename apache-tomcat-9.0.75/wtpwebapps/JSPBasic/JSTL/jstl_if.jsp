<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 변수 선언 -->
	<!-- 혼자 사용하는 태그는 반드시 />로 마감해야한다. -->
 	<c:set var="a" value="1"/> <!-- a = 1;랑 같은 뜻 -->
 	
 	<!-- jstl로 선언된 변수는 el참조가 된다. -->
	<c:out value="${a }"/> <br>
	
	<h3>if문</h3>
	<!-- if문 java -->
	<%--  
	<% if(true) {%>
		무조건 실행되는 문장 <br/>
	<% } %>
	--%>
	
	<!-- 위의 문장과 동일한 문장 -->
	<c:if test="true">
		무조건 실행되는 문장 <br/>
	</c:if>
	
	<hr/>
	<%-- 
	<h3>if문으로 쓴 것</h3>	
	<% if( Integer.parseInt(request.getParameter("age")) >= 20 ) { %>
		<%= request.getParameter("age") %> 이시네요! 성인입니다. <br>
	<% } %>
	--%>
	
	<h3>EL문으로 쓴 것, 이게 코드 작성이 편함.</h3>
	<c:if test="${param.age >= 20 }">
	${param.age }이시네요! 성인입니다.<br>
	</c:if>
	<br>
	<c:if test="${param.name == '박동훈'}">
		박동훈입니다.<br>
	</c:if>
	


</body>
</html>