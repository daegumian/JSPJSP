<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    //세션값 출력 사용
    //한번 생성이 되었다면, 어디서든 기본값(30분) 까지 사용할 수 있다.
    //Object name = session.getAttribute("user_id"); //될까?
    String id = (String)session.getAttribute("user_id"); //키를 주면 값을 뱉어냄
    //Object name = session.getAttribute("user_name"); //될까?
    String name = (String)session.getAttribute("user_name");//키를 주면 값을 뱉어냄
    
    //세션 시간 확인
	int time = session.getMaxInactiveInterval();
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

세션에 저장된 user_id : <%=id %> <br>
세션에 저장된 user_name : <%=name %> <br>
세션에 저장된 time : <%=time %>

</body>
</html>