<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	//한글처리
	request.setCharacterEncoding("utf-8");	
	
	//이름 & 키 & 몸무게
	String name = request.getParameter("name");
	String cm = request.getParameter("cm");
	String kg = request.getParameter("kg");
	
	Double cm2 = Double.parseDouble(cm);
	Double kg2 = Double.parseDouble(kg);
	Double BMI = kg2/(cm2/100 * cm2/100);
	String a = "과체중";
	String b = "저체중";
	String c = "정상";
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	이름 : <%=name %><br>
	키 : <%=cm %><br>
	몸무게 : <%=kg %><br>
	BMI지수 : <%=BMI %><br>
	<%if(BMI>=25){%>
		<b>과체중 입니다 (운동 하세요)</b> <!--<%=a%>-->
	<%}else if(BMI<=18){%>
		<b>저체중 입니다 (많이 드세요))</b> <!--<%=b%>-->
	<%}else{%>
		<b>정상입니다. (유지 잘하세요)</b> <!--<%=c%>-->
	<%}%>
	
	

</body>
</html>