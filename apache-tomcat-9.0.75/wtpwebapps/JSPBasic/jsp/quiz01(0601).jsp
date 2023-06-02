<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	List<Integer> list = new ArrayList<>();
	Random ran = new Random();
	for (int i = 1; i < 46; i++) {
		list.add(i);
	}
	String result = "";
	for(int i = 0; i <= 6; i++){
	int randomNum = ran.nextInt(list.size());
		result += list.get(randomNum)+", ";
		if(i==6){
			result = result.substring(0,21);
		}
	}
	
	%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	오늘의 추천 로또번호 : [<%=result %>]



</body>
</html>