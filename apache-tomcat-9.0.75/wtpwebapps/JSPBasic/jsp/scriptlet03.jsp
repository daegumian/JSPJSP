<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	/* 화면전체에서 사용할 코드는 위에서 선언 */
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyymmdd");
	
	String now = sdf.format(date);
	
	//list
	ArrayList<String> list = new ArrayList<>();
	list.add("박동훈");
	list.add("박근희");
	
	//맵
	HashMap<Integer, String> map = new HashMap<>();
	map.put(1, "백임자");
	map.put(2, "박상섭");
	
	//셋
	HashSet<Integer> set = new HashSet<>();
	set.add(1);
	set.add(2);
	set.add(3);


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	지금 : <%=now %><br>
	리스트 : <%=list.toString()%> <br>
	맵 : <%= map.toString()%> <br>
	셋 : <%= set.toString() %> <br>























</body>
</html>