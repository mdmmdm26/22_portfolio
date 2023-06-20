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
            	<h1 class="mb-3 mt-5 bread">Register</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Checout</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-xl-8 ftco-animate">
			<form action="${contextPath }/member/register" class="billing-form p-3 p-md-5">
				<h3 class="mb-4 billing-heading">회원가입</h3>
	          	
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>아이디</label>
	                 		<p><input type="password" id="password" name="password" class="form-control" placeholder="아이디를 입력해주세요" required></p>
	                	</div>
                	</div>
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>비밀번호</label>
	                 		<p><input type="password" id="password" name="password" class="form-control" placeholder="비밀번호를 입력해주세요" required></p>
	                	</div>
                	</div>
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>비밀번호확인</label>
	                 		<input type="password" id="confirmPasswd" class="form-control" placeholder="비밀번호를 확인해주세요" required>
	                	</div>
               		 </div>
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>이름</label>
	                 		<input type="password" id="confirmPasswd" class="form-control" placeholder="이름을 입력하세요" required>
	                	</div>
               		 </div>
               		 
               		 <div class="w-100"></div>
               		 <div class="col-md-12">
               			<div class="form-group mt-4">
							<div class="radio">
								<label class="mr-3"><input type="radio" name="sex" value="f"> 여성 </label>
								<label><input type="radio" name="sex" value="m"> 남성</label>
							</div>
						</div>
               		</div>
                
                	<!-- select -->
			        <label>생년월일</label>
                	<div class="row align-items-end">
			            <div class="col-md-3">
			            	<div class="form-group">
			            		<div class="select-wrap">
			                  		<div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                  		<select id="birthY" class="form-control">
			                  			<c:forEach var="i" begin="0" end="2023">
			                  				<option style="color:black">${2023-i }년</option>
			                  			</c:forEach>
			                  		</select>
			                	</div>
			            	</div>
			            </div>
			            <div class="col-md-3">
			            	<div class="form-group">
			            		<div class="select-wrap">
			                  		<div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                  		<select id="birthM" class="form-control">
			                  			<c:forEach var="i" begin="1" end="12">
			                  				<c:choose>
			                  					<c:when test="${i<10 }">
			                  						<option style="color:black">0${i }월</option>
			                  					</c:when>
			                  					<c:otherwise>
			                  						<option style="color:black">${i }월</option>
			                  					</c:otherwise>
			                  				</c:choose>
			                  			</c:forEach>
			                  		</select>
			                	</div>
			            	</div>
			            </div>
			            <div class="col-md-3">
			            	<div class="form-group">
			            		<div class="select-wrap">
			                  		<div class="icon"><span class="ion-ios-arrow-down"></span></div>
			                  		<select id="birthD" class="form-control">
			                  			<c:forEach var="i" begin="1" end="31">
			                  				<c:choose>
			                  					<c:when test="${i<10 }">
			                  						<option style="color:black">0${i }일</option>
			                  					</c:when>
			                  					<c:otherwise>
			                  						<option style="color:black">${i }일</option>
			                  					</c:otherwise>
			                  				</c:choose>
			                  			</c:forEach>
			                  		</select>
			                	</div>
			            	</div>
			            </div>
		            </div>
		            
		            <div class="col-md-8">
	                	<div class="form-group">
                            <div class="checkbox"></div>
	                		<label>전화번호</label>
	                 		<p><input type="text" name="hp" class="form-control" placeholder="-를 포함해서 입력하세요" required></p>
	                		<label for="smsstsYn">
                                 CMS에서 발송하는 SMS 소식을 수신합니다.
                                 <input type="checkbox" id="smsstsYn" name="smsstsYn" value="Y" class="mr-2">
                             </label>
	                	</div>
                	</div>
                	
		            <div class="col-md-8">
	                	<div class="form-group">
                            <div class="checkbox"></div>
	                		<label>이메일</label>
	                 		<p><input type="text" name="email" class="form-control" placeholder="이메일을 입력하세요" required></p>
	                		<label for="smsstsYn">
                                 CMS에서 발송하는 email을 수신합니다.
                                 <input type="checkbox" id="smsstsYn" name="smsstsYn" value="Y" class="mr-2">
                             </label>
	                	</div>
                	</div>
                	
		            <div class="col-md-6">
		            	<div class="form-group">
	                		<label>우편번호</label>
	                  		<input type="text" id="zipcode" name="zipcode" class="form-control">
                        	<div align="right"><input type="button" value="검색" onclick="execDaumPostcode();" class="btn btn-primary py-3 px-4"></div>
	                	</div>
		            </div>
		            <div class="col-md-8">
		            	<div class="form-group">
		            		<label>도로명 주소</label>
	                  		<input type="text" name="roadAddress" id="roadAddress" class="form-control">
	               		</div>
		            </div>
		            <div class="col-md-8">
		            	<div class="form-group">
		            		<label>지번 주소</label>
	                  		<input type="text" name="jibunAddress" id="jibunAddress" class="form-control">
	               		</div>
		            </div>
		            <div class="col-md-8">
		            	<div class="form-group">
		            		<label>나머지 주소</label>
	                  		<input type="text" name="namujiAddress" id="namujiAddress" class="form-control">
	               		</div>
		            </div>
		            
		            <div align="center">
                        <button type="submit" class="btn btn-primary py-3 px-4">가입</button>
                    </div>
		            
                
	            
	          </form><!-- END -->



	          
			</div>
        </div>
      </div>
    </section>

</body>
</html>