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
	

<link rel="stylesheet" href="static/main/css/linearicons.css">	
<link rel="stylesheet" href="static/main/css/font-awesome.min.css">
<link rel="stylesheet" href="static/main/css/bootstrap.css">
<link rel="stylesheet" href="static/main/css/magnific-popup.css">
<link rel="stylesheet" href="static/main/css/nice-select.css">					
<link rel="stylesheet" href="static/main/css/animate.min.css">
<link rel="stylesheet" href="static/main/css/owl.carousel.css">
<link rel="stylesheet" href="static/main/css/main.css">
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
</head>
	
<body>

<jsp:include page="/WEB-INF/view/template/topBar.jsp"></jsp:include>

	<div class="title text-center" style="padding-bottom: 60px;">
		<h1 class="mb-10">오늘의 추천 레시피</h1>
	</div>
				<!-- start banner Area --> 
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="margin:0 auto; width: 1100px; height: 500px;" >
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	  </ol>
	
	  <!-- Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
	    <div class="item active">
	      <img src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201711/4e91dab57641a2e847c8dc5e6cc240371.png&w=640&h=500&edit=c&t=bb330153a00f9b0f84564b739a2dd1712cab4882"
	      				style="width: 1100px; height: 500px;" >
	      <div class="carousel-caption">
	      </div>
	    </div>
	    <div class="item">
	      <img src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201703/a22c855ab4e2f5c8559d5d0a372c2ce01.jpg&w=640&h=500&edit=c&t=e60821f2a9903521fb58507d82f76b8fd2955f1a"
	      				style="width: 1100px; height: 500px;">
	      <div class="carousel-caption">
	      </div>
	    </div>
	    <div class="item">
	      <img src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201705/af31d86b8b9876a12434f5338dfb371a1.jpg&w=640&h=500&edit=c&t=a10895e82edc709ad175a2a70b83169828f4ae92"
	      				style="width: 1100px; height: 500px;">
	      <div class="carousel-caption">
	      </div>
	    </div>
	  </div>
	
	  <!-- Controls -->
	  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>
			<!-- End banner Area -->	

			<!-- Start top-dish Area -->
	<section class="top-dish-area section-gap" id="dish">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-60 col-lg-8">
					<div class="title text-center">
						<h1 class="mb-10">e-요리 레시피 Top3</h1>
					</div>
				</div>
			</div>						
			<div class="row">
				<div class="single-dish col-lg-4">
					<div class="thumb" >               <!-- e요리 이미지 주소 파싱 -->
						<img src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201711/4e91dab57641a2e847c8dc5e6cc240371.png&w=640&h=500&edit=c&t=bb330153a00f9b0f84564b739a2dd1712cab4882"
						 		style="width:350px; height:240px;">
					</div>
					<h4 class="text-uppercase pt-20 pb-20">술쟁이 박나래가 알려주는 초간단 술안주!! 차돌박이숙주볶음</h4>
				</div>
				<div class="single-dish col-lg-4">
					<div class="thumb">
						<img src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201703/bae0a051ae9aa8a8586e434d238deee01.jpg&w=640&h=500&edit=c&t=6f33f35875866e88d8a302dd0996beb30b9ae453"
								style="width:350px; height:240px;">
					</div>
					<h4 class="text-uppercase pt-20 pb-20">집들이, 홈파티 음식 중 최고의 메뉴, 밀푀유나베!!</h4>
				</div>
				<div class="single-dish col-lg-4">
					<div class="thumb">
						<img src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201805/dfbcfb20735a5f62e488cd9ad29183db1.png&w=640&h=500&edit=c&t=4c81ea590ba93d18bf32d1701f5579feca6f5109"
								style="width:350px; height:240px;">
					</div>
					<h4 class="text-uppercase pt-20 pb-20">연어 카나페 만들기</h4>
				</div>												
			</div>
		</div>	
	</section>
			
	<!-- Start video Area -->
	<section class="video-area">
		<div class="container" >
			
			<div class="container" style="    padding-top: 100px;">
			<div class="row d-flex justify-content-center">
				<div class="menu-content pb-70 col-lg-8">
					<div class="title text-center"> 
						<h1 class="mb-10">나만의 레시피 Top3</h1>
					</div>
				</div>
			</div>					
			<div class="row">
				<div class="col-lg-4  single-blog">
					<div class="thumb">
						<img src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201703/f9891e4f858c9fcb77b7852d304c3b4d1.jpg&w=640&h=500&edit=c&t=6c783a315327acbdbc77b6b00915c8f2f77281b8"
								style="width:350px; height:240px;">
					</div>
					<p class="date">kakaobean</p>
					<a href="#">
						<h4>수박 다양하게 자르기(간편하게 먹을수 있게)</h4>
					</a>
				</div>
				<div class="col-lg-4 single-blog">
					<div class="thumb">
						<img src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201703/a22c855ab4e2f5c8559d5d0a372c2ce01.jpg&w=640&h=500&edit=c&t=e60821f2a9903521fb58507d82f76b8fd2955f1a"
								style="width:350px; height:240px;">
					</div>
					<p class="date">TaeKyoung77</p>
					<a href="#">
						<h4>마약김밥 만드는법, 겨자소스 만드는법</h4>
					</a>
				</div>
				<div class="col-lg-4 single-blog">
					<div class="thumb">
						<img src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201705/af31d86b8b9876a12434f5338dfb371a1.jpg&w=640&h=500&edit=c&t=a10895e82edc709ad175a2a70b83169828f4ae92"
								style="width:350px; height:240px;">
					</div>
					<p class="date">youngbin8808</p>
					<a href="#">
						<h4>돼지 불고기 바싹하게 굽기 인기메뉴</h4>
					</a>
				</div>
							
			</div>
		</div>	
			
		</div>	
	</section>
	<div style="width:1100px; height:200px; margin:0 auto; margin-top:120px; margin-bottom:120px;">
		<div style="display:inline-block; width: 500px;">
			<div class="list-group">
				  <a href="#" class="list-group-item active">
				    커뮤니티
				  </a>
				  <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
				  <a href="#" class="list-group-item">Morbi leo risus</a>
				  <a href="#" class="list-group-item">Porta ac consectetur ac</a>
				  <a href="#" class="list-group-item">Vestibulum at eros</a>
			</div>
		</div><!-- 
		 --><div style="display:inline-block; width: 500px; margin-left:100px;">
			<div class="list-group">
				  <a href="#" class="list-group-item active">
				    QnA
				  </a>
				  <a href="#" class="list-group-item">Dapibus ac facilisis in</a>
				  <a href="#" class="list-group-item">Morbi leo risus</a>
				  <a href="#" class="list-group-item">Porta ac consectetur ac</a>
				  <a href="#" class="list-group-item">Vestibulum at eros</a>
			</div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/view/community/list.jsp"></jsp:include>
	<!-- End video Area -->
			

	<!-- start blog Area -->		

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



