<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
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
		var num= 2;
/* 		
	var recipeDiv2 = $("<div>" 
	+"<div style='width:170px; display:inline-block; vertical-align:top;'>"
	+"<div style='font-size:20pt; padding:12px;'>"
	+" Step1  "
	+"</div>"
	+"</div><!-- "
	+"--><div style='width:600px; height:160px;  display:inline-block;'>"
	+"	 <div style='display:inline-block;'>"
	+"	<textarea style='height:150px; width:430px; ' name='ingredient' class='form-control' placeholder='이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다.' value=''></textarea>"
	+"</div><!--"  
	+"--><div style='width:150px; height:150px; display:inline-block; vertical-align:top; '>"
	+"	<img src='http://recipe.ezmember.co.kr/img/pic_none4.gif' style='border: 1px solid #dddddd; width:150px; height:150px; '/>"
	+"</div>"
	+"</div>"
	+"</div>");	
	  */
		$("#writeBtn").click(function(){
			
			$("#writeForm").attr({
				"method" : "post",
				"action" : "<c:url value="/myrecipe/write"/>"
			});
			
			writeForm.submit();
		});
		
	    $("#plusBtn").click(function(){
	        $(".append").append("<div style='margin:10px;'>" 
			+ "<input style='height:50px; width:240px; display:inline-block;' type='text' name='ingredientName' class='form-control' placeholder='예) 돼지고기' value='${myrecipeVO.ingredientName}'><!-- " 
			+ " -->  <input style='margin-left:5px; height:50px; width:240px; display:inline-block;' type='text' name='ingredientQuantity' class='form-control' placeholder='예) 300g' value='${myrecipeVO.ingredientQuantity}'>"
		+ "</div>");
	    });
	    
	    
	    
	    $("#plusBtn2").click(function(){
	        $(".recipeDiv").append("<div>" 
	        		+"<div style='width:170px; display:inline-block; vertical-align:top;'>"
	        		+"<div style='font-size:20pt; padding:12px;'>"
	        		+" Step  " + num 
	        		+"</div>"
	        		+"</div><!-- "
	        		+"--><div style='width:600px; height:160px;  display:inline-block;'>"
	        		+"	 <div style='display:inline-block;'>"
	        		+"	<textarea style='height:150px; width:430px; ' name='step' class='form-control' placeholder='이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다.' value=''></textarea>"
	        		+"</div><!--"  
	        		+"--><div style='width:150px; height:150px; display:inline-block; vertical-align:top; '>"
	        		+"	<img src='http://recipe.ezmember.co.kr/img/pic_none4.gif' style='border: 1px solid #dddddd; width:150px; height:150px; '/>"
	        		+"</div>"
	        		+"</div>"
	        		+"</div>");
	    num=num+1;
	    }); 
	    
	   
			<c:if test="$not empty myrecipeVO.displayFilename}">
			$("#file").closest("div").hide();
			</c:if>		
		
		
		// 클릭 됐는지 여부
		$("#displayFilename").change(function(){
			var isChecked = $(this).prop("checked");
			if (isChecked){
					$("label[for=displayFilename]").css({
						"text-decoration-line": "line-through",
						"text-decoration-style": "double",
						"text-decoration-color": "#FF0000"
					});
					$("#file").closest("div").show();
			}
			else {
				$("label[for=displayFilename]").css({
					"text-decoration": "none"
				});
					$("#file").closest("div").hide();
			}
		});
		
	});

</script>
</head>
<body>
	<form:form modelAttribute="writeForm" enctype="multipart/form-data">
	<div  style="width:1000px; margin:0 auto; border: 1px solid #dddddd;">
		<div style="width:170px; display:inline-block; vertical-align:top;">
				<div style="font-size:20pt; padding:12px;">
					레시피제목
				</div>
				<div style="font-size:20pt; padding:18px;">
					요리 소개
				</div>
				<div style="font-size:20pt; padding:14px;">
					재료 
				</div>
		</div><!-- 
	 --><div style="width:550px; display:inline-block;">
			<div>
				<input style="height:50px; width:500px; margin:10px;" type="text" name="title" class="form-control" placeholder="예) 소고기 미역국 끓이기" >
			</div> 
			 <div >
				<textarea style="height:80px; width:500px; margin:10px;" name="introduction" class="form-control" placeholder="이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다." ></textarea>
			</div>
			<div>
					<div class="append"> 
						<div style="margin: 10px;">
							<input style="height:50px; width:240px; display:inline-block;" type="text" name="ingredientName" class="form-control" placeholder="예) 돼지고기" ><!-- 
							 -->
							 <input style="margin-left:5px; height:50px; width:240px; display:inline-block;" type="text" name="ingredientQuantity" class="form-control" placeholder="예) 300g" >
						</div>
						<div style="margin: 10px;">
							<input style="height:50px; width:240px; display:inline-block;" type="text" name="ingredientName" class="form-control" placeholder="예) 양배추" ><!-- 
							 -->
							 <input style="margin-left:5px; height:50px; width:240px; display:inline-block;" type="text" name="ingredientQuantity" class="form-control" placeholder="예) 1/2개" >
						</div>
						<div style="margin: 10px;">
							<input style="height:50px; width:240px; display:inline-block;" type="text" name="ingredientName" class="form-control" placeholder="예) 참기름" ><!-- 
							 -->
							 <input style="margin-left:5px; height:50px; width:240px; display:inline-block;" type="text" name="ingredientQuantity" class="form-control" placeholder="예) 1T" >
						</div>
					</div>
			</div>	 
			<div>
				<span style="margin-left: 230px;" id="plusBtn"  class="glyphicon glyphicon-plus-sign">추가</span>
			</div>
			
		</div><!--
   	--><div style="width:250px; height:250px; display:inline-block; vertical-align:top; ">
			<!-- 
			<img src="http://recipe.ezmember.co.kr/img/pic_none4.gif" style="border: 1px solid #dddddd;"/>
			 -->
			<%--  
			<div>
				<input	type="checkbox"
						id="displayFilename"
						name="image"
						value="${myrecipeVO.image}"/>
				<label for="image">
					${myrecipeVO.image}
				</label>
			</div>	
			 --%>		
			<input type="file" id="file" name="file" style="width:250px; height:250px; "/>
		</div>
	</div> 
	<div  style="width:1000px; margin:0 auto; border: 1px solid #dddddd;">
		<div style="font-size:20pt; padding:12px;">
			요리 순서
		</div>
		<div style="margin-left:12px;">
			<b>요리의 맛이 좌우될 수 있는 중요한 부분은 빠짐없이 적어주세요.</b><br>
				예) 10분간 익혀주세요 ▷ 10분간 약한불로 익혀주세요.<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;마늘편은 익혀주세요 ▷ 마늘편을 충분히 익혀주셔야 매운 맛이 사라집니다.<br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;꿀을 조금 넣어주세요 ▷ 꿀이 없는 경우, 설탕 1스푼으로 대체 가능합니다.
		</div>
		<div style="width:850px; ">
			<div class="recipeDiv" >	
				<div>
				<div style="width:170px; display:inline-block; vertical-align:top;">
					<div style="font-size:20pt; padding:12px;">
						Step1 
					</div>
				</div><!-- 
			 --><div style="width:600px; height:160px;  display:inline-block;">
			 
				 	 <div style="display:inline-block;">
				 	 
						<textarea style="height:150px; width:430px; " name="step" class="form-control" placeholder="이 레시피의 탄생배경을 적어주세요. 예) 남편의 생일을 맞아 소고기 미역국을 끓여봤어요. 어머니로부터 배운 미역국 레시피를 남편의 입맛에 맞게 고안했습니다." ></textarea>
					
					</div><!--  
				 --><div style="width:150px; height:150px; display:inline-block; vertical-align:top; ">
						<img src="http://recipe.ezmember.co.kr/img/pic_none4.gif" style="border: 1px solid #dddddd; width:150px; height:150px; "/>
					</div>
				</div>
				</div>
			</div>
			<div style="margin-left:400px;">
				<span id="plusBtn2"  class="glyphicon glyphicon-plus-sign">순서추가</span>
			</div>
		</div>
		
		<div style="width:850px; ">
			<div style="width:170px; display:inline-block; vertical-align:top;">
				<div style="font-size:20pt; padding:18px;">
					요리팁
				</div>
			</div>
		<div style="width:550px; display:inline-block;">
		
				 <div >
					<textarea style="height:80px; width:500px;" name="tip" class="form-control" placeholder="예) 고기요리에는 소금보다 설탕을 먼저 넣어야 단맛이 겉돌지 않고 육질이 부드러워요." ></textarea>
				</div>
			</div>
			<div style="margin-left: 350px;">
				<input id="writeBtn" type="button" value="등록하기" style="background-color:#f34a4a; vertical-align:top;"/>
			</div>
		</div>
		
	</div>
	</form:form>
</body>
</html>