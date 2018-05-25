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

	function loginWithKakao() {
	    // 로그인 창을 띄웁니다.
	    Kakao.Auth.login({
	      success: function(authObj) {
	    	  console.log(authObj);
	    	  $(location).attr('href',"<c:url value='/kakaoLogin'/>");
	      },
	      fail: function(err) {
	        alert(JSON.stringify(err));
	      } 
	    });
	   
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
