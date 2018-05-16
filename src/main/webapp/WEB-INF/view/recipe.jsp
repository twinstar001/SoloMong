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
	<script src="static/js/vendor/jquery-2.2.4.min.js"></script>
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
				<a href="/SoloMong/main"><img src="static/main/img/logo.png" alt="" title="" /></a>
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

			<!-- start banner Area -->
	<section class="banner-area relative" id="home">
		<div class="container">
			<div class="row fullscreen d-flex align-items-center justify-content-start">
				<div class="banner-content col-lg-8 col-md-12">
					<h4 class="text-white text-uppercase">Wide Options of Choice</h4>
					<h1>
						Delicious Receipes					
					</h1>
					<p class="text-white">
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod temp <br> or incididunt ut labore et dolore magna aliqua. Ut enim ad minim.
					</p>
					<a href="#" class="primary-btn header-btn text-uppercase">Check Our Menu</a>
				</div>												
			</div>
		</div>
	</section>
			<!-- End banner Area -->	

			<!-- Start top-dish Area -->
	
				
	<!-- start footer Area -->		
	<footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h4 class="text-white">About Us</h4>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.
						</p>
					</div>
				</div>
				<div class="col-lg-4  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h4 class="text-white">Contact Us</h4>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.
						</p>
						<p class="number">
							012-6532-568-9746 <br>
							012-6532-569-9748
						</p>
					</div>
				</div>						
				<div class="col-lg-5  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h4 class="text-white">Newsletter</h4>
						<p>You can trust us. we only send  offers, not a single spam.</p>
						<div class="d-flex flex-row" id="mc_embed_signup">
					  		<form class="navbar-form" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get">
							    <div class="input-group add-on">
						      		<input class="form-control" name="EMAIL" placeholder="Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" required="" type="email">
										<div style="position: absolute; left: -5000px;">
												<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
										</div>
						      			<div class="input-group-btn">
								    	    <button class="genric-btn"><span class="lnr lnr-arrow-right"></span></button>
										</div>
							    </div>
				      			<div class="info mt-20"></div>									    
					  		</form>
						</div>
					</div>
				</div>						
			</div>
			<div class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			<p class="footer-text m-0">Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				<div class="footer-social d-flex align-items-center">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-dribbble"></i></a>
					<a href="#"><i class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>	
</body>
</html>



