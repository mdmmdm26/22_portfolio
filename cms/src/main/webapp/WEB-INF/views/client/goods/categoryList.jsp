<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<section class="home-slider owl-carousel">

      <div class="slider-item" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">Category Shop</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Shop</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>


    <section class="ftco-menu mb-5 pb-5">
    	<div class="container">
    		<div class="row d-md-flex">
	    		<div class="col-lg-12 ftco-animate p-md-5">
		    		<div class="row">
		          <div class="col-md-12 nav-link-wrap mb-5">
		            <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		            	  <a class="nav-link active" data-toggle="pill" href="${contextPath }/goods/categoryList?category=coffee" role="tab"  aria-selected="true">Coffee</a>

			              <a class="nav-link" data-toggle="pill" href="${contextPath }/goods/categoryList?category=ade,smoothie" role="tab"  aria-selected="false">Ade / Smoothie</a>
	
			              <a class="nav-link" data-toggle="pill" href="${contextPath }/goods/categoryList?category=tea,soda" role="tab"  aria-selected="false">Tea / Soda</a>
	
			              <a class="nav-link" data-toggle="pill" href="${contextPath }/goods/categoryList?category=milk,whipping" role="tab" aria-selected="false">Milk / Whipping</a>
			              
			              <a class="nav-link" data-toggle="pill" href="${contextPath }/goods/categoryList?category=bakery" role="tab"  aria-selected="false">Bakery</a>
			              
			              <a class="nav-link" data-toggle="pill" href="${contextPath }/goods/categoryList?category=machine" role="tab" aria-selected="false">Machine</a>
		            </div>
		          </div>
		          <div class="col-md-12 d-flex align-items-center">
		            
		            <div class="tab-content ftco-animate" >

		              <div class="tab-pane fade show active"  role="tabpanel">
		              	<div class="row">
		              	<c:choose>
		              		<c:when test="${empty categoryGoodsList }">
		              			<div class="menu-entry">
		              				<h3>등록된 상품이 없습니다.</h3>
		              			</div>
		              		</c:when>
		              		<c:otherwise>
		              			<c:forEach var="list" items="${categoryGoodsList }">
		              			
				              		<div class="col-md-3">
						        		<div class="menu-entry">
					    					<a href="#" class="img" style="background-image: url(images/menu-1.jpg);"></a>
					    					<div class="text text-center pt-4">
					    						<h3><a href="product-single.html" >${list.goodsNm }</a></h3>
					    						<p>A small river named Duden flows by their place and supplies</p>
					    						<p class="price"><span>${list.price }</span></p>
					    						<p><a href="cart.html" class="btn btn-primary btn-outline-primary">Add to Cart</a></p>
					    					</div>
						    			</div>
								   	</div>
		              			</c:forEach>
		              		</c:otherwise>
		              	</c:choose>
		              	</div>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
		    </div>
    	</div>
    </section>

</body>
</html>