<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>1~100까지 홀수의 합</h3>
	<%
	int num = 0;
	for(int i = 1; i < 100; i +=2){
		num = num +i;
	}
	%>
	결과 :
	<%=num %>
	<br>

	<c:set var="sum" value="0"></c:set>
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum + i }" />
	</c:forEach>
	결과 : ${sum }
	<br>

	<hr />
	<h3>구구단 3단</h3>
	<c:forEach var="i" begin="1" end="9" step="1">
		3 x ${i } = ${3*i } <br>
	</c:forEach>
	<hr>
	
	<h3>2~9단까지 3단 제외 구구단 출력</h3>
	<hr>
	
	<c:forEach var="i" begin="1" end="9" step="1">
		<c:choose>
			<c:when test="${i != 3 }">
					<h3>${i }단</h3>
				<c:forEach var="k" begin="1" end="9" step="1">
					${i } x ${k } = ${i*k } <br>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<h3>3단은 몰라용~~</h3>
			</c:otherwise>
		</c:choose>
	</c:forEach>
		<hr>
		<%-- if써도 3단 제외하고 출력됨
		<c:if test="${i !=3 }">
		<c:forEach var="k" begin="1" end="9" step="1">
					${i } x ${k } = ${i*k } <br>
				</c:forEach>
		</c:if>
		--%>
	<hr>
	<%
	//배열을 선언
	int[] arr = new int[] {1,2,3,4,5};
	for(int k : arr){
		out.println(k); 
	}
	%>
	<br>
	<hr>
	<c:set var="arr" value="<%=new int[] {1,2,3,4,5} %>" />
	<!-- varStatus는 a변수는 상태값을 사용할 수 있는 변수 -->
	<c:forEach var="k" items ="${arr }" varStatus="s">
		인덱스번호 : ${s.index } <br>
		숫자번호 : ${s.count } <br>
		값 : ${k }<br>
	</c:forEach>
</body>
</html>