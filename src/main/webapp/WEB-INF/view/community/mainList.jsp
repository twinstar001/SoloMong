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

</head>
<body>
	<div  style="width:500px; height:200px; margin:0 auto; border: 1px solid #dddddd; "  >
		<table class="table table-striped" >
				<thead>
					<tr>
						<th style="width:50px; background-color: #f34a4a; text-align:center;">번호</th>
						<th style="background-color: #f34a4a; text-align:center;">제목</th>
						<th style="width:100px; background-color: #f34a4a; text-align:center;">작성자</th>
						<th style="width:150px; background-color: #f34a4a; text-align:center;">작성일</th>
						<th style="width:80px; background-color: #f34a4a; text-align:center;">조회</th>
						
					</tr>
				</thead>
			<form:form modelAttribute="writeForm">
				<tbody> 
					<c:forEach items="${communityList}" var="community">
						<tr>
							<th style="text-align:center;">${community.id}</th>
							<th style="text-align:center;"><a href="<c:url value="/community/read/${community.id}"/>">${community.title}</a></th>
							<td style="text-align:center;">${community.id}</td>
							<td style="text-align:center;">${community.writeDate}</td>
							<td style="text-align:center;">${community.viewCount}</td>
						</tr>
					</c:forEach>
				</tbody>
			</form:form>
		</table>
			<a href="<c:url value="/community/write"/>" type="button" class="btn pull-right" style="background-color:#f34a4a; ">글쓰기</a>
	</div> 
</body>
</html>