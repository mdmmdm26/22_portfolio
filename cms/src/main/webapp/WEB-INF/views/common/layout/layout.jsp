<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Home</title>
	<link rel="icon" href="${contextPath }/resources/bootstrap/img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="${contextPath }/resources/bootstrap/vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="${contextPath }/resources/bootstrap/vendors/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="${contextPath }/resources/bootstrap/vendors/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="${contextPath }/resources/bootstrap/vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="${contextPath }/resources/bootstrap/vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="${contextPath }/resources/bootstrap/vendors/owl-carousel/owl.carousel.min.css">

  <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/style1.css">
  
  <script src="${contextPath }/resources/bootstrap/vendors/jquery/jquery-3.2.1.min.js"></script>
  
</head>
<body>
  <!--================ Start Header Menu Area =================-->
	<tiles:insertAttribute name="header"/>
	<!--================ End Header Menu Area =================-->

  <tiles:insertAttribute name="body" ignore='true'/>


  <!--================ Start footer Area  =================-->	
	<tiles:insertAttribute name="footer"/>
	<!--================ End footer Area  =================-->



  <script src="${contextPath }/resources/bootstrap/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/vendors/skrollr.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/vendors/jquery.ajaxchimp.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/vendors/mail-script.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/main.js"></script>
  
</body>
</html>