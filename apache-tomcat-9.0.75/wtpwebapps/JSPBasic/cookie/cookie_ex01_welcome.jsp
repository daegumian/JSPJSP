<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //1. name 값이 user_id인 쿠키를 찾는다.
    
    Cookie[] arr = request.getCookies(); //한 개가 아니다.
    String name = "";
    
    if( arr != null){
    	
    	for(Cookie c : arr){
    		
    		if(c.getName().equals("user_id")){ //여러개 중에 조건만 충족한 것만 name 변수에 담기
    		name = c.getName();
  
    		out.println(name + "님 환영합니다" + "</br>");
    		
    		}
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

	<h3>결과페이지</h3>
	<a href="cookie_ex01.jsp">다시 로그인하기</a>
	<!-- 
	user_id 쿠키를 확인해서 "xxx님 환영합니다"를 출력
	 -->
	
</body>
</html>