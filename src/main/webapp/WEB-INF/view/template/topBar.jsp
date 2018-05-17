<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html >
<html lang="zxx" class="no-js">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="img/fav.png">
<meta name="author" content="codepixer">
<meta name="description" content="">
<meta name="keywords" content="">
<meta charset="UTF-8">
		
<title>SoloMong</title>
 
<link rel="stylesheet" href="static/main/css/linearicons.css">	
<link rel="stylesheet" href="static/main/css/font-awesome.min.css">
<link rel="stylesheet" href="static/main/css/bootstrap.css">
<link rel="stylesheet" href="static/main/css/magnific-popup.css">
<link rel="stylesheet" href="static/main/css/nice-select.css">					
<link rel="stylesheet" href="static/main/css/animate.min.css">
<link rel="stylesheet" href="static/main/css/owl.carousel.css">
<link rel="stylesheet" href="static/main/css/main.css">
</head>
	
<body>
	<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
<!-- 	<script src="static/js/vendor/jquery-2.2.4.min.js"></script> -->
	<script src="static/js/vendor/bootstrap.min.js"></script>			
	<script src="static/js/easing.min.js"></script>			
	<script src="static/js/hoverIntent.js"></script>
	<script src="static/js/superfish.min.js"></script>	
	<script src="static/js/jquery.ajaxchimp.min.js"></script>
	<script src="static/js/jquery.magnific-popup.min.js"></script>	
	<script src="static/js/owl.carousel.min.js"></script>			
	<script src="static/js/jquery.sticky.js"></script>
	<script src="static/js/jquery.nice-select.min.js"></script>			
	<script src="static/js/parallax.min.js"></script>	
	<script src="static/js/mail-script.js"></script>	
	<script src="static/js/main.js"></script>	

	<header id="header" id="home">
	<div class="container">
		<div class="row align-items-center justify-content-between d-flex">
			<div id="logo">
				<a href="/SoloMong/main"><img src="static/main/img/solo.PNG" alt="" title="" /></a>
			</div>
			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li class="menu-active"><a href="/">홈</a></li>
					<li><a href="<c:url value="/recipe"/>">레시피</a></li>
					<li><a href="#chefs">커뮤니티</a></li>
					<c:if test = "${empty sessionScope.__USER__}">
						<li><a href="/SoloMong/loginRegist">로그인/회원가입</a></li>
					</c:if>
					<c:if test = "${not empty sessionScope.__USER__}">
						<li class="menu-has-children"><a href="">회원정보</a>
							<ul>
								<li><a href="generic.html">냉장고</a></li>
								<li><a href="elements.html">마이페이지</a></li>
								<li><a href="elements.html">로그아웃</a></li>
							</ul>
						</li>
					</c:if>
				</ul>
			</nav><!-- #nav-menu-container -->		    		
		</div>
	</div>
	</header>
</body>
</html>