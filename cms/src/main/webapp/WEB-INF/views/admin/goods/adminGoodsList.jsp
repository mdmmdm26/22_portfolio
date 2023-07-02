<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="home-slider owl-carousel">

      <div class="slider-item" style="background-image: url(${contextPath }/resources/bootstrap/images/bg_3.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">Goods List</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="${contextPath }/">Home</a></span> <span>Goods List</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section">
			<div class="container">
				<div class="row">
    			<div class="col-md-12 ftco-animate">
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr>
						        <th width="5%">코드</th>
						        <th width="25%">상품 정보</th>
						        <th width="20%">등록날짜</th>
						        <th width="20%">수정/삭제</th>
						      </tr>
						    </thead>
						    <tbody>
						    	<c:choose>
									<c:when test="${empty goodsList }">
										<tr>
											<td colspan="4" align="center">
												<h6>조회된 상품이 없습니다.</h6>
											</td>
										</tr>
									</c:when>	
									<c:otherwise>
										<c:forEach var="list" items="${goodsList }">
											<tr>
												<td class="cart__close">
													<h6>${list.goodsCd }</h6>
												</td>
												<td class="product-name">
													<div>
														<h6><a href="${contextPath }/goods/goodsDetail?goodsCd=${list.goodsCd }">${list.goodsNm }</a></h6>
														<p><fmt:formatNumber value="${list.price }"/>원</p>
													</div>
												</td>
												<td class="price">
													<fmt:formatDate value="${list.enrollDt }" pattern="yyyy-MM-dd"/>
												</td>
												<td class="quatity">
													<a href="${contextPath }/admin/goods/adminGoodsModify?goodsCd=${list.goodsCd}"><span class="icon_pencil-edit"></span></a>
			                                		<a href="javascript:adminGoodsRemove(${list.goodsCd });">11</a>
												</td>
											</tr>
										</c:forEach>
									</c:otherwise>					    	
						    	</c:choose>
						      
						    </tbody>
						  </table>
						  </div>
						  <div align="right">
	                  		<button class="btn btn-primary py-3 px-4" onclick="location.href='${contextPath}/admin/goods/adminGoodsAdd'">상품추가</button>
	              		 </div>
    			</div>
    		</div>
    	</div>
    </section>

</body>
</html>