<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    //쿠키 삭제는 동일한 이름으로 시간을 0초 선언하면 삭제됩니다.
    Cookie cookie = new Cookie("choco", "aaa123"); //이름이 같아야 한다.!!!
    
    cookie.setMaxAge(0); //0초
    
    response.addCookie(cookie);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>쿠키는 이미 삭제가 되어 있습니다.</h3>
	<a href="cookie_get.jsp">쿠키 확인하기</a>

</body>
</html>