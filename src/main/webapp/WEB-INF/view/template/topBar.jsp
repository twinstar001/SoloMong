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
<link rel="stylesheet" href="/SoloMong/static/main/css/linearicons.css">	
<link rel="stylesheet" href="/SoloMong/static/main/css/font-awesome.min.css">
<link rel="stylesheet" href="/SoloMong/static/main/css/bootstrap.css">
<link rel="stylesheet" href="/SoloMong/static/main/css/magnific-popup.css">
<link rel="stylesheet" href="/SoloMong/static/main/css/nice-select.css">					
<link rel="stylesheet" href="/SoloMong/static/main/css/animate.min.css">
<link rel="stylesheet" href="/SoloMong/static/main/css/owl.carousel.css">
<link rel="stylesheet" href="/SoloMong/static/main/css/main.css">
<link rel="stylesheet" href="/SoloMong/static/loginRegist/css/loginRegist.css">
<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
<link rel="stylesheet" href="/SoloMong/static/loginRegist/css/loginRegist.css">
<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="720597646651-v2s49mjj7lrqjdf3f89k2fvlmdgam02h.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<script src="<c:url value="/static/js/jquery.session.js"/>" ></script>
<script src="/SoloMong/static/js/vendor/bootstrap.min.js"></script>			
<script src="/SoloMong/static/js/easing.min.js"></script>			
<script src="/SoloMong/static/js/hoverIntent.js"></script>
<script src="/SoloMong/static/js/superfish.min.js"></script>	
<script src="/SoloMong/static/js/jquery.ajaxchimp.min.js"></script>
<script src="/SoloMong/static/js/jquery.magnific-popup.min.js"></script>	
<script src="/SoloMong/static/js/owl.carousel.min.js"></script>			
<script src="/SoloMong/static/js/jquery.sticky.js"></script>
<script src="/SoloMong/static/js/jquery.nice-select.min.js"></script>			
<script src="/SoloMong/static/js/parallax.min.js"></script>	
<script src="/SoloMong/static/js/mail-script.js"></script>	
<script src="/SoloMong/static/js/main.js"></script>	
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
	/* $form_login.find('input[type="submit"]').on('click', function(event) {
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

	}); */

	$("#normalLoginBtn").click(function(){
		console.log("login button click");
		var invalid = false;
		
		if($("#userId").val() == ""){
			$form_login.find('input[type="text"]').toggleClass('has-error')
			   .next('span')
			   .toggleClass('is-visible');
			invalid = true;
		}
		if($("#password").val() == ""){
			$form_signup.find('input[type="password"]').toggleClass('has-error')
			.next('span')
			.toggleClass('is-visible');
			invalid = true;
		}
		if(invalid == false){
			console.log("valid check pass");
			$("#loginForm").attr({
				"method" : "post",
				"action" : "<c:url value='/normalLogin' />" 
			}).submit();
		}
		invalid = false;
	});
	
	/*	Start Sign Up	*/
	
	var uniqueInvalid = false;
	
	// id 중복 체크
	$("#signup-userId").keyup(function(){
		$.post("<c:url value='/api/isExist/userId'/>",{
			userId : $("#signup-userId").val()
		}, function(response){
			if(response.isExist){
				if($("#signup-userId").hasClass("invalidUnique")){
					return false;
				}
				$("#signup-userId").focus()
				$("#signup-userId").addClass("invalidUnique");
				$form_signup.find('input[id="signup-userId"]').addClass('has-error')
																.next('span')
																.next('span')
																.addClass('is-visible');
				uniqueInvalid = true;
				return false;
			}else {
				$form_signup.find('input[id="signup-userId"]').removeClass('has-error')
															.next('span')
															.next('span')
															.removeClass('is-visible');
				$("#signup-userId").removeClass("invalidUnique");
				$("#signup-userIdInvalidUniqueSpan").remove();
				uniqueInvalid = false;
			}
		})
	})
	
	// nickname 중복 체크
	$("#signup-nickanme").keyup(function(){
		$.post("<c:url value='/api/isExist/nickname'/>",{
			userId : $("#signup-nickname").val()
		}, function(response){
			if(response.isExist){
				if($("signup-nickname").hasClass("invalidUnique")){
					return false;
				}
				$("#signup-nickname").focuse()
				afterInvalidUnique("signup-nickname", "아이디");
				$("signup-nickname").addClass("invalidUnique");
				uniqueInvalid = true;
				return false;
			}else {
				$("#signup-nickname").removeClass("invalidUnique");
				$("#signup-nicknameInvalidUniqueSpan").remove();
				uniqueInvalid = false;
			}
		})
	})
	
	
	// TODO 비밀번호 체크 
	var passwordInvalid = false;
	
	$("#signup-password").keyup(function () {
		if ($("#signup-password").val() != $("#signup-password-check").val()) {
			if($("#signup-password").hasClass("invalidPassword")){
				return false;
			}
			$("#signup-password").addClass("invalidPassword");
			$("#signup-password-check").addClass("invalidPassword");
			$form_signup.find('input[id="signup-password"]').addClass('has-error')
														.next('span')
														.next('span')
														.addClass('is-visible');
			$form_signup.find('input[id="signup-password-check"]').addClass('has-error')
														.next('span')
														.next('span')
														.addClass('is-visible');
			passwordInvalid = true;
		} else {
			$("#signup-password").removeClass("invalidPassword");
			$("#signup-password-check").removeClass("invalidPassword");
			$form_signup.find('input[id="signup-password"]').removeClass('has-error')
														.next('span')
														.next('span')
														.removeClass('is-visible');
			$form_signup.find('input[id="signup-password-check"]').removeClass('has-error')
														.next('span')
														.next('span')
														.removeClass('is-visible');
			passwordInvalid = false;
		}
	});

	$("#signup-password-check").keyup(function () {
		if ($("#signup-password").val() != $("#signup-password-check").val()) {
			if($("#signup-password-check").hasClass("invalidPassword")){
				return false;
			}
			$("#signup-password").addClass("invalidPassword");
			$("#signup-password-check").addClass("invalidPassword");
			$form_signup.find('input[id="signup-password"]').addClass('has-error')
														.next('span')
														.next('span')
														.addClass('is-visible');
			$form_signup.find('input[id="signup-password-check"]').addClass('has-error')
														.next('span')
														.next('span')
														.addClass('is-visible');
			passwordInvalid = true;
		} else {
			$("#signup-password").removeClass("invalidPassword");
			$("#signup-password-check").removeClass("invalidPassword");
			$form_signup.find('input[id="signup-password"]').removeClass('has-error')
														.next('span')
														.next('span')
														.removeClass('is-visible');
			$form_signup.find('input[id="signup-password-check"]').toggleClass('has-error')
														.next('span')
														.next('span')
														.removeClass('is-visible');
			
			passwordInvalid = false;
		}
	}); 
	
	$("#signUpBtn").click(function(){
		console.log("click sign up btn")
		var value = $("#signup-userId").val()
		if($("#signup-userId").val() == ""){
			$form_signup.find('input[id="signup-userId"]').toggleClass('has-error')
															.next('span')
															.toggleClass('is-visible');
			return false;
		}
		if($("#signup-password").val() == ""){
			$form_signup.find('input[id="signup-password"]').toggleClass('has-error')
															.next('span')
															.toggleClass('is-visible');
			return false;
		}
		if($("#signup-password-check").val() == ""){
			$form_signup.find('input[id="signup-password-check"]').toggleClass('has-error')
															.next('span')
															.toggleClass('is-visible');
			return false;
		}
		if($("#signup-email").val() == ""){
			$form_signup.find('input[id="signup-email"]').toggleClass('has-error')
															.next('span')
															.toggleClass('is-visible');
			return false;
		}
		if($("#signup-nickname").val() == ""){
			$form_signup.find('input[id="signup-nickname"]').toggleClass('has-error')
															.next('span')
															.toggleClass('is-visible');
			return false;
		}
		if( passwordInvalid || uniqueInvalid){
			return false;
		}
		
		$("#signUpForm").attr({
			"method" : "post" ,
			"action" : "<c:url value='/signUp'/>"
		}).submit();
		
	})
	
	/* end Sign Up */
	
	/* Kakao Login */
	
	$("#kakao-login-btn").click(function(){
		loginWithKakao();
	})
		
	//사용할 앱의 JavaScript 키를 설정해 주세요.
	 Kakao.init('ded3361d7ed902be44f4d01f326b83af'); 

	var isSuccess;
	function loginWithKakao() {
	    // 로그인 창을 띄웁니다.
	    Kakao.Auth.login({
	      success: function(authObj) {
	    	  console.log(authObj);
	    	  Kakao.API.request({
	    		  url: '/v2/user/me',
	              success: function(res) {
	                $.post("<c:url value='/kakaoLogin'/>",{ res : JSON.stringify(res)} , function(response){
	                	console.log(response);
	                	isSuccess = response;
	                	if(isSuccess == "success"){
	                		console.log("here we are");
	                		$form_modal.removeClass('is-visible');
	                	$(location).attr('href', "<c:url value='/modalTest'/>");
	                	}
	                });
	              },
	              fail: function(error) {
	                alert(JSON.stringify(error));
	              }
	    	  })
	      },
	      fail: function(err) {
	        alert(JSON.stringify(err));
	      } 
	    });
	   
	}
	
	     
	 	$("#logout").click(function(){
	 		
	 		if(${not empty sessionScope.__USER__}){
	 			console.log("session not mepty");
	 			if(${sessionScope.__USER__.idType eq 2}){
	 				console.log("kakao Login");
	 				Kakao.Auth.logout();
	 			}
	 			if(${sessionScope.__USER__.idType eq 3}){
	 				console.log("google Login");
	 				
	 			}
	 			$(location).attr('href', "<c:url value='/logout'/>");
	 		}
	 	}); 
/* end Kakao Login */

    
});

</script>

	<header id="header" id="home">
	<div class="container">
		<div class="row align-items-center justify-content-between d-flex">
			<div id="logo">
				<a href="/SoloMong/modalTest"><img src="/SoloMong/static/main/img/solo.PNG" alt="솔로몽 로고" /></a>
			</div>
			<div style="left:0;">
				<c:if test="${not empty sessionScope.SOLO_LOCATION}">
					<img src='<c:url value="/static/main/img"/>/${sessionScope.SOLO_LOCATION.weather}.png' height="30px" width="30px" alt="${sessionScope.SOLO_LOCATION.weather}"/>
					 ${sessionScope.SOLO_LOCATION.location}
				</c:if>
			</div>
			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li class="menu-active"><a href="/SoloMong/modalTest">홈</a></li>
					<li><a href="<c:url value="myrecipe/write"/>">레시피</a></li>
					<li><a href="/SoloMong/community/list">커뮤니티</a></li>
					<c:if test = "${empty sessionScope.__USER__}">
						<li><a id="loginTag" href="#">로그인/회원가입</a></li>
					</c:if>
					<c:if test = "${not empty sessionScope.__USER__}">
						<li class="menu-has-children"><a href="#">회원정보</a>
							<ul>
								<li><a href="refrigerator">냉장고</a></li>
								<li><a href="myrecipe/write">마이페이지</a></li>
								<li><a id="logout" href="#">로그아웃</a></li>
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
				<form class="form" id="loginForm">
					<p class="fieldset">
						<label class="image-replace username" for="signin-email">User Id</label>
						<input class="full-width has-padding has-border" name="userId" id="userId" type="text" placeholder="User Id"> 
						<span class="error-message">아이디를 입력하세요!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace password" for="signin-password">Password</label>
						<input class="full-width has-padding has-border" name="password" id="password" type="password" placeholder="Password">
						<a class="hide-password">Show</a> 
						<span class="error-message">비밀번호를 입력하세요!</span>
					</p>

					<p class="fieldset">
						<input type="checkbox" id="remember-me" checked> 
						<label for="remember-me">Remember me</label>
					</p>

					<p class="fieldset">
						<input class="full-width" type="button" value="Login" id="normalLoginBtn">
						<img id="kakao-login-btn" class="full-width" alt="kakao-login-btn" src="<c:url value="/static/image/button-image/kakao_account_login_btn_medium_narrow.png"/>"
						 onmouseover="this.src='<c:url value="/static/image/button-image/kakao_account_login_btn_medium_narrow_ov.png"/>'"
						 onmouseout="this.src='<c:url value="/static/image/button-image/kakao_account_login_btn_medium_narrow.png"/>'">
					</p>
				</form>

				<!-- <p class="form-bottom-message">
					<a>Forgot your password?</a>
				</p> -->
			</div>

			<div id="signup">
				<form class="form" id="signUpForm">
					<p class="fieldset">
						<label class="image-replace username" for="signup-username">Username</label>
						<input class="full-width has-padding has-border" name="userId" id="signup-userId" type="text" placeholder="User Id">
						<span class="error-message">아이디를 입력하세요</span>
						<span class="error-message">아이디가 중복됩니다!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace password" for="signup-password">Password</label>
						<input class="full-width has-padding has-border" name="password"
							id="signup-password" type="password" placeholder="Password">
						<a  class="hide-password">Show</a> 
						<span class="error-message">비밀번호를 입력하세요!</span>
						<span class="error-message">비밀번호 확인과 일치하지 않습니다!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace password" for="signup-password">Password</label>
						<input class="full-width has-padding has-border" name="passwordCheck"
							id="signup-password-check" type="password" placeholder="Password Check">
						<a  class="hide-password">Show</a> 
						<span class="error-message">비밀번호 확인란을 입력하세요!</span>	
						<span class="error-message">비밀번호와 일치하지 않습니다!</span>
					</p>

					<p class="fieldset">
						<label class="image-replace email" for="signup-email">E-mail</label>
						<input class="full-width has-padding has-border" name="email" id="signup-email" type="email" placeholder="E-mail"> 
						<span class="error-message">이메일을 입력하세요!</span>
					</p>
					
					<p class="fieldset">
						<label class="image-replace email" for="signup-nickname">Nickname</label>
						<input class="full-width has-padding has-border" name="nickname" id="signup-nickname" type="text" placeholder="Nickname"> 
						<span class="error-message">닉네임을 입력하세요!</span>
					</p>

					<!-- <p class="fieldset">
						<input type="checkbox" id="accept-terms"> 
						<label for="accept-terms">I agree to the 
						<a class="accept-terms">Terms</a></label>
					</p> -->

					<p class="fieldset">
						<input class="full-width has-padding" type="button" id="signUpBtn" value="Create account">
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
