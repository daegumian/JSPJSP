<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<%@ include file = "../include/header.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
	  @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
      
        .xx {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
	  
	  .font{
	  	font-family : 'Nanum Gothic', serif;
	  	color : black;
	  }
	</style>
</head>
<body>

<div class="container font">
	<div class="xx">
	<table border="1">
		<thead align="center">
			<tr>
				<th>리뷰 내용</th>
				<th>아이디</th>
				<th>도서 이름</th>
				<th>작성일</th>
				<th>별점</th>
			</tr>
			
			
		</table>

	
	
	</div>
</div>

</body>
</html>

<div align="center">
	<%@ include file="../include/footer.jsp"%>
</div>