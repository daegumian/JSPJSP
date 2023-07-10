<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CUCUMART</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/product.css">
</head>
<style>
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
<body>
    <div id="wrapper">
        <header>
            <div class="top">
               <div>
               <c:choose>
                      <c:when test="${sessionScope.member_id != null }">
                   		<c:choose>
						<c:when test="${sessionScope.member_type != 'B' }">${sessionScope.member_name } (판매자)</c:when>                   		
                   		<c:otherwise>${sessionScope.member_name } (구매자)</c:otherwise>
                   		</c:choose>
                        <a href="<%=request.getContextPath() %>/member/member_login.member" style="color:blue">마이페이지</a>
                        <a href="<%=request.getContextPath() %>/member/member_logout.member" style="color:red">로그아웃</a>
                         <a href="<%=request.getContextPath() %>/product/product_addcart.pd" style="color:black" class="rainbow" > <i class="fa fa-shopping-cart" aria-hidden="true"></i> 장바구니</a>
                    </c:when>
                    <c:otherwise>
                        <a href="<%=request.getContextPath() %>/member/member_login.member" style="color:blue">로그인</a>
                        <a href="<%=request.getContextPath() %>/member/member_join.member" style="color:red">회원가입</a>
                        
                    </c:otherwise>
                    </c:choose>
            </div>
            </div>
            <div class="logo">
                <div>
                    <a href="<%=request.getContextPath() %>/member/home.jsp"> <img src="../img/JJAPANG.jpg" width="300"
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
                        <li><a href="<%=request.getContextPath() %>/product/product_list.pd">히트상품</a></li>
                        <li><a href="<%=request.getContextPath() %>/product/product_list.pd">추천상품</a></li>
                        <li><a href="<%=request.getContextPath() %>/product/product_list.pd">최신상품</a></li>
                        <li><a href="<%=request.getContextPath() %>/product/product_list.pd">인기상품</a></li>
                  		<li><a href="<%=request.getContextPath() %>/product/product_list.pd">할인상품</a></li>
                        <li><a href="<%=request.getContextPath() %>/product/product_list.pd" style="color:black" class="rainbow">짭팡상품!</a></li>
               </ul>
               <ul>
                  <li><a href="#">쿠폰존</a></li>
                  <li><a href="#">개인결제</a></li>
                        <li><a href="#">고객센터</a></li>
                        <li><a href="#">FAQ</a></li>
                    </ul>
                </div>
            </div>
        </header>
        </div>
        <main id="product">
            <aside>
                <ul class="category">
                    <li>
                        <i class="fa fa-bars" aria-hidden="true"></i>카테고리
                    </li>
                        <li>
                        <a href="#">
                            <i class="fas fa-tshirt" aria-hidden="true"></i>패션·의류·뷰티
                            </i>
                        </a>
                        <ol>
                            <li>
                                <a href="#">남성의류</a>
                            </li>
                            <li>
                                <a href="#">여성의류</a>
                            </li>
                            <li>
                                <a href="#">잡화</a>
                            </li>
                            <li>
                                <a href="#">뷰티</a>
                            </li>
                        </ol>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-laptop" aria-hidden="true"></i>가전·디지털
                            </i>
                        </a>
                        <ol>
                            <li>
                                <a href="#">노트북/PC</a>
                            </li>
                            <li>
                                <a href="#">가전</a>
                            </li>
                            <li>
                                <a href="#">휴대폰</a>
                            </li>
                            <li>
                                <a href="#">기타</a>
                            </li>
                        </ol>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-utensils" aria-hidden="true"></i>식품·생필품
                            </i>
                        </a>
                        <ol>
                            <li>
                                <a href="#">신선식품</a>
                            </li>
                            <li>
                                <a href="#">가공식품</a>
                            </li>
                            <li>
                                <a href="#">건강식품</a>
                            </li>
                            <li>
                                <a href="#">생필품</a>
                            </li>
                        </ol>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-home" aria-hidden="true"></i>홈·문구·취미
                            </i>
                        </a>
                        <ol>
                            <li>
                                <a href="#">가구/DIY</a>
                            </li>
                            <li>
                                <a href="#">침구·커튼</a>
                            </li>
                            <li>
                                <a href="#">생활용품</a>
                            </li>
                            <li>
                                <a href="#">사무용품</a>
                            </li>
                        </ol>
                    </li>
                </ul>
            </aside>
            <section class="list">
                <nav>
                    <h1>상품목록</h1>
                    <!-- <p>
                        HOME > 
                        <span>패션·의류·뷰티</span>
                        > 
                        <strong>남성의류</strong>
                    </p> -->
                </nav>
                <!-- <ul class="sort">
                    <li>
                        <a href="#" class="on">판매많은순</a>
                    </li>
                    <li>
                        <a href="#">낮은가격순</a>
                    </li>
                    <li>
                        <a href="#">높은가격순</a>
                    </li>
                    <li>
                        <a href="#">평점높은순</a>
                    </li>
                    <li>
                        <a href="#">후기많은순</a>
                    </li>
                    <li>
                        <a href="#">최근등록순</a>
                    </li>
                </ul> -->
                <table>
                   <tr>
                      <td>
                         상품사진
                      </td>
                      <td>
                         상품명
                      </td>
                      <td>
                         가격
                      </td>
                      <td>
                         판매자${sessionScope.member_type }
                      </td>
                   </tr>
                   <c:forEach var="vo" items="${list }" varStatus="x">
                    <tr>
                        <td><a href="product_detail.pd?p_name=${vo.p_name }" class="thumb">
                            <img src="<%=request.getContextPath() %>/img/${vo.imgName}" alt="상품이미지"/>
                        </a></td>
                        <td>
                           <a href="product_detail.pd?p_name=${vo.p_name }">${vo.p_name }</a>
                        </td>
                        <td>
                            <ul>
                                <!-- <li><ins class="dis-price">27,000</ins></li>
                                <li>
                                    <del class="org-price">30,000</del>
                                    <span class="discount">10%</span>
                                </li>
                                <li><span class="free-delivery">무료배송</span></li> -->
                                <li><fmt:formatNumber value="${vo.price }" pattern="0,000원"/></li>
                            </ul>
                        </td>
                        <td>
                            <h4 class="seller"><i class="fas fa-home" aria-hidden="true"></i>${vo.seller }</h4>
                        </td>
                        
                    </tr>
                    </c:forEach>
                       <td colspan="6" align="center">
                      <form action="" class="form-inline" >
                       <div class="form-group">
                        <c:if test="${sessionScope.member_type == 'S' }">
                        <input type="button" value="상품등록" onclick="location.href='product_regist.pd'">
                       </c:if>
                       </div>
                     </form>
                     </td>
                </table>
                <div class="paging">
                    <span class="prev">
                        <a href="#">< 이전</a>
                    </span>
                    <span class="num">
                        <a href="#" class="on">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#">6</a>
                        <a href="#">7</a>
                    </span>
                    <span class="next">
                        <a href="#">다음 ></a>
                    </span>
                </div>
            </section>
        </main>
</html>