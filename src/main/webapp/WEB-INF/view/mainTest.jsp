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
<link rel="stylesheet" href="static/loginRegist/css/loginRegist.css">
		
<title>SoloMong</title>
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
	<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
$().ready( function() {
	var $form_modal = $('.user-modal'), 
		$form_login = $form_modal.find('#login'), 
		$form_signup = $form_modal.find('#signup'), 
		$form_forgot_password = $form_modal.find('#reset-password'), 
		$form_modal_tab = $('.switcher'), 
		$tab_login = $form_modal_tab.children('li').eq(0).children('a'), 
		$tab_signup = $form_modal_tab.children('li').eq(1).children('a'), 
		$forgot_password_link = $form_login.find('.form-bottom-message a'), 
		$back_to_login_link = $form_forgot_password.find('.form-bottom-message a'), 
		$main_nav = $('#loginTag');

	//open modal
	$main_nav.on('click', function(event) {
		// on mobile close submenu
		$main_nav.children('ul').removeClass('is-visible');
		//show modal layer
		$form_modal.addClass('is-visible');
		//show the selected form
		( $(event.target).is('.signup')) ? signup_selected() : login_selected();
	});


	//close modal
	$('.user-modal').on('click', function(event) {
		if ( $(event.target).is($form_modal) || $(event.target).is('.close-form') ) {
			$form_modal.removeClass('is-visible');
		}
	});
			

	//close modal when clicking the esc keyboard button
	$(document).keyup(function(event) {
		if (event.which == '27') {
			$form_modal.removeClass('is-visible');
		}
	});

	//switch from a tab to another
	$form_modal_tab.on('click', function(event) {
		event.preventDefault();
		( $(event.target).is($tab_login) ) ? login_selected() : signup_selected();
	});

	//hide or show password
	$('.hide-password').on('click',	function() {
		var $this = $(this), $password_field = $this.prev('input');
		('password' == $password_field.attr('type')) ? $password_field.attr('type', 'text') : $password_field.attr('type', 'password');
		('Show' == $this.text()) ? $this.text('Hide') : $this.text('Show');
		//focus and move cursor to the end of input field
		$password_field.putCursorAtEnd();
	});

	//show forgot-password form 
	$forgot_password_link.on('click', function(event) {
		event.preventDefault();
		forgot_password_selected();
	});
	
	//back to login from the forgot-password form
	$back_to_login_link.on('click', function(event) {
		event.preventDefault();
		login_selected();
	});
	
	function login_selected() {
		$form_login.addClass('is-selected');
		$form_signup.removeClass('is-selected');
		$form_forgot_password.removeClass('is-selected');
		$tab_login.addClass('selected');
		$tab_signup.removeClass('selected');
	}
	
	function signup_selected() {
		$form_login.removeClass('is-selected');
		$form_signup.addClass('is-selected');
		$form_forgot_password.removeClass('is-selected');
		$tab_login.removeClass('selected');
		$tab_signup.addClass('selected');
	}
	
	function forgot_password_selected() {
		$form_login.removeClass('is-selected');
		$form_signup.removeClass('is-selected');
		$form_forgot_password.addClass('is-selected');
	}

	//REMOVE THIS - it's just to show error messages 
	$form_login.find('input[type="submit"]').on('click', function(event) {
		event.preventDefault();
		$form_login.find('input[type="email"]').toggleClass('has-error')
											   .next('span')
											   .toggleClass('is-visible');
	});
	$form_signup.find('input[type="submit"]').on('click',function(event) {
			event.preventDefault();
			$form_signup.find('input[type="email"]').toggleClass('has-error')
													.next('span')
													.toggleClass('is-visible');

	});
		
	$("#kakao-login-btn").click(function(){
		loginWithKakao();
	})
		
//사용할 앱의 JavaScript 키를 설정해 주세요.
 Kakao.init('801fb68ee415f57ecbb8729f5d28e707'); 
/* 
Kakao.API.request({
	url : '/v1/user/me',
	success:function(res){
		console.log("good");
		console.log(res);
	},
	fail : function(err){
		console.log("fail");
		console.log(JSON.stringify(err));
	}
}) */
// 카카오 로그인 버튼을 생성합니다.


function loginWithKakao() {
    /* // 로그인 창을 띄웁니다.
    Kakao.Auth.login({
      success: function(authObj) {
        alert(JSON.stringify(authObj));
      },
      fail: function(err) {
        alert(JSON.stringify(err));
      } 
    }); */
    $(location).attr('href',"<c:url value='/kakaoTest'/>")
}

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
						<li><a id="loginTag" href="#">로그인/회원가입</a></li>
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
	
	<!-- start Login modal Area -->
	<div class="user-modal">
		<div class="user-modal-container">
			<ul class="switcher">
				<li><a>Sign in</a></li>
				<li><a>New account</a></li>	
			</ul>

			<div id="login">
				<form class="form">
					<p class="fieldset">
						<label class="image-replace email" for="signin-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signin-email" type="email" placeholder="E-mail"> 
						<span class="error-message">
							An account with this email address does not exist!
						</span>
					</p>

					<p class="fieldset">
						<label class="image-replace password" for="signin-password">Password</label>
						<input class="full-width has-padding has-border" id="signin-password" type="password" placeholder="Password">
						<a class="hide-password">Show</a> 
						<span class="error-message">Wrong password! Try again.</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked> 
						<label for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						<input class="full-width" type="submit" value="Login">
						<img id="kakao-login-btn" class="full-width" alt="kakao-login-btn" src="<c:url value="/static/image/button-image/kakao_account_login_btn_medium_narrow.png"/>"
						 onmouseover="this.src='<c:url value="/static/image/button-image/kakao_account_login_btn_medium_narrow_ov.png"/>'"
						 onmouseout="this.src='<c:url value="/static/image/button-image/kakao_account_login_btn_medium_narrow.png"/>'">
					</p>
				</form>

				<p class="form-bottom-message">
					<a>Forgot your password?</a>
				</p>
			</div>

			<div id="signup">
				<form class="form">
					<p class="fieldset">
						<label class="image-replace username" for="signup-username">Username</label>
						<input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username">
						<span class="error-message">Your username can only contain	numeric and alphabetic symbols!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace email" for="signup-email">E-mail</label>
						<input class="full-width has-padding has-border" id="signup-email" type="email" placeholder="E-mail"> 
						<span class="error-message">Enter a valid email address!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace password" for="signup-password">Password</label>
						<input class="full-width has-padding has-border"
							id="signup-password" type="password" placeholder="Password">
						<a  class="hide-password">Show</a> 
						<span class="error-message">Your password has to be at least 6 characters long!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace password" for="signup-password">Password</label>
						<input class="full-width has-padding has-border"
							id="signup-password-check" type="password" placeholder="Password Check">
						<a  class="hide-password">Show</a> 
						<span class="error-message">Your password has to be at least 6 characters long!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="accept-terms"> 
						<label for="accept-terms">I agree to the 
						<a class="accept-terms">Terms</a></label>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Create account">
					</p>
				</form>

			</div>

			<div id="reset-password">
				<p class="form-message">
					Lost your password? Please enter your email address.</br> 
					You will receive a link to create a new password.
				</p>

				<form class="form">
					<p class="fieldset">
						<label class="image-replace email" for="reset-email">E-mail</label>
						<input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail"> 
						<span class="error-message">An account with this email does not exist!</span>
					</p>

					<p class="fieldset">
						<input class="full-width has-padding" type="submit" value="Reset password">
					</p>
				</form>
				<p class="form-bottom-message">
					<a >Back to log-in</a>
				</p>
			</div>
		</div>
	</div>
	<!-- end Login modal Area -->

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
	<section class="top-dish-area section-gap" id="dish">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-60 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">Our Top Rated Dishes</h1>
						<p>Who are in extremely love with eco friendly system.</p>
					</div>
				</div>
			</div>						
			<div class="row">
				<div class="single-dish col-lg-4">
					<div class="thumb">
						<img class="img-fluid"  src="static/main/img/d1.jpg" alt="">
					</div>
					<h4 class="text-uppercase pt-20 pb-20">Bread Fruit Cheese Sandwich</h4>
					<p>
						inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
					</p>
				</div>
				<div class="single-dish col-lg-4">
					<div class="thumb">
						<img class="img-fluid"  src="static/main/img/d2.jpg" alt="">
					</div>
					<h4 class="text-uppercase pt-20 pb-20">Beef Cutlet with Spring Onion</h4>
					<p>
						inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
					</p>
				</div>
				<div class="single-dish col-lg-4">
					<div class="thumb">
						<img class="img-fluid"  src="static/main/img/d3.jpg" alt="">
					</div>
					<h4 class="text-uppercase pt-20 pb-20">Meat with sauce & Vegetables</h4>
					<p>
						inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct women face higher conduct.
					</p>
				</div>												
			</div>
		</div>	
	</section>
			
	<!-- Start video Area -->
	<section class="video-area">
		<div class="container">
			<div class="row justify-content-center align-items-center flex-column">
				<a class="play-btn" href="http://www.youtube.com/watch?v=0O2aH4XLbto">
					<img src="static/main/img/play-btn.png" alt="">
				</a>
				<h3 class="pt-20 pb-20 text-white">We Always serve the vaping hot and delicious foods</h3>
				<p class="text-white">Youtube video will appear in popover</p>
			</div>
		</div>	
	</section>
	<!-- End video Area -->
			

	<!-- start blog Area -->		
	<section class="blog-area section-gap" id="blog">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-70 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">Latest From Our Blog</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua.</p>
					</div>
				</div>
			</div>					
			<div class="row">
				<div class="col-lg-3 col-md-6 single-blog">
					<div class="thumb">
						<img class="img-fluid" src="static/main/img/b1.jpg" alt="">
					</div>
					<p class="date">10 Jan 2018</p>
					<a href="#">
						<h4>Cooking Perfect Fried Rice in minutes</h4>
					</a>
					<p>
						inappropriate behavior ipsum dolor sit amet, consectetur.
					</p>
					<div class="meta-bottom d-flex justify-content-between">
						<p><span class="lnr lnr-heart"></span> 15 Likes</p>
						<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
					</div>									
				</div>
				<div class="col-lg-3 col-md-6 single-blog">
					<div class="thumb">
						<img class="img-fluid" src="static/main/img/b2.jpg" alt="">
					</div>
					<p class="date">10 Jan 2018</p>
					<a href="#">
						<h4>Secret of making Heart Shaped eggs</h4>
					</a>
					<p>
						inappropriate behavior ipsum dolor sit amet, consectetur.
					</p>
					<div class="meta-bottom d-flex justify-content-between">
						<p><span class="lnr lnr-heart"></span> 15 Likes</p>
						<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
					</div>									
				</div>
				<div class="col-lg-3 col-md-6 single-blog">
					<div class="thumb">
						<img class="img-fluid" src="static/main/img/b3.jpg" alt="">
					</div>
					<p class="date">10 Jan 2018</p>
					<a href="#">
						<h4>How to check steak if it is tender or not</h4><
					/a>
					<p>
						inappropriate behavior ipsum dolor sit amet, consectetur.
					</p>
					<div class="meta-bottom d-flex justify-content-between">
						<p><span class="lnr lnr-heart"></span> 15 Likes</p>
						<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
					</div>									
				</div>
				<div class="col-lg-3 col-md-6 single-blog">										
			</div>
		</div>	
	</section>
	<!-- end blog Area -->	
				
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



