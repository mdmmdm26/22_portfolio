<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="sessionId" value="${sessionScope.memberId }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	function processToCart(goodsCd) {
		
		if ("${sessionId == null}" == "true") {
			alert("로그인 후 이용가능합니다.");
			location.href = "${contextPath}/member/login";
		}
		else {
			
			$.ajax({
				url : "${contextPath}/myPage/addCart",
				method : "get",
				data : {"goodsCd" : goodsCd, "cartGoodsQty" : $("#orderGoodsQty").val()},
				success : function(result) {
					
					if (result == "duple") {
						alert("이미 추가된 품목입니다");
					}
					else {
						alert("장바구니에 추가되었습니다.");
					}
				
				}
			})
			
		}
		
	}

</script>
</head>
<body>

	<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="blog">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Shop Single</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="${contextPath }/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Shop Single</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->


  <!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="owl-carousel owl-theme s_Product_carousel">
						<div class="single-prd-item">
							<img class="img-fluid" src="${contextPath }/thumbnails?profile=${goodsDTO.profile }" alt="">
						</div>
						<!-- <div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="img/category/s-p1.jpg" alt="">
						</div> -->
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3>${goodsDTO.goodsNm }</h3>
						<h2><fmt:formatNumber value="${goodsDTO.price }"/> </h2>
						<ul class="list">
							<li><a class="active" href="#"><span>CATEGORY</span> : ${goodsDTO.category }</a></li>
							<li><a href="#"><span>BRAND</span> : ${goodsDTO.brand }</a></li>
						</ul>
						<p>${goodsDTO.content }</p>
						<div class="product_count">
             				<label for="qty">Quantity:</label>
							<input type="text" name="orderGoodsQty" id="orderGoodsQty" size="2" maxlength="12" value="1" title="Quantity:" class="input-text qty">
							<a class="button primary-btn" href="javascript:processToCart(${goodsDTO.goodsCd });">Add to Cart</a>               
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->



</body>
</html>