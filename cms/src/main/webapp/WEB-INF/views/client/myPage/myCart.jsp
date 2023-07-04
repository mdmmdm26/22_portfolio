<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>

	$().ready(function(){
		
		getTotalPrice();
		
		$("[name='cartCd']").change(function(){
			getTotlaPrice();
		});
		
	});
	
	function getTotalPrice() {
		var totalPrice = 0;
		$("[name='cartCd']:checked").each(function(){
			var tempCartCd = $(this).val();
			totalPrice += Number($("#price" + tempCartCd).val()) * Number($("#cartGoodsQty" + tempCartCd).val());
		});
		totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + " 원";
		$("#totalPrice").html(totalPrice);
	}

	function modifyCartGoodsQty(cartCd){
		$.ajax({
			type : "get",
			url : "${contextPath}/myPage/modifyCartGoodsQty",
			data : {
				"cartCd" : cartCd,
				"cartGoodsQty" : $("#cartGoodsQty" + cartCd).val()
			},
			success:function(){
				getTotalPrice();
			}
		});
	}

</script>
</head>
<body>
	<c:if test="${sessionScope.memberId eq null}">
		<script>
			alert("로그인을 진행해주세요.");
			location.href = "${contextPath}/member/login";
		</script>
	</c:if>

	<section class="blog-banner-area" id="category">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>Shopping Cart</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="${contextPath }/">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Shopping Cart</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
  
  

  <!--================Cart Area =================-->
  <section class="cart_area">
      <div class="container">
          <div class="cart_inner">
              <div class="table-responsive">
              <h6><input type="checkbox" id="changeAllChoice" onchange="selectAllCart()"> &nbsp;전체선택</h6>
                  <br>
                  <table class="table">
                      <thead>
                          <tr>
                          	  <th width="3%"></th>
                              <th scope="col">상품</th>
                              <th scope="col" width="20%">가격</th>
                              <th scope="col" width="20%">수량</th>
                              <th scope="col" width="20%">날짜</th>
                          </tr>
                      </thead>
                      <tbody>
                      	<c:choose>
                      		<c:when test="${empty myCartList }">
                      			<tr align="center">
                      				<td colspan="5"><h4>조회된 상품이 없습니다.</h4></td>
                      			</tr>
                      		</c:when>
                      		<c:otherwise>
                      			<c:forEach var="cartList" items="${myCartList }">
                      				<tr>
                      				  <td><input type="checkbox" name="cartCd" value="${cartList.cartCd }" checked></td>
		                              <td>
		                                  <div class="media">
		                                      <div class="d-flex">
		                                          <img src="${contextPath }/thumbnails?profile=${cartList.profile}" width="80" height="80">
		                                      </div>
		                                      <div class="media-body">
		                                          <h6>
		                                          	<a href="${contxetPath }/goods/goodsDetail?goodsCd=${cartList.goodsCd}">${cartList.goodsNm }</a>
		                                          	<input type="hidden" id="goodsCd${cartList.cartCd }" value="${cartList.goodsCd }"/>
		                                          </h6>
		                                      </div>
		                                  </div>
		                              </td>
		                              <td>
		                                  <h5><fmt:formatNumber value="${cartList.price }"/></h5>
		                              </td>
		                              <td>
		                                  <div class="product_count">
		                                      <input type="text" name="cartGoodsQTy" id="cartGoodsQty" maxlength="12" value="1" title="Quantity:"
		                                          class="input-text qty">
		                                  </div>
		                              </td>
		                              <td>
		                                  <h5><fmt:formatDate value="${cartList.enrollDt }" pattern="yyyy-MM-dd"/></h5>
		                              </td>
                      				</tr>
                      			</c:forEach>
                      		</c:otherwise>
                      	</c:choose>
                          
                          <tr class="bottom_button">
                              <td>
                              </td>
                              <td>

                              </td>
                              <td>

                              </td>
                              <td>
                                  <a class="button" href="#">삭제</a>
                              </td>
                          </tr>
                          <tr>
                              <td>

                              </td>
                              <td>

                              </td>
                              <td>
                                  <h5>Subtotal</h5>
                              </td>
                              <td>
                                  <h5>$2160.00</h5>
                              </td>
                          </tr>
                          <tr class="shipping_area">
                              <td class="d-none d-md-block">

                              </td>
                              <td>

                              </td>
                              <td>
                                  <h5>Shipping</h5>
                              </td>
                              <td>
                                  <div class="shipping_box">
                                      <ul class="list">
                                          <li><a href="#">Flat Rate: $5.00</a></li>
                                          <li><a href="#">Free Shipping</a></li>
                                          <li><a href="#">Flat Rate: $10.00</a></li>
                                          <li class="active"><a href="#">Local Delivery: $2.00</a></li>
                                      </ul>
                                      <h6>Calculate Shipping <i class="fa fa-caret-down" aria-hidden="true"></i></h6>
                                      <select class="shipping_select">
                                          <option value="1">Bangladesh</option>
                                          <option value="2">India</option>
                                          <option value="4">Pakistan</option>
                                      </select>
                                      <select class="shipping_select">
                                          <option value="1">Select a State</option>
                                          <option value="2">Select a State</option>
                                          <option value="4">Select a State</option>
                                      </select>
                                      <input type="text" placeholder="Postcode/Zipcode">
                                      <a class="gray_btn" href="#">Update Details</a>
                                  </div>
                              </td>
                          </tr>
                          <tr class="out_button_area">
                              <td class="d-none-l">

                              </td>
                              <td class="">

                              </td>
                              <td>

                              </td>
                              <td>
                                  <div class="checkout_btn_inner d-flex align-items-center">
                                      <a class="gray_btn" href="#">Continue Shopping</a>
                                      <a class="primary-btn ml-2" href="#">Proceed to checkout</a>
                                  </div>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>
      </div>
  	</section>
	
</body>
</html>