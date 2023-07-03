<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Shop Category</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Shop Category</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->


	<!-- ================ category section start ================= -->		  
  <section class="section-margin--small mb-5">
    <div class="container">
      <div class="row">
        <div class="col-xl-3 col-lg-4 col-md-5">
          <div class="sidebar-categories">
            <div class="head">Browse Categories</div>
            <ul class="main-categories">
              <li class="common-filter">
                <form action="#">
                  <ul>
                    <li><a href="${contextPath }/goods/goodsList?category=coffee">coffee</a><span> (3600)</span></li>
                    <li><a href="${contextPath }/goods/goodsList?category=ade">ade</a><span> (3600)</span></li>
                    <li><a href="${contextPath }/goods/goodsList?category=smoothie">smoothie</a><span> (3600)</span></li>
                    <li><a href="${contextPath }/goods/goodsList?category=tea">tea</a><span> (3600)</span></li>
                    <li><a href="${contextPath }/goods/goodsList?category=soda">soda</a><span> (3600)</span></li>
                    <li><a href="${contextPath }/goods/goodsList?category=milk">milk</a><span> (3600)</span></li>
                    <li><a href="${contextPath }/goods/goodsList?category=whipping">whipping</a><span> (3600)</span></li>
                    <li><a href="${contextPath }/goods/goodsList?category=bakery">bakery</a><span> (3600)</span></li>
                    <li><a href="${contextPath }/goods/goodsList?category=machine">machine</a><span> (3600)</span></li>
                  </ul>
                </form>
              </li>
            </ul>
          </div>
          <div class="sidebar-filter">
            <div class="top-filter-head">Product Filters</div>
            <div class="common-filter">
              <div class="head">Brands</div>
              <form action="#">
                <ul>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">Apple<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">Gionee<span>(19)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">Micromax<span>(19)</span></label></li>
                  <li class="filter-list"><input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">Samsung<span>(19)</span></label></li>
                </ul>
              </form>
            </div>
            
            
          </div>
        </div>
        <div class="col-xl-9 col-lg-8 col-md-7">
          <!-- Start Filter Bar -->
          <div class="filter-bar d-flex flex-wrap align-items-center">
            <div class="sorting">
              <select>
                <option value="1">Default sorting</option>
                <option value="1">Default sorting</option>
                <option value="1">Default sorting</option>
              </select>
            </div>
            <div class="sorting mr-auto">
              <select>
                <option value="1">Show 12</option>
                <option value="1">Show 12</option>
                <option value="1">Show 12</option>
              </select>
            </div>
            <div>
              <div class="input-group filter-bar-search">
                <input type="text" placeholder="Search">
                <div class="input-group-append">
                  <button type="button"><i class="ti-search"></i></button>
                </div>
              </div>
            </div>
          </div>
           <!-- End Filter Bar -->
          <!-- Start Best Seller -->
          <section class="lattest-product-area pb-40 category-list">
            <div class="row">
            	<c:choose>
            		<c:when test="${empty goodsList }">
            			<h3>등록된 상품이 없습니다.</h3>
            		</c:when>
            		<c:otherwise>
            			<c:forEach var="list" items="${goodsList }">
			              <div class="col-md-6 col-lg-4">
			                <div class="card text-center card-product">
			                  <div class="card-product__img">
			                    <img class="card-img" src="${contextPath }/thumbnails?profile=${list.profile}" alt="">
			                    <ul class="card-product__imgOverlay">
			                      <li><button><i class="ti-search"></i></button></li>
			                      <li><button><i class="ti-shopping-cart"></i></button></li>
			                      <li><button><i class="ti-heart"></i></button></li>
			                    </ul>
			                  </div>
			                  <div class="card-body">
			                    <p>${list.category }</p>
			                    <h4 class="card-product__title"><a href="${contextPath }/goods/goodsDetail?goodsCd=${list.goodsCd}">${list.goodsNm }</a></h4>
			                    <p class="card-product__price"><fmt:formatNumber value="${list.price }"/>원 </p>
			                  </div>
			                </div>
			              </div>
            			</c:forEach>
            		</c:otherwise>
            	</c:choose>
              </div>
          </section>
          <!-- End Best Seller -->
        </div>
      </div>
    </div>
  </section>
	<!-- ================ category section end ================= -->		  

	

	

</body>
</html>