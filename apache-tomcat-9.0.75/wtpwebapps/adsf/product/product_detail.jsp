<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
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
    <link rel="stylesheet" href="./css/product.css">
    <!--
        날짜 : 2022/12/06
        이름 : 박종협
        내용 : Kmarket main layout
    -->
    <style>
    
  @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');
  .nanum {font-family: 'Nanum Gothic Coding', monospace;}
  
        #product > .view > article {
            width: 100%;
            height: auto;
            overflow: hidden;
        }        

        #product > .view > .info > div {
            float: left;
            width: 50%;
            height: 80%;
            padding: 10px;
            box-sizing: border-box;
        }

        #product > .view > .info > .image > img { width: 100%; }

        #product > .view > .info > .summary > nav {
            border-bottom: 1px solid #eaeaea;
            padding-bottom: 10px;
            margin-bottom: 12px;
            overflow: hidden;
        }

        #product > .view > .info > .summary > nav > h1 {
            float: left;
            color: #0231a6;
            font-weight: bold;
            font-size: 1.5em;
        }

        #product > .view > .info > .summary > nav > h2 {
            float: right;
            color: #777;
            margin-top: 8px;
        }

        #product > .view > .info > .summary > nav > h3 {
            font-size: 18px;
            font-weight: bold;
            color: #1e2732;
        }

        #product > .view > .info > .summary > nav > p {
            font-size: 14px;
            color: #474747;
            line-height: 36px;
            letter-spacing: -1px;
        }

        #product > .view > .info > .summary > nav:nth-child(2) > .rating > a {
            color: #346aff;
            text-decoration: underline;
        }

        #product > .view > .info > .summary .org_price > del {
            font-size: 18px;
            color: #aaa;
        }


        #product > .view > .info > .summary .org_price > del::after { content: "원"; }

        #product > .view > .info > .summary .org_price > span {
            color: #eb000a;
            font-size: 16px;
            margin-left: 6px;
        }

        #product > .view > .info > .summary .org_price > span::after { content: "↓"; }

        #product > .view > .info > .summary .dis_price > ins {
            font-size: 26px;
            font-weight: bold;
            text-decoration: none;
        }

        #product > .view > .info > .summary .dis_price > ins::after { content: "원"; }
        #product > .view > .info > .summary .delivery {
            font-size: 16px;
            color: #2e8de5;
        }
            font-size: 16px;
        }

        #product > .view > .info > .summary .origin {
            font-size: 16px;
        }

        #product > .view > .info > .summary .arrival {
            font-size: 14px;
            margin-left: 10px;
        }
        #product > .view > .info > .summary .desc {
            display: block;
            color: #aaa;
        }

        #product > .view > .info > .summary .card > i {
            display: inline-block;
            width: 30px;
            height: 18px;
            top: 4px;
            font-size: 0;
            vertical-align: text-top;
            margin-right: 2px;
        }

        #product > .view > .info > .summary .cardfree > i { background-position: -126px 0; }

        #product > .view > .info > .summary .cardadd > i { background-position: -51px -21px; }

        #product > .view > .info > .summary .banner { width: 100%; }

        #product > .view > .info > .summary .count {
            position: relative;
            width: 100px;
            height: 40px;
        }
        #product > .view > .info > .summary .count > button {
            position: absolute;
            width: 21px;
            height: 21px;
            background-image: url(./img/ico_sprites.png);
            font-size: 0;
            background-color: transparent;
            border: none;
        }
        #product > .view > .info > .summary .count > input[name=num] {
            position: absolute;
            left: 30px;
            top: 0;
            width: 30px;
            height: 21px;
            border: 1px solid #ececec;
            font-size: 14px;
            text-align: center;
        }
        #product > .view > .info > .summary .count > .decrease {
            left: 0;
            top: 0;
            background-position: 0px -74px;
        }
        #product > .view > .info > .summary .count > .increase {
            left: 70px;
            top: 0;
            background-position: -48px -74px;
        }
        #product > .view > .info > .summary .total {
            overflow: hidden;
            margin-top: 16px;
        }
        #product > .view > .info > .summary .total > span {
            float: right;
            display: inline-block;
            line-height: 38px;
            font-size: 24px;
            font-weight: bold;
            color: #000;
            text-align: right;
            letter-spacing: -0.5px;
        }

        #product > .view > .info > .summary .total > span::after { content: "원";}

        #product > .view > .info > .summary .total > em {
            float: right;
            display: block;
            width: 100px;
            height: 22px;
            padding: 10px 0 0;
            font-size: 16px;
            line-height: 22px;
            color: #5e636d;
            letter-spacing: -1px;
        }
        #product > .view > .info > .summary .button {
            overflow: hidden;
            margin-top: 16px;
        }
        #product > .view > .info > .summary .button > input {
            float: left;
            width: 49%;
            height: 50px;
            margin: 2px;
            font-size: 20px;
            font-weight: bold;
            border-radius: 2px;
            cursor: pointer;
        }
        #product > .view > .info > .summary .button > .cart {
            background: #fff;
            border: 1px solid #d9d9d9;
            color: #233594;
        }
        #product > .view > .info > .summary .button > .order {
            background: #2e8de5;
            border: 1px solid #217fd7;
            color: #fff;
        }
        #product > .view > .review > .paging > .num > a.on {
            color: #fe434c;
            font-weight: bold;
        }
        #product > .view > article > nav {
            border-bottom: 1px solid #a4a9b0;
            padding: 6px 0;
            margin-bottom: 12px;
            overflow: hidden;
        }
        #product > .view > article > nav > p {
            float: left;
            color: #777;
            margin-top: 6px;
            margin-left: 6px;
        }
        #product > .view > article > nav > h1 {
            float: left;
            color: #1e2732;
            font-weight: bold;
            font-size: 1.5em;
        }

        #product > .view > .notice > table { width: 100%; }

        #product > .view > .notice > table:nth-of-type(2) { border-top: 1px solid #ececec; }

        #product > .view > .notice > table tr > td {
             padding: 5px 0 6px 21px;
             font-size: 14px;
             color: #777;
        }

        #product > .view > .notice > table tr > td:nth-child(1) { width: 20%; color: #222; }

        #product > .view > .review > ul {
            padding: 10px;
            box-sizing: border-box;
        }
        #product > .view > .review > ul > li {
            padding-top: 16px;
            border-bottom: 1px solid #ececec;
            box-sizing: border-box;
        }

        #product > .view > .review > ul > li > div { overflow: hidden; }

        #product > .view > .review > ul > li > div > span {
            float: right;
            color: #555;
        }

        #product > .view > .review > ul > li > div >  h5 { float: left; }

        #product h5.rating {
            width: 150px;
            height: 20px;
            font-size: 0px;
            background-image: url(../img/ico_rating_star.png);
            background-repeat: no-repeat;
            /*  background-position: 36px 0px;*/
            text-indent: 86px;
        }
        #product > .view > .review > ul > li > h3 {
            color: #555;
            margin-top: 6px;
        }
        #product > .view > .review > ul > li > p {
            width: 100%;
            height: 60px;
            color: #555;
            font-size: 14px;
            line-height: 19px;
            word-break: break-all;
            word-wrap: break-word;
            margin-top: 10px;
        }
        #product > .view > .review > .paging {
            width: 100%;
            padding: 30px 0;
            text-align: center;
        }
        #product > .view > .notice > .notice {
            margin: 20px 0;
            padding: 21px 26px 20px 19px;
            line-height: 20px;
            font-size: 14px;
            color: #757c8a;
            background: #fafafa;
            border-radius: 2px;
            white-space: normal;
        }
        #product > .view > .review >.paging > span > a { 
            color: #777;
            font-size: 11px;
            letter-spacing: -1px;
        }
        #product > .view > .review > .paging > .num > a {
            display: inline-block;
            min-width: 14px;
            margin: 0 2px;
            padding: 8px 9px;
            border: 1px solid #c4c4c4;
            color: #000;
            font-size: 12px;
            text-align: center;
            text-decoration: none;
        }
        #product > .view > .review > .paging > .num > a.on {
            color: #fe434c;
            font-weight: bold;
        }
     .container {
      width: 60%;
      margin: 0 auto;
      padding: 20px;
    }
    
    h2 {
      text-align: center;
    }
    
    .form-group {
      margin-bottom: 15px;
    }
    
    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }
    
    input[type="text"],
    textarea {
      width: 100%;
      padding: 5px;
    }
    
    select {
      width: 100%;
      padding: 5px;
    }
    
    textarea {
      height: 150px;
    }
    
    .submit-btn {
      display: block;
      width: 100%;
      padding: 10px;
      background-color: #4CAF50;
      color: white;
      text-align: center;
      border: none;
      cursor: pointer;
      font-size: 16px;
    }
    
    .submit-btn:hover {
      background-color: #45a049;
    }
    </style>
</head>
<body class="nanum">
        <form action="product_addcart.pd" method="post" class="nanum">	
        <main id="product">
            <aside>
                <ul class="category">
                    <li>
                        <i class="fa fa-bars" aria-hidden="true"></i>카테고리
                    </li>
                        <li>
                        <a href="#">
                            <i class="fas fa-tshirt" aria-hidden="true"></i>패션·의류·뷰티
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
            <section class="view">
                <article class="info">
                    <div class="image">
                        <img src="<%=request.getContextPath() %>/img/${vo.imgName }" alt="상품이미지">
                    </div>
                    <div class="summary">
                        <nav>
                            <h1>(주)판매자명</h1>
                        </nav>
                        <nav>
                        	<input hidden="hidden" name="name" value="${vo.p_name }">
                        	<input hidden="hidden" name="price" value="${vo.price }">
                            <h3>${vo.p_name }</h3>
                            <p>${vo.p_detail }</p>
                            <h5 class="rating star4">
                                <a href="#section1">상품평보기</a>
                            </h5>
                        </nav>
                        <nav>
                            <div class="dis_price">
                                <ins>${vo.price }</ins>
                            </div>
                        </nav>
                        <nav>
                            <span class="delivery">무료배송</span>
                            <span class="arrival">언젠간 도착예정</span>
                            <span class="desc">본 상품은 국내배송만 가능합니다.</span>
                        </nav>
                        <nav>
                            <span class="origin">원산지-상세설명 참조</span>
                        </nav>
                        <img src="../img/vip_plcc_banner.png" alt="적립!" class="banner">
                        	수량을 선택하세요 <input type="number" value="1" name="count" height="50">
                        <div class="total">
                            <span>${vo.price }</span>
                            <em>상품금액</em>
                        </div>
                        <div class="button">
                            <input type="submit" class="cart" value="장바구니에 담기">
                            <input type="button" class="order" value="구매하기" onclick="location.href='product_cart.pd'">
                        </div>
                    </div>
                </article>
                <article class="detail">
                    <nav><h1>상품정보</h1></nav>

                    		${vo.p_detail }
                </article>
                
               <br/>
               <br/>
               <br/>
               <br/>
               
                <article class="notice">
                    <nav>
                        <h1>상품 정보 제공 고시</h1>
                        <p>[전자상거래에 관한 상품정보 제공에 관한 고시] 항목에 의거 등록된 정보입니다.</p>
                    </nav>
                    <table>
                        <tr>
                            <td>상품상태</td>
                            <td>새상품</td>
                        </tr>
                        <tr>
                            <td>부가세 면세여부</td>
                            <td>과세상품</td>
                        </tr>
                        
                    </table>
                    <table>
                        
                        <tr>
                            <td>주문후 예상 배송기간</td>
                            <td>상세정보 직접입력</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                구매, 교환, 반품, 배송, 설치 등과 관련하여 추가비용, 제한조건 등의 특이사항이 있는 경우
                            </td>
                        </tr>
                    </table>
                    <p class="notice">
                        소비자가 전자상거래등에서 소비자 보호에 관한 법률 제 17조 제1항 또는 제3항에 따라 청약철회를 하고
                        동법 제 18조 제1항 에 따라 청약철회한 물품을 판매자에게 반환하였음에도 불구 하고 결제 대금의
                        환급이 3영업일을 넘게 지연된 경우, 소비자 는 전자상거래등에서 소비자보호에 관한 법률 제18조
                        제2항 및 동법 시행령 제21조 2에 따라 지연일수에 대하여 전상법 시행령으로 정하는 이율을 곱하여
                        산정한 지연이자(“지연배상금”)를 신청할 수 있습니다. 아울러, 교환∙반품∙보증 및 결제대금의
                        환급신청은 [나의쇼핑정보]에서 하실 수 있으며, 자세한 문의는 개별 판매자에게 연락하여 주시기 바랍니다.
                    </p>
                </article>
                <div id="section1"></div>
                <article class="review">
                    <nav><h1>상품리뷰</h1></nav>
                    <ul>
                        <li>
                            <c:forEach var="li" items="${list }">
                            <div>
                                <h5 class="rating star4"> 상품평</h5>
                                <span>${li.m_id } <fmt:formatDate value="${li.regdate }" pattern="yyyy-MM-dd"/></span>
                            </div>
                            <h3>${vo.p_name }</h3>
                            <p> ${li.review }
                            </p>
                            </c:forEach>
                        </li>
                    </ul>
                    <!-- <div class="paging">
                        <span class="prev">
                            <a href="#">이전</a>
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
                    </div> -->
                </article>
            </section>
        </main>
	        </form>
	        
	 <form action="../review/review_regiForm.rv">
	<div class="container">
    <h2>리뷰 등록</h2>
      <div class="form-group">
      <input type="hidden" value="${vo.p_name }" name="p_name">
       <label for="title">제품명: ${vo.p_name }</label>
      </div>
      <div class="form-group">
        <label for="rating">별점:</label>
        <select id="rating" name="rating" required>
          <option value="5">5</option>
          <option value="4">4</option>
          <option value="3">3</option>
          <option value="2">2</option>
          <option value="1">1</option>
        </select>
      </div>
      <div class="form-group">
        <label for="content">내용:</label>
        <textarea id="content" name="content" required></textarea>
      </div>
      <button class="submit-btn" type="submit">등록</button>
  </div>
  </form>
        <button type="button" id="top">상단이동</button>
</body>
</html>