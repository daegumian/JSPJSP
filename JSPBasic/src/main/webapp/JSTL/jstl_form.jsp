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
	
	<form action="jstl_if.jsp">
		이름 : <input type="text" name = "name"> <br>
		나이 : <input type="number" name = "age"> <br>
		<input type="submit" value = "제출하기"> <br>
	</form>

	<form action="jstl_choose.jsp">
		이름 : <input type="text" name = "name"> <br>
		나이 : <input type="number" name = "age"> <br>
		<input type="submit" value = "choose제출하기"> <br>
	</form>

	<form action="jstl_foreach.jsp">
		이름 : <input type="text" name = "name"> <br>
		나이 : <input type="number" name = "age"> <br>
		<input type="submit" value = "choose제출하기"> <br>
	</form>

</body>
</html>