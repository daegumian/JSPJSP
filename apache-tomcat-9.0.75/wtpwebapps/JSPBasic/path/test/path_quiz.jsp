<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- a태그 사용해서 req_get01페이지로 상대경로 -->
	<!-- a태그 사용해서 req_get01페이지로 절대경로 -->
	
	<a href="../../request/req_get01.jsp">req_get01페이지(상대)</a><br/>
	<a href="/JSPBasic/request/req_get01.jsp">req_get01페이지(절대)</a><br/>
	

	<!-- a태그 사용해서 DemoServlet으로 상대경로 (브라우저의(맵핑) 경로를 확인)-->
	<!-- a태그 사용해서 DemoServlet으로 절대경로 -->
	
	<a href="../../banana">서블릿맵핑(상대)</a><br/>
	<a href="/JSPBasic/banana">서블릿맵핑(절대)</a><br/>
	
	
	<!-- jsptag폴더 밑에 있는 이미지를 띄워주세요. img태그로 -->
	
	<a href="../../jsp/1.jpg">심쿵 준비1(상대)</a><br/>
	<img src="/JSPBasic/jsp/2.jpg">심쿵 준비2(절대)
	
	<!-- contextPath = 톰캣이 프로젝트를 구분하는 경로 -->



</body>
</html>