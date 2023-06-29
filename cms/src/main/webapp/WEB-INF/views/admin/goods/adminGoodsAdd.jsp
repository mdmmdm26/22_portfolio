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
            	<h1 class="mb-3 mt-5 bread">Add Goods</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Add Goods</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-xl-8 ftco-animate">
			<form action="${contextPath }/admin/goods/adminGoodsAdd" method="post" enctype="multipart/form-data" class="billing-form p-3 p-md-5">
				<h3 class="mb-4 billing-heading">상품추가</h3>
	          	
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>상품이름</label>
	                 		<input type="text" name="goodsNm" class="form-control" required>
	                	</div>
                	</div>
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>상품이미지</label>
	                 		<input type="file" name="profile" class="form-control" required>
	                	</div>
                	</div>
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>가격</label>
	                 		<input type="text" name="price" class="form-control" required>
	                	</div>
               		 </div>
               		 
               		 <div class="row align-items-end">
	          			<div class="col-md-6">
	                		<div class="form-group">
	                			<label>할인률</label>
	                  			<input type="text" name="discountRate" class="form-control" placeholder="">
	               			</div>
	              		</div>
	              		<div class="col-md-6">
	                		<div class="form-group">
	                			<label>재고</label>
	                  			<input type="text" name="stock" class="form-control" placeholder="">
	                		</div>
               			</div>
               		</div>
               		
               		 <div class="row align-items-end">
	          			<div class="col-md-6">
	                		<div class="form-group">
	                			<label>포인트</label>
	                  			<input type="text" name="point" class="form-control" placeholder="">
	               			</div>
	              		</div>
	         			<div class="col-md-6">
	                		<div class="form-group">
	                			<label>상품분류</label>
	                  			<select name="category">
	                  				<option value="coffee">원두</option>
	                  				<option value="ade">에이드</option>
	                  				<option value="smoothie">스무디</option>
	                  				<option value="tea">티</option>
	                  				<option value="soda">탄산</option>
	                  				<option value="milk">유제품</option>
	                  				<option value="whipping">휘핑</option>
	                  				<option value="bakery">베이커리</option>
	                  				<option value="machine">머신</option>
	                  			</select>
	                		</div>
               			</div>
               		</div>
               		
               		 <div class="row align-items-end">
	          			<div class="col-md-6">
	                		<div class="form-group">
	                			<label>배달비</label>
	                  			<input type="text" name="deliveryPrice" class="form-control" placeholder="">
	               			</div>
	              		</div>
	              		<div class="col-md-6">
	                		<div class="form-group">
	                			<label>브랜드</label>
	                  			<input type="text" name="brand" class="form-control" placeholder="">
	                		</div>
               			</div>
	              		
               		</div>
                
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>포인트</label>
	                 		<input type="text" name="memberNm" class="form-control" placeholder="이름을 입력하세요" required>
	                	</div>
               		 </div>
               		 
		            <div align="right">
                        <button type="submit" class="btn btn-primary py-3 px-4">등록</button>
                    </div>

	          </form><!-- END -->
			</div>
        </div>
      </div>
    </section>

</body>
</html>