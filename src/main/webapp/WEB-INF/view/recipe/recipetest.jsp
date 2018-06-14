<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

		<h1>${recipe.title}</h1>
		<p>${recipe.writeDate} / ${recipe.userId} </p>
		<p>
			<p> 난이도 : ${recipe.level}</p>
			<p> 조리시간 : ${recipe.time}</p>
			<p> 인분 : ${recipe.people}</p>
		</p>
		<c:forEach items="${recipe.body}" var="body" varStatus="status">
			<p>${recipe.bodyImg[status.index]}</p>
			<span>Step : </span><span>${body}</span>
		</c:forEach>
		
		<c:forEach items="${recipe.slideImg}" var="slideImg" >
			<p>${slideImg}</p>
		</c:forEach>
		
		

</body>
</html>