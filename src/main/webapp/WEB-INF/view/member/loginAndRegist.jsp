<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
<script type="text/javascript">

	$().ready(function(){
		$("#normalLoginBtn").click(function(){
			var invalid = false;
			
			if($("#memberId").val() == ""){
				$("#memberId").after("<div> 아이디를 입력하세요. </div>");
				invalid = true;
			}
			if($("#password").val() == ""){
				$("#password").after("<div> 비밀번호를 입력하세요. </div>");
				invalid = true;
			}
			
			if(invalid == false){
				$("#loginForm").attr({
					"method" : "post",
					"action" : "<c:url value='/login' />" 
				}).submit();
			}
		})
	});

</script>
</head>
<body>

	<div id="wrapper">
		<div>
			<form id="loginForm">
				<div>아이디 : <input type="text" name="memberId" id="memberId"></div>
				<div>비밀번호 : <input type="password" name="password" id="password"></div>
			</form>
		</div>
		<div><input type="button" id="normalLoginBtn" value="로그인"></div>
	</div>

</body>
</html>