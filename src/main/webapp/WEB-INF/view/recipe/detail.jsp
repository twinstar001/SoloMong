<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<style>
.recipe-bigImage{
	width:640px; 
	height:500px; 
	display:inline-block; 
	vertical-align:top;
	background-color:#6e6e8c;
}
.tt {
    position: relative; 
 left:1px;
 background-color:#dad5d5;
}



</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$().ready(function(){
		
	});

</script>
</head>

<body>
<header>
	<!-- 상단바 위치/ include 시키기 -->
</header>
<form:form modelAttribute="writeForm">
	<div style="width:1100px; margin-left:130px; margin:0 auto;" >
		<div style="background-color:#8a6e8e; height:80px;">${recipe.title}</div><!-- 
	 --><div style="background-color:#5f2255; height:20px; margin-bottom:50px;">
			<div style="display:inline-block;">${recipe.writeDate} / ${recipe.userId}　　</div><!-- 
			 --><div style="display:inline-block;">난이도 : ${recipe.level}　　</div><!-- 
			 --><div style="display:inline-block;">조리시간 : ${recipe.time}　　</div><!-- 
			 --><div style="display:inline-block;">인분 : ${recipe.people}　　</div>
			<hr>  
   	    </div>
		<div style="width:1020px; margin:0 auto;">
		
			<!-- ----------------------- 왼쪽 구역 -----------------------------  -->
			
			<div style="width:640	px; padding-right:35px; display:inline-block;     border-right: 1px solid" >
				<div class="recipe-bigImage">
						<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="margin:0 auto; width: 640px; height: 500px;" >
						  <!-- Indicators -->
						  <ol class="carousel-indicators">
						    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
						    <li data-target="#carousel-example-generic" data-slide-to="1"></li>

						  </ol>
						
						  <!-- Wrapper for slides -->
						  <div class="carousel-inner" role="listbox">
						    <div class="item active">
						      ${recipe.slideImg.get(0)}
						      <div class="carousel-caption">
						      </div>
						    </div>
						    <div class="item">
						      ${recipe.slideImg.get(1)}
						      <div class="carousel-caption">
						      </div>
						    </div>
						  </div>
						
						  <!-- Controls -->
						  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
						    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						    <span class="sr-only">Previous</span>
						  </a>
						  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
						    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						    <span class="sr-only">Next</span>
						  </a>
						</div>
				</div> 
				<div style="width:640px;">  <!-- 조리과정 시작 -->
					<div style="margin-top:68px;">
						<div style="width:71px; height:22px; margin-bottom:20px; background-color:#8a6e8e">
							조리 순서	
						</div>
						<div style="width:640px; margin-bottom: 50px; " >
							<div style="width:290px; padding-right:35px; display:inline-block;">
								<div style="width:290px; " >
								<!--  <img src="file:///C:/Users/Admin/Documents/workspace-sts-3.9.2.RELEASE/SoloMong/src/main/webapp/WEB-INF/static/main/img/b1.jpg" />
								 	-->
								<%-- <c:forEach items="${recipe.body}" var="body">
								 	<img src="<c:url value="/get/${myrecipe.imageId}"/>" style=" margin-bottom: 50px; width:290px;"/>
								 	
								</c:forEach>
								 	
							<div style="width:290px;" >${myrecipe.file}</div>
						 
						 			${body}
								 </c:forEach>--%>
								 
								 
					 		<c:forEach items="${recipe.body}" var="body" varStatus="status">
								<p>${recipe.bodyImg[status.index]}</p>
								<span>Step : </span><span>${body}</span>
							</c:forEach>
								 
								 
								</div>
							</div><!-- 
						 -->
						</div>
					</div>
				</div>
			</div><!-- 
			
			----------------------- 오른쪽 구역 -----------------------------
					
		 --><div style="width:309px; padding-left: 35px; display:inline-block;     vertical-align:top;">
				
				
					<div style="width:309px; margin-top:14px; background-color:#dad5d5;" >
						<span>재료</span>
						<br>
					</div>
					<%----	<c:forEach items="${recipe.}" var="myrecipe">
							<div style="width:154px; float:left; " class="tt">${myrecipe.ingredientName}</div>
							<div style="width:154px; float:left; " class="tt">${myrecipe.ingredientQuantity}</div>
						</c:forEach>
					
				
		 			<div style="width:309px; margin-top:14px; background-color:#dad5d5;" >
						<span>양념</span>
						<br>
				
					</div>
				 --> --%>
		    </div>	
		</div>
	</div>
</form:form>
</body>
</html>	