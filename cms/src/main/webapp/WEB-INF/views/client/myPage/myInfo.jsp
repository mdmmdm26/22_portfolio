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

	<c:if test="${sessionScope.memberId eq null }">
		<script>
			alert("로그인을 해주세요");
			location.href="${contextPath}/member/login"
		</script>
	</c:if>
	
	<section class="home-slider owl-carousel">

      <div class="slider-item" style="background-image: url(${contextPath }/resources/bootstrap/images/bg_3.png);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row slider-text justify-content-center align-items-center">

            <div class="col-md-7 col-sm-12 text-center ftco-animate">
            	<h1 class="mb-3 mt-5 bread">MyPage</h1>
	            <p class="breadcrumbs"><span class="mr-2"><a href="${contextPath }/">Home</a></span> <span>MyPage</span></p>
            </div>

          </div>
        </div>
      </div>
    </section>
    
    <section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-xl-8 ftco-animate">
			<form action="${contextPath }/myPage/modifyInfo" method="post" class="billing-form p-3 p-md-5">
				<h3 class="mb-4 billing-heading">내 정보</h3>
				
		            <div align="right">
                        <button class="btn btn-primary py-3 px-4" onclick="location.href='${contextPath}/myPage/removeMember?memberId=${memberDTO.memberId }'">회원탈퇴</button>
                    </div>
	          	
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>아이디</label>
	                 		<input type="text" id="memberId" name="memberId" class="form-control" value="${memberDTO.memberId }" readonly>
	                	</div>
                	</div>
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>비밀번호</label>
	                 		<input type="password" id="passwd" name="passwd" class="form-control" placeholder="비밀번호를 입력해주세요" required>
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
	                 		<input type="text" name="memberNm" class="form-control" value="${memberDTO.memberNm }" required>
	                	</div>
               		 </div>
	              	<div class="col-md-8">
	                	<div class="form-group">
	                		<label>포인트</label>
	                 		<input type="text" name="point" class="form-control" value="${memberDTO.point }" readonly>
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
	                 		<p><input type="text" name="hp" class="form-control" value="${memberDTO.hp }" required></p>
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
	                 		<p><input type="email" name="email" class="form-control" value="${memberDTO.email }" required></p>
	                		<label for="smsstsYn">
                                 CMS에서 발송하는 email을 수신합니다.
                                 <input type="checkbox" id="smsstsYn" name="smsstsYn" value="Y" class="mr-2">
                             </label>
	                	</div>
                	</div>
                	
		            <div class="col-md-6">
		            	<div class="form-group">
	                		<label>우편번호</label>
	                  		<input type="text" id="zipcode" name="zipcode" class="form-control" value="${memberDTO.zipcode }" required>
                        	<div align="right"><input type="button" value="검색" onclick="execDaumPostcode();" class="btn btn-primary py-3 px-4"></div>
	                	</div>
		            </div>
		            <div class="col-md-8">
		            	<div class="form-group">
		            		<label>도로명 주소</label>
	                  		<input type="text" name="roadAddress" id="roadAddress" class="form-control" value="${memberDTO.roadAddress }" required>
	               		</div>
		            </div>
		            <div class="col-md-8">
		            	<div class="form-group">
		            		<label>지번 주소</label>
	                  		<input type="text" name="jibunAddress" id="jibunAddress" class="form-control" value="${memberDTO.jibunAddress }" required}>
	               		</div>
		            </div>
		            <div class="col-md-8">
		            	<div class="form-group">
		            		<label>나머지 주소</label>
	                  		<input type="text" name="namujiAddress" id="namujiAddress" class="form-control" value="${memberDTO.namujiAddress }" required>
	               		</div>
		            </div>
		            
		            <div align="right">
                        <button type="submit" class="btn btn-primary py-3 px-4">회원정보 수정</button>
                    </div>
		            
                
	            
	          </form><!-- END -->



	          
			</div>
        </div>
      </div>
    </section>

</body>
</html>