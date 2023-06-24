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

	<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html">Coffee<small>Blend</small></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="menu.html" class="nav-link">Menu</a></li>
	          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
	          <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="room.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Shop</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="shop.html">Shop</a>
                <a class="dropdown-item" href="product-single.html">Single Product</a>
              </div>
            </li>
            <li class="nav-item dropdown">
            	<a class="nav-link dropdown-toggle" href="room.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services</a>
              	<div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="${contextPath }/member/myPage">MyPage</a>
              </div>
            </li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
	          <c:choose>
	          	<c:when test="${sessionScope.memberId eq null }">
		          	<li class="nav-item"><a href="${contextPath }/member/login">login</a></li>
		          	<li>/</li>
		          	<li class="nav-item"><a href="${contextPath }/member/register">register</a></li>
	          	</c:when>
	          	<c:otherwise>
	          	  	<li class="nav-item"><a href="${contextPath }/member/logout">logout</a></li>
	          	</c:otherwise>
	          </c:choose>
	          <li class="nav-item cart"><a href="cart.html" class="nav-link"><span class="icon icon-shopping_cart"></span><span class="bag d-flex justify-content-center align-items-center"><small>1</small></span></a></li>
	        </ul>
	      </div>
		  </div>
	  </nav>

</body>
</html>