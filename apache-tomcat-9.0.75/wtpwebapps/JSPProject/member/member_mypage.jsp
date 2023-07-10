<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="../include/header.jsp"%>
<body>
	<div id="wrapper">
		<section>
			<head>
				<title>마이페이지</title>
				<style type="text/css">
					  100% {
					    background-position: 100% 50%;
					    filter: hue-rotate(360deg);
					  }
					}
					table {
						margin-left: auto;
						margin-right: auto;
						border: 3px solid skyblue;
					}

					td {
						border: 1px solid skyblue;
					}

					#title {
						background-color: skyblue;
					}

					/* 스타일을 적용할 링크에 대한 클래스 지정 */
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
				    }
				</style>
				<div align="center">
					<br> <br>
					<b><font size="6" color="gray">마이페이지</font></b> <br>
					<br> <br>
					<h3 style="color: grey;">${sessionScope.member_name } (${sessionScope.member_id })님의 정보입니다.</h3>
					<form action="member_update.member" method="post">
					<table border="1">
						<tr>
							<td>아이디</td>
							<td><input type="text" name="m_id"
								value="${sessionScope.member_id }" readonly="readonly">
						<tr />
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="m_pw" value="*********" readonly="readonly"></td>
						<tr />
						<tr>
							<td>이름</td>
							<td><input type="text" name="m_name" value="${sessionScope.member_name }" readonly="readonly"">
							</td>
						<tr />
						<tr>
							<td>이메일</td>
							<td><input type="email" name="m_email"
								value="${sessionScope.member_email }" readonly="readonly"></td>
						<tr />
						<tr>
							<td>주소</td>
							<td><input type="text" name="m_adress"
								value="${sessionScope.member_adress }" readonly="readonly"></td>
						<tr />
							<td>회원타입</td>
				 			<td> 
				 			<input type="radio" name = "m_type" value = "B" ${member_type == 'B' ? 'checked' : '' }>구매자
				 			<input type="radio" name = "m_type" value = "S"${member_type == 'S' ? 'checked' : '' }>판매자
				 			</td>
					</table>
					
					<!-- 수정된 링크 -->
					<a href="member_modify.member" class="link-style">회원수정</a> 
					<a href="member_logout.member" class="link-style">로그아웃</a> 
					<a href="member_deleteForm.member" class="link-style">회원탈퇴</a><br>
					<br>
					<c:if test="${sessionScope.member_type != 'B' }">
					<a href="<%=request.getContextPath() %>/product/member_myselllist.pd" class="link-style"><span class="rainbow">나의 판매 목록!</span></a>
					</c:if>
				</div>
			</head>
		</section>
		<button type="button" id="top">상단이동</button>
	</div>
</body>
</html>
<div align="center">
	<%@ include file="../include/footer.jsp"%>
</div>
