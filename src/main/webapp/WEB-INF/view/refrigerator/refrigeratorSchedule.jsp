<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>RefrigeratorSchedule</title>
<link rel="stylesheet" type="text/css" href="<c:url value="/static/fullcalendar-3.9.0/fullcalendar.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/static/fullcalendar-3.9.0/fullcalendar.min.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/static/fullcalendar-3.9.0/fullcalendar.min.css"/>"/>

<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/static/fullcalendar-3.9.0/lib/moment.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/static/fullcalendar-3.9.0/fullcalendar.min.js"/>"></script>
<script type="text/javascript">
	$().ready(function(){
		$('#calendar').fullCalendar({

			events: [
				
			    {
			      title  : 'event1',
			      start  : '2018-05-01'
			    },
			    {
			      title  : 'event2',
			      start  : '2018-05-05',
			      end    : '2018-05-07'
			    },
			    {
			      title  : 'event3',
			      start  : '2018-05-09'
			    }
			  ]
		});
		
	});
</script>
</head>
<body>

	<div id="calendar"></div>

</body>
</html>