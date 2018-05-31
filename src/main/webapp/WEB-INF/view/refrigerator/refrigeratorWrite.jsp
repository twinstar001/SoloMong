<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="refrigeratorForm">
		<div>
			<select name="ingredientType">
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
		 	<input type="text" id="default" list="ingredients" placeholder="ex)감자">
			<datalist id="ingredients">
		    	<!-- 여기에 DB에서 재료 데이터 불러올것 -->
		 	</datalist>
		</div>
		<div>
			유통기한<input type="date" />
		</div>
	</form:form>
</body>
</html>