<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--
	fmt는 형변환을 다루는 기능을 가지고 있다.
	
	Integet.parseInt() = String => int
	
	parse => 다른 타입으로 형변환
	format => 같은 타입의 형태를 변환
	 --%>

	<h3>formatNumber, parseNumber, formatDate, pareDate</h3>
	
	<h3>formatDate => (날짜 데이터를 -> 날짜 형식으로 변환)</h3>
	
	<c:set var = "a" value ="<%=new Date() %>"/>
	
	<fmt:formatDate var ="a01" value="${a }" pattern = "yyyy년 MM월 dd일 HH시	mm분 ss초"/>
	<fmt:formatDate var = "a02" value="${a }" pattern = "yyyy-MM-dd"/>
	${a01 } <br>
	${a02 }	<br>
	
	<h3>parseDate => (문자데이터를 -> 날짜 형식으로 변환)</h3>
	
	<fmt:parseDate value="2023-06-07" pattern="yyyy-MM-dd"/> <br/>
	<fmt:parseDate value="2023년 06월 07일 15시 28분 03초" pattern="yyyy년 MM월 dd일 HH시mm분ss초"/> <br/>
	
	<hr>
	
	<h3>formatNumber => (숫자데이터 => 숫자형식의 변환, 0을 이용한 자릿수)</h3>
	
	<c:set var = "b" value = "20000"/>
	
	<fmt:formatNumber value="${b }" pattern="00,000원"/> <br/>
	<fmt:formatNumber value="${b }" pattern="0000.00원"/> <br/>
	
	<h3>parseNumber => (문자데이터 => 숫자로 형변환)</h3>
	
	<fmt:parseNumber value = "20,000" pattern = "00,000"/> <br/>
	<fmt:parseNumber value = "123abc원" pattern = "000abc원"/> <br/>
	
	<hr/>
	
	<h3>2020년 05월 03일 으로 변경해서 출력.(힌트 날짜가 아니다.)</h3>	
	<c:set var="TIME_A" value="2020/05/03" />
	
	<fmt:parseDate var = "A" value="${TIME_A}" pattern ="yyyy/MM/dd"/>
	<fmt:formatDate value="${A}" pattern = "yyyy년 MM월 dd일"/> <br>
	
	<c:set var="TIME_C" value="2020-05-03 21:30:22" />
	<fmt:parseDate var = "C" value ="${TIME_C }" pattern ="yyyy-MM-dd HH:mm:ss"/>
	<fmt:formatDate value="${C }" pattern = "yyyy년 MM월 dd일"/> <br>
	
    <c:set var="TIME_D" value="<%=new Date() %>" />
    <fmt:formatDate value="${TIME_D }" pattern = "2020년 05월 03일"/>	

</body>
</html>