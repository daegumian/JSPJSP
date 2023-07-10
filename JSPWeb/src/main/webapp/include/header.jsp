<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <head>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-idth, initial-scale=1">
   

    <title>Welcome to MyWorld</title>

    <!-- Bootstrap Core CSS 절대경로로 해주는 게 좋다 -->
    <link href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS 절대경로호 해주는 게 좋다-->
    <link href="<%=request.getContextPath() %>/css/business-casual.css" rel="stylesheet">

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">
	
	<!-- jQuery 절대경로호 해주는 게 좋다-->
    <script src="<%=request.getContextPath() %>/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript 절대경로호 해주는 게 좋다-->
    <script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
    <script>
    $('.carousel').carousel({
        interval: 2000 //changes the speed
    })
    </script>
	<style>
	.abc {
		position: sticky;
		top: 0px;
		width: 100%; 
		z-index: 10;
	}
	</style>
    
	<!-- header -->
		<div class="brand">My Web</div>        
	    <div class="address-bar">Welcome to MyWorld</div>
	    
	    <nav class="navbar navbar-default abc" role="navigation">
	        <div class="container">
	            <div class="navbar-header">
	                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
	                    <span class="sr-only">Toggle navigation</span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                    <span class="icon-bar"></span>
	                </button>
	                
	                <a class="navbar-brand" href="/hong">My First Web</a>
	            </div>
	           
	           
	            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	                <ul class="nav navbar-nav">
	                	
	                    <li>
	                        <a href="<%=request.getContextPath() %>/index.user">HOME</a>
	                    </li>
	                    <li>
	                        <a href="<%=request.getContextPath() %>/member/member.user">MEMBER</a>
	                    </li>
	                    <li>
	                        <a href="<%=request.getContextPath()%>/board/board_list.board">BOARD</a>
	                    </li>
	                    
	                    <!-- 로그인 되어 있으면 모습 바꾸기 -> jstl 선언문을 최상단에 추가하기 & 라이브러리도 추가하기-->
	                    
	                    <c:choose>
	                    
		                    <c:when test="${sessionScope.user_id != null }">
			                    <li>
			                        <a href="<%=request.getContextPath() %>/user/user_mypage.user">MYPAGE</a>
			                    </li>
			                    <li>
			                        <a href="<%=request.getContextPath() %>/user/user_logout.user" style="color:red">LOGOUT</a> <!-- 컨트롤러 타고가게 하기 -->
			                    </li>
		                    </c:when>
	                   
		                    <c:otherwise>
			                    <li>
			                        <a href="<%=request.getContextPath() %>/user/user_login.user">LOGIN</a>
			                    </li>
			                    <li>
			                        <a href="<%=request.getContextPath() %>/user/user_join.user" style="color:red">JOIN</a> <!-- 컨트롤러 타고가게 하기 -->
			                    </li>
		                    </c:otherwise>
	                    
	                    </c:choose>
	                    
	                    
	                    
	                </ul>
	            </div>
	            
	            
	            <!-- /.navbar-collapse -->
	        </div>
	        <!-- /.container -->
	    </nav>
	 	<!-- end header -->