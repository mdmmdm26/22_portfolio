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
            	<h1 class="mb-3 mt-5 bread">Login</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Login</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section">
			<div class="container">
				<div class="row">
    				<div class="col-md-12 ftco-animate">
						<form action="${contextPath }/member/login" method="post" class="billing-form p-3 p-md-5">    					
	    					<h3>로그인</h3>
	    					<div class="col-md-6">
	                			<div class="form-group">
	                			<label>아이디</label>
	                 			<input type="text" name="memberId" class="form-control" placeholder="아이디를 입력해주세요" required>
	                			</div>
                			</div>
	              			<div class="col-md-6">
	                			<div class="form-group">
	                				<label>비밀번호</label>
	                 				<input type="password" name="passwd" class="form-control" placeholder="비밀번호를 입력해주세요" required>
	                			</div>
                			</div>
                			 <div align="right">
                        		<button type="submit" class="btn btn-primary py-3 px-4">로그인</button>
                   			 </div>
					 	</form>
					</div>
    			</div>
    		</div>
    </section>

</body>
</html>