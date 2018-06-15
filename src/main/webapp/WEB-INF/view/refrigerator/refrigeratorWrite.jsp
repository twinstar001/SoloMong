<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
<script type="text/javascript">

	$().ready(function(){
		
		function appendIng(ing){
			$("#ingredients").append("<option value="+ing+">")
		}
		
		$("#ingredientType").change(function(){
			var ingType = $("#ingredientType").val();
			if(ingType != ""){
				$.post("<c:url value="/api/get/ingredients"/>",{
					type:ingType
				},function(ingredients){
					console.log(ingredients);
					$("#ingredients").children("option").remove();
					<c:forEach items="ingredients" var="ing">
						appendIng(${ing});
					</c:forEach>
				});
			}
		});
		
		
		$("#refrigeratorBtn").click(function(){
			var value = $("#ingredient").val();		
			if(value != ""){
				$.post("<c:url value="/api/exists/ingredient"/>", {
					name:value
				},function(response){
					console.log(response.response);
					console.log(value);
					if(response.response){
						var name = $("#ingredient").val();		
						var date = $("#exdate").val();
						window.opener.sendForm(name, date);
						
						self.close();
		
					}
					else{
						alert("올바르지 않은 재료 이름입니다. 주어진 목록에서 선택해주세요.");
					}
				});
			}
			else{
				alert("재료는 반드시 입력해야 합니다.");
			}
		});
	});

</script>
</head>
<body>
	<form:form modelAttribute="refrigeratorForm">
		<div>
			<select name="ingredientType" id="ingredientType">
				<option value="">재료의 타입을 선택해주세요.</option>
				<option value="1">육류</option>
				<option value="2">해물류</option>
				<option value="3">건어물류</option>
				<option value="4">곡류</option>
				<option value="5">콩/견과류</option>
				<option value="6">채소류</option>
				<option value="7">버섯류</option>
				<option value="8">밀가루</option>
				<option value="9">가공식품류</option>
				<option value="10">쌀</option>
				<option value="11">과일류</option>
				<option value="12">달걀/유제품류</option>
				<option value="13">기타</option>
			</select>
		</div>
		<div>
			<label for="default">재료를 선택해 주세요</label>
		 	<input id="ingredient" list="ingredients" name="ingredientName" placeholder="ex)감자">
			<datalist id="ingredients">
		 	</datalist>
		</div>
		<div>
			유통기한<input type="date" name="refrigeratorExpirationDate" id="exdate"/>
		</div>
		<div><input type="button" value="추가" id="refrigeratorBtn"></div>
	</form:form>
</body>
</html>