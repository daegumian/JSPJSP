<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%@ include file="../include/header.jsp"%>
<body>
	<div id="wrapper">
		<header>
			<div class="top">
				<div>
					<a href="<%=request.getContextPath()%>/member/member_login.member"
						style="color: blue">로그인</a> <a
						href="<%=request.getContextPath()%>/member/member_join.member"
						style="color: red">회원가입</a> <a href="">마이페이지</a> <a href=""> <i
						class="fa fa-shopping-cart" aria-hidden="true"></i> 장바구니
					</a>
				</div>
			</div>
			<div class="logo">
				<div>
					<a href="#"> <img src="../img/JJAPANG.jpg" width="300px"
						alt="헤더로고">
					</a>
					<form action="#">
						<input type="text" name="search">
						<button>
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</form>
				</div>
			</div>
			<div class="menu">
				<div>
					<ul>
						<li><a href="#">히트상품</a></li>
						<li><a href="#">추천상품</a></li>
						<li><a href="#">최신상품</a></li>
						<li><a href="#">인기상품</a></li>
						<li><a href="#">할인상품</a></li>
					</ul>
					<ul>
						<li><a href="#">쿠폰존</a></li>
						<li><a href="#">사용후기</a></li>
						<li><a href="#">개인결제</a></li>
						<li><a href="#">고객센터</a></li>
						<li><a href="#">FAQ</a></li>
					</ul>
				</div>
			</div>
		</header>
		<section>
			

		</section>

		<button type="button" id="top">상단이동</button>
	</div>
</body>
</html>
<div align="center">
	<%@ include file="../include/footer.jsp"%>
</div>