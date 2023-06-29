<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<div align="right">
	                  	<button class="btn btn-primary py-3 px-4" onclick="location.href='${contextPath}/myPage/removeMember?memberId=${memberDTO.memberId }'" style="color:black;'">회원탈퇴</button>
	              	</div>
	              	<br>
    				<div class="cart-list">
	    				<table class="table">
						    <thead class="thead-primary">
						      <tr class="text-center">
						        <th>&nbsp;</th>
						        <th>&nbsp;</th>
						        <th>Product</th>
						        <th>Price</th>
						        <th>Quantity</th>
						        <th>Total</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        <td class="product-remove"><a href="#"><span class="icon-close"></span></a></td>
						        
						        <td class="image-prod"><div class="img" style="background-image:url(images/menu-2.jpg);"></div></td>
						        
						        <td class="product-name">
						        	<h3>Creamy Latte Coffee</h3>
						        	<p>Far far away, behind the word mountains, far from the countries</p>
						        </td>
						        
						        <td class="price">$4.90</td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
					             	<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
					          	</div>
					          </td>
						        
						        <td class="total">$4.90</td>
						      </tr><!-- END TR-->

						      <tr class="text-center">
						        <td class="product-remove"><a href="#"><span class="icon-close"></span></a></td>
						        
						        <td class="image-prod"><div class="img" style="background-image:url(images/dish-2.jpg);"></div></td>
						        
						        <td class="product-name">
						        	<h3>Grilled Ribs Beef</h3>
						        	<p>Far far away, behind the word mountains, far from the countries</p>
						        </td>
						        
						        <td class="price">$15.70</td>
						        
						        <td class="quantity">
						        	<div class="input-group mb-3">
					             	<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
					          	</div>
					          </td>
						        
						        <td class="total">$15.70</td>
						      </tr><!-- END TR-->
						    </tbody>
						  </table>
						  <div align="right">
	                  		<button class="btn btn-primary py-3 px-4" onclick="location.href='${contextPath}/admin/goods/adminGoodsAdd'">상품추가</button>
	              		</div>
					 </div>
    			</div>
    		</div>
  
    		
    	</div>
    </section>

</body>
</html>