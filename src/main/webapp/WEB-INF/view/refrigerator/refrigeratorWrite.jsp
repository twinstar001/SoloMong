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
				<option value="">����� Ÿ���� �������ּ���.</option>
				<option value="1">����</option>
				<option value="2">�ع���</option>
				<option value="3">�Ǿ��</option>
				<option value="4">���</option>
				<option value="5">��/�߰���</option>
				<option value="6">ä�ҷ�</option>
				<option value="7">������</option>
				<option value="8">�а���</option>
				<option value="9">������ǰ��</option>
				<option value="10">��</option>
				<option value="11">���Ϸ�</option>
				<option value="12">�ް�/����ǰ��</option>
				<option value="13">��Ÿ</option>
			</select>
		</div>
		<div>
			<label for="default">��Ḧ ������ �ּ���</label>
		 	<input type="text" id="default" list="ingredients" placeholder="ex)����">
			<datalist id="ingredients">
		    	<!-- ���⿡ DB���� ��� ������ �ҷ��ð� -->
		 	</datalist>
		</div>
		<div>
			�������<input type="date" />
		</div>
	</form:form>
</body>
</html>