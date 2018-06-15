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
		<div style="background-color:#8a6e8e; height:80px;">${myrecipe.title}</div><!-- 
	 --><div style="background-color:#5f2255; height:20px; margin-bottom:50px;">
			<div style="display:inline-block;">등록일　　</div><!-- 
			 --><div style="display:inline-block;">조회수　　</div><!-- 
			 --><div style="display:inline-block;">닉네임　　</div>
			<hr>  
   	    </div>
		<div style="width:1020px; margin:0 auto;">
		
			<!-- ----------------------- 왼쪽 구역 -----------------------------  -->
			
			<div style="width:640	px; padding-right:35px; display:inline-block;     border-right: 1px solid" >
				<div class="recipe-bigImage">
				<%-- 
				<c:forEach items="${myrecipeList2}" var="myrecipe2">
					<img src = "<c:url value="/static/main/${myrecipe2.file}"/>">
					<div>${myrecipe2.file}</div>
				</c:forEach> --%>
					<%--  
					<c:forEach items="${myrecipeList2}" var="myrecipe">
							<div style="width:154px; float:left; " class="tt">${myrecipe.file}</div>
						</c:forEach>
						 --%>
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
								<c:forEach items="${myrecipeList2}" var="myrecipe">
								 	<img src="<c:url value="/get/${myrecipe.imageId}"/>" style=" margin-bottom: 50px; width:290px;"/>
								</c:forEach>
								 	
						<%-- 		 	
							<div style="width:290px;" >${myrecipe.file}</div>
						 --%>
								</div>
							</div><!-- 
						 --><div style="width:315px;  margin-bottom: 50px; display:inline-block; vertical-align:top;">
							 	<span>Step 1</span> 
							 	<p>돼지고기 앞다리살은 키친타월에 올려 핏물제거해 준비합니다</p>
							</div>
						</div>
						
						<div style="width:640px; padding-bottom: 50px; " >
							<div style="width:290px; padding-right:35px; display:inline-block;">
								<div style="width:290px; " >
								 	<img style="width:290px;" src="//static.ssgcdn.com/cmpt/recipe/201705/ba1423d767275d7ba19c940ec3dc57801.jpg">
								</div>
							</div><!-- 
						 --><div style="width:315px;  display:inline-block; vertical-align:top;">
							 	<span>Step 1</span> 
							 	<p>돼지고기 앞다리살은 키친타월에 올려 핏물제거해 준비합니다</p>
							</div>
						</div>
					</div>
				</div>
			</div><!-- 
			
			----------------------- 오른쪽 구역 -----------------------------
					
		 --><div style="width:309px; padding-left: 35px; display:inline-block;     vertical-align:top;">
				
				
					<div style="width:309px; margin-top:14px; background-color:#dad5d5;" >
						<span>재료</span>
						<br>
					<c:forEach items="${myrecipeList}" var="myrecipe2">
							<div style="width:154px; float:left; " class="tt">${myrecipe2.ingredientName}</div>
							<div style="width:154px; float:left; " class="tt">${myrecipe2.ingredientQuantity}</div>
							
						</c:forEach>
							
					</div>
				
		<!-- 			<div style="width:309px; margin-top:14px; background-color:#dad5d5;" >
						<span>양념</span>
						<br>
				
					</div>
				 -->
		    </div>	
		</div>
	</div>
</form:form>
</body>
</html>	