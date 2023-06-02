<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>표현식</h3>

	<% 
	int a = 10;
	String str = "홍길동";
   
	%>

	<%
		out.println("나이 : <b>" + a + "<b><br/>");
		out.print("이름 : <b>" + str + "<b><br/>");
	%>
	
	나이:<b><%=a %></b><br/>
	이름:<b><%=str %></b><br/>


	<hr/>
	
	<%
	for(int i = 1; i <= 9; i++){
		out.println(3 + " x " + i + "=" + 3 * i + "<br/>");
	}
	%>

	<hr/>
	표현식으로 변경 <br/>
	
	<%for(int i = 1; i <=9; i++){ %>
	
		3 x <%=i %> = <%=i*3 %><br/>	
	
	<% }%>
	
	<hr/>
	
	<ul>
		<li>1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
		<li>5</li>
		<li>6</li>
		<li>7</li>
		<li>8</li>
		<li>9</li>
	</ul>
	
	<hr>
	
	<ul>
		<%for(int i = 1; i <=9; i++){ %>
			<li><%=i%></li>
		<%}%>
	</ul>
	
	<hr/>
	반복문으로 체크박스에 1~20까지 이름을 붙여서 출력
	<br>
	
	
	 <%for(int i = 1; i <=20; i++){ %>
	
		<input type="checkbox" name="product"> 
		상품<%=i%>
	
		<%}%> 
	 
	
	
	
	
	
	

	
</body>
</html>