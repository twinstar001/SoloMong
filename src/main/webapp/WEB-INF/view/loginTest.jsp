<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="static/loginRegist/css/loginRegist.css">

<title>Insert title here</title>
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
		console.log($(event.target));
						if ( $(event.target).is($main_nav) ) {
							// on mobile open the submenu
							console.log("open this event");
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
</head>

<body>

	<div style="text-align:center; margin-left: 20px; margin-top:25%;">
		<a href="/SoloMong/main"><img src="static/main/img/solo.PNG" alt="" title="" /></a>
	</div>
	
	<nav class="main-nav">
		<ul>
			<li><a class="signin">Sign in</a></li>
			<li><a class="signup">Sign up</a></li>
		</ul>
	</nav>

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