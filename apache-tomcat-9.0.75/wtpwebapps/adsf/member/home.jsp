<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@ include file="../include/header.jsp"%>
<body>
	<div id="wrapper">

		<section>
			<head>
<title>회원가입</title>

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
.link-style {
						text-decoration: none;
						cursor: pointer;
						color: gray;
					}

					.link-style:hover {
						text-decoration: underline;
						color: blue;
					}
					.link-style {
        text-decoration: none;
        cursor: pointer;
        color: gray;
    }

    .link-style:hover {
        text-decoration: underline;
        color: blue;
    }

    .rainbow {
        background: linear-gradient(to right, red, orange, yellow, green, blue, indigo, violet);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        animation: sparkling 2s linear infinite;
    }

    @keyframes sparkling {
        0% {
            background-position: 0% 50%;
            filter: hue-rotate(0deg);
        }
        100% {
            background-position: 100% 50%;
            filter: hue-rotate(360deg);
        }
    }
</style>
	<form action="" >
		<div align="center">
					<br> <br> <b><font size="70" color="gray">안녕하세요 짭팡입니다!</font></b><br> <br> <br>
					<c:choose>
					<c:when test="${sessionScope.member_id == null }">
					<h3 style="font-size: 16px;" style="color:grey" >로그인 후 모든 홈페이지의 서비스를 받아보실 수 있습니다:-)</h3>
						<br><br>
					<a href="member_login.member" class="link-style" style="font-size: 14px;">로그인 하러 가기</a> 
					<a href="member_join.member" class="link-style" style="font-size: 14px;">회원가입 하러 가기</a>
					</c:when>
					<c:otherwise>
						<br>
					<h3 style="font-size: 16px;" style="color:grey" >이제 저희 '짭팡'의 세계에 흠뻑 빠져보시죠!</h3>
						<br><br>
						<br>
					<h3 style="font-size: 16px;" style="color:grey" >레츠 기~릿!</h3>
						<br><br>
					<a href="<%=request.getContextPath()%>/product/product_list.pd" class="link-style">쇼핑하러 가기</a>
					<a href="<%=request.getContextPath()%>/member/member_mypage.member" class="link-style">마이페이지 가기</a>
					<a href="<%=request.getContextPath()%>/product/product_cart.pd" class="link-style">장바구니 가기</a>
					</c:otherwise>
					</c:choose>
		</div>
		</form>

<div align="center">
	<%@ include file="../include/footer.jsp"%>
</div>