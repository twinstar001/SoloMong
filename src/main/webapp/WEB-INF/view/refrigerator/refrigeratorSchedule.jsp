<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RefrigeratorSchedule</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/static/fullcalendar-3.9.0/fullcalendar.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/static/fullcalendar-3.9.0/fullcalendar.min.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/static/fullcalendar-3.9.0/fullcalendar.min.css"/>"/>
<jsp:include page="/WEB-INF/view/template/topBar.jsp"></jsp:include>
<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/static/fullcalendar-3.9.0/lib/moment.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/static/fullcalendar-3.9.0/fullcalendar.min.js"/>"></script>
<script type="text/javascript">
	

	$().ready(function(){
		
		$('#calendar').fullCalendar({

			events: [
				
			    <c:forEach items="${refriList}" var="refri" varStatus="status">
			    {
			    	title	: "${refri.ingredientName}",
			    	start	: "${refri.refrigeratorRegistDate}",
			    	end		: "${refri.refrigeratorUseByDate}",
			    	url		: "<c:url value="/refrigerator/delete/${refri.refrigeratorId}"/>"
			    }
			    <c:if test="${!status.last}">
			    ,
			    </c:if>
			    </c:forEach>
			  ],
			  
			  eventClick: function(event){
				  var deleteCon = confirm("삭제하시겠습니까?");
				  if(deleteCon == true){
					  window.open(event.url, _self)
				  }
			  }
		
		});
		
		$("#add").click(function(){
			window.open("<c:url value="/refrigerator/write"/>"
	    			  , "재료 추가"
	    			  , "width=500, height:500, scrollbar=no, resizable=no");
		});
	
	});
	function sendForm(name, date){
		
		location.href = "/SoloMong/refrigerator/writing/"+name+"/"+date;
	}
</script>
</head>
<body>

	<div id="calendar"></div>
	<div id="add">추가하기</div>

</body>
</html>