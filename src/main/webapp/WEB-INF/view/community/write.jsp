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
		$("#writeBtn").click(function(){
			
			$("#writeBtn").attr({
				"method" : "post",
				"action" : "<c:url value="/write"/>"
			});
			
			writeForm.submit();
		});
	});
</script>
</head>
<body>
	<div  style="width:1000px; height:600px; margin:0 auto; border: 1px solid #dddddd; "  >
		<table class="table table-striped" >
				<thead>
					<tr>
						<th colspan="2" style="background-color: #f34a4a; text-align:center;">게시글 작성</th>
					</tr>
				</thead>
			<form:form modelAttribute="writeForm">
				<tbody> 
					<tr>
						<td><input type="text" name="title" class="form-control" placeholder="제목" maxlength="50" value="${communityVO.title}"/></td>
					</tr>
					<tr>
						<td><textarea name="body" class="form-control" placeholder="내용" maxlength="2000" style="height: 400px;">${communityVO.body}</textarea></td>
					</tr>
				</tbody>
			</form:form>
		</table>
			<input id="writeBtn" class="btn pull-right" type="button" value="글쓰기" style="background-color:#f34a4a; vertical-align:top;"/>
	</div> 
</body>
</html>