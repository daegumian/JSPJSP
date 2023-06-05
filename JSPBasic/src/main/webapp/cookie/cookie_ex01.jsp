<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//id_check 쿠키가 있다면, input태그의 value 값에다가 id_check쿠키의 값을 넣어보기.

	Cookie[] arr = request.getCookies(); // 쿠키가 한 개가 아니다.
	String value = "";
	String id_check = "";
	
	if (arr != null) {
	
		for (Cookie c : arr) {
	
			if (c.getName().equals("id_check")) { //충족한 것을 value 변수에 담기
	
			value = c.getValue();
	
			}
		}
	}
	//for문으로도 가능
	if (arr != null) {

		for(int i = 0; i < arr.length; i++){
			String name = arr[i].getName();
			if(name.equals("id_check")){ //아이디 기억하기
				id_check = arr[i].getValue();
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
	<h3>쿠키 확인하기</h3>
	<form action="cookie_ex01_ok.jsp" method="post">

		아이디 : <input type="text" name="id" value =<%=value%>><br> 
		비밀번호 : <input type="password" name="pw"><br> 
		<input type="submit" value="로그인"> 
		<input type="checkbox" name="id_check" value="y">>아이디 기억하기<br>

	</form>

</body>
</html>