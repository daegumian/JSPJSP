<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="en">

<%@ include file="../include/header.jsp"%>
<body>
	<div id="wrapper">

		<section>
			<head>
<title>상품등록</title>

<style type="text/css">
table {
	margin-left: auto;
	margin-right: auto;
	border: 3px solid skyblue;
}

td {
	border: 1px solid skyblue
}

#title {
	background-color: skyblue
}
</style>

		
	<body>	
		<section>
			<div align="center">
					<br> <br> <b><font size="6" color="gray">판매자님! 상품을 등록하세요!</font></b>
					<br> <br> <br>
			</div>		
		</section>
	<hr>
	
	<form action="registProduct.pd" method="post" enctype="multipart/form-data">
		<table border="1" width="500">
			<tr>
				<td>상품명</td>
				<td>
					<input type="text" name="p_name" required="required" style="width: 100%;">
				</td>
			</tr>
			<tr>
				<td>판매자</td>
				<td>
					<input type="text" name="seller" value="${sessionScope.member_id }" readonly="readonly" required="required" size="10" style="width: 50%;">
				</td>
			</tr>
			<tr>
				<td>상품가격</td>
				<td>
					<input type="text" required="required" name="price">
				</td>
			</tr>
			<tr>
				<td>등록수량</td>
				<td>
					<input type="text" required="required" name="stock">
				</td>
			</tr>
			<tr>
				<td>상품 설명</td>
				<td>
					<textarea rows="10" style="width: 100%;" name="p_detail"></textarea>
				</td>
			</tr>
			<tr>
				<td>상품이미지</td>
				<td>
					<input type="file" name="imgName" id="img" accept="image/*" onchange="setThumbnail(event);" />
					<div id="image_container"></div>
					<script>
				      function setThumbnail(event) {
				        var reader = new FileReader();
				
				        reader.onload = function(event) {
				          var img = document.createElement("img");
				          img.setAttribute("src", event.target.result);
				          document.querySelector("div#image_container").appendChild(img);
				        };
				
				        reader.readAsDataURL(event.target.files[0]);
				      }
				    </script>
				</td>
			</tr>
			
			<tr>
				<td colspan="2">
				<center>
					<input type="submit" value="완료">
					&nbsp;&nbsp;
					<input type="button" value="목록" onclick="location.href='product_list.pd'">         
				</center>
				</td>
			</tr>
			
		</table>
	</form>
	
</div>
<div align="center">
	<%@ include file="../include/footer.jsp"%>
</div>