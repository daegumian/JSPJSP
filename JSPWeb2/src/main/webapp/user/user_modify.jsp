<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp"%>
	<section>
		<div align="center">
			<h3>회원정보수정</h3>
				<form action="user_update.user" method = "post">
					<table border="1">
							
							<tr>
								<td>아이디</td>
								<td> <input type="text" name = "id" value = "${sessionScope.user_id }" readonly = "readonly"> </td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td> <input type="password" name = "pw"> </td>
							</tr>
							<tr>
								<td>닉네임</td>
								<td> <input type="text" name = "name" value = "${vo.name }"> </td>
							</tr>
							<tr>
								<td>이메일</td>
								<td> <input type="email" name = "email" value = "${vo.email }"> </td>
							</tr>
							<tr>
								<td>성별</td>
								<td>
								<input type="radio" name = "gender" value = "M" ${vo.gender == 'M' ? 'checked' : '' }>남자
								<input type="radio" name = "gender" value = "F" ${vo.gender == 'F' ? 'checked' : '' }>여자
								</td>
							</tr>

						</table>

						<input type="submit" value = "수정">		
						<input type="reset" value = "회원페이지로 가기" onclick="location.href='user_mypage.user'">	
				
				
				</form>			
		</div>
	</section>
<%@ include file = "../include/footer.jsp"%>