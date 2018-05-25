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
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 <script type="text/javascript"
	src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
	
	
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
			$main_nav = $('.main-nav');

	//open modal
	$main_nav.on('click', function(event) {
						if ( $(event.target).is($main_nav) ) {
							// on mobile open the submenu
							$(this).children('ul').toggleClass('is-visible');
						} else {
							// on mobile close submenu
							$main_nav.children('ul').removeClass('is-visible');
							//show modal layer
							$form_modal.addClass('is-visible');
							//show the selected form
							( $(event.target).is('.signup')) ? signup_selected() : login_selected();
						}
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
	$form_signup.find('input[type="submit"]').on(
			'click',function(event) {
				event.preventDefault();
				$form_signup.find('input[type="email"]').toggleClass('has-error')
														.next('span')
														.toggleClass('is-visible');

			});
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
<!-- 	<script src="static/js/vendor/jquery-2.2.4.min.js"></script> -->
	<script src="static/js/vendor/bootstrap.min.js"></script>			
	<script src="static/js/vendor/bootstrap.js"></script>			
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
			<nav class="main-nav" style="margin-left:1250px;"> 
				<ul class="nav-menu">
					<li><a class="signin">로그인/회원가입</a></li>
				</ul>
			</nav><!-- #nav-menu-container -->		    		
	</header>
	
	<div style="height:100px;">
		<div class="container">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="/SoloMong/main"><img src="static/main/img/solo.PNG" alt="" title="" /></a>
				</div>
				<nav class="main-nav">
					<ul  style="margin-right: 500px;">
						<li><a href="/">홈</a></li>
						<li><a href="<c:url value="/list"/>">커뮤니티</a></li>
						<li><a href="<c:url value="/list"/>">레시피</a></li>
						<li><a href="<c:url value="/list"/>">커뮤니티</a></li>
					 	<li><a class="signin">로그인/회원가입</a></li>
						
						<c:if test = "${empty sessionScope.__USER__}">
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
				</nav>
			</div>
		</div>
	</div>

	
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

</body>
</html>



