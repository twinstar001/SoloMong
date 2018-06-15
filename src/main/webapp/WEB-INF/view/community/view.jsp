<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
	.bbs {
		background-color: #f34a4a; text-align:center; border: 1px solid #dddddd; 
	}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="/WEB-INF/view/template/topBar.jsp"></jsp:include>
	<div  style="width:1000px; height:600px; margin:0 auto; border: 1px solid #dddddd; "  >
		<table class="table table-striped" >
				<thead>
					<tr>
						<th colspan="2" class="bbs">작성자  </th>
						<th colspan="2" class="bbs"> </th>
						<th colspan="2" class="bbs">추천수 </th>
						<th colspan="2" class="bbs">${community.recommendCount}</th>
					</tr>
					<tr>
						<th colspan="2" class="bbs">작성일 </th>
						<th colspan="2" class="bbs">${community.writeDate}</th>
						<th colspan="2" class="bbs">조회수 </th>
						<th colspan="2" class="bbs"> ${community.viewCount} </th>
					</tr>
					<tr>
						<th colspan="2" class="bbs">제목</th>
						<th colspan="5" class="bbs">${community.title} </th>
					</tr> 
				</thead>
			<form:form modelAttribute="writeForm">
				<tbody> 
				
					<tr>
						<td style="height: 400px;">${community.body}</td>
					</tr>
				</tbody> 
			</form:form>
		</table>
			<a href="<c:url value="/community/list"/>" type="button" class="btn" style="background-color:#f34a4a; ">목록보기</a>
			<a href="<c:url value="/community/modify/${community.id}"/>" type="button" class="btn" style="background-color:#f34a4a; ">수정하기</a>
			<a href="<c:url value="/community/delete/${community.id}"/>" type="button" class="btn" style="background-color:#f34a4a; ">삭제하기</a>
			<a href="<c:url value="/community/recommend/${community.id}"/>" type="button" class="btn" style="background-color:#f34a4a; ">추천하기</a>
	</div> 
</body>
</html>