<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html >

<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="colorlib">
<meta name="description" content="">
<meta name="keywords" content="">
<meta charset="UTF-8">

<title>My Page</title>

<link rel="stylesheet" href="static/mypage/css/linearicons.css">
<link rel="stylesheet" href="static/mypage/css/font-awesome.min.css">
<link rel="stylesheet" href="static/mypage/css/bootstrap.css">
<link rel="stylesheet" href="static/mypage/css/magnific-popup.css">
<link rel="stylesheet" href="static/mypage/css/nice-select.css">
<link rel="stylesheet" href="static/mypage/css/animate.min.css">
<link rel="stylesheet" href="static/mypage/css/owl.carousel.css">
<link rel="stylesheet" href="static/mypage/css/jquery-ui.css">
<link rel="stylesheet" href="static/mypage/css/main.css">

<script type="text/javascript" src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"></script>

</head>
<!-- start banner Area -->
<section class="banner-area relative blog-home-banner" id="home">
	<div class="overlay overlay-bg"></div>
	<div class="container">
		<div class="row d-flex align-items-center justify-content-center">
			<div class="about-content blog-header-content col-lg-12">
				<h1 class="text-white">이거 어때?!</h1>
				<p class="text-white">돼지 불고기 바싹하게 굽기 인기메뉴</p>
				<a href="blog-single.html" class="primary-btn">View More</a>
			</div>
		</div>
	</div>
</section>
<!-- End banner Area -->

<!-- Start top-category-widget Area -->
<section class="top-category-widget-area pt-90 pb-90 ">
	<div class="container">
		<div class="row">
			<div class="col-lg-4">
				<div class="single-cat-widget">
					<div class="content relative">
						<div class="overlay overlay-bg"></div>
						<a href="#" target="_blank">
							<div class="thumb">
								<img class="content-image img-fluid d-block mx-auto"
									src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201705/af31d86b8b9876a12434f5338dfb371a1.jpg&w=640&h=500&edit=c&t=a10895e82edc709ad175a2a70b83169828f4ae92"
									alt="">
							</div>
							<div class="content-details">
								<h4 class="content-title mx-auto text-uppercase">내가 찜한 만개의 레시피</h4>
								<span></span>
								<p>만개의 레시피</p>
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="single-cat-widget">
					<div class="content relative">
						<div class="overlay overlay-bg"></div>
						<a href="#" target="_blank">
							<div class="thumb">
								<img class="content-image img-fluid d-block mx-auto"
									src="static/mypage/img/blog/cat-widget2.jpg" alt="">
							</div>
							<div class="content-details">
								<h4 class="content-title mx-auto text-uppercase">내가 쓴 레시피</h4>
								<span></span>
								<p>내가 쓴 레시피</p>
							</div>
						</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="single-cat-widget">
					<div class="content relative">
						<div class="overlay overlay-bg"></div>
						<a href="#" target="_blank">
							<div class="thumb">
								<img class="content-image img-fluid d-block mx-auto"
									src="static/mypage/img/blog/cat-widget3.jpg" alt="">
							</div>
							<div class="content-details">
								<h4 class="content-title mx-auto text-uppercase">북마크 한 커뮤니티</h4>
								<span></span>
								<p>북마크 한 커뮤니티</p>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- End top-cate	gory-widget Area -->

<!-- Start post-content Area -->
<section class="post-content-area">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 posts-list">
				<div class="single-post row">
					<div class="col-lg-3  col-md-3 meta-details">
						<div class="user-details row">
							<p class="user-name col-lg-12 col-md-12 col-6">
								<a href="#">만개의 레시피</a> <span class="lnr lnr-user"></span>
							</p>
							<p class="date col-lg-12 col-md-12 col-6">
								<a href="#">2018 May 18</a> <span class="lnr lnr-calendar-full"></span>
							</p>
							<p class="view col-lg-12 col-md-12 col-6">
								<a href="#">1.2M Views</a> <span class="lnr lnr-eye"></span>
							</p>
							<p class="comments col-lg-12 col-md-12 col-6">
								<a href="#">06 Comments</a> <span class="lnr lnr-bubble"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-9 col-md-9 ">
						<div class="feature-img">
							<img class="img-fluid"
								src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201705/af31d86b8b9876a12434f5338dfb371a1.jpg&w=640&h=500&edit=c&t=a10895e82edc709ad175a2a70b83169828f4ae92"alt="">
						</div>
						<a class="posts-title" href="blog-single.html"><h3>돼지 불고기 바싹하게 굽기 인기메뉴</h3></a>
						<p class="excert">참기름 진간장 설탕 맛술 청주 후춧가루 돼지 불고기 재료 돼지고기(앞다리살) 다진마늘 대파 다진생강(즙) 깻잎</p>
						<a href="blog-single.html" class="primary-btn">View More</a>
					</div>
				</div>
				<div class="single-post row">
					<div class="col-lg-3  col-md-3 meta-details">
						<div class="user-details row">
							<p class="user-name col-lg-12 col-md-12 col-6">
								<a href="#">작성자 닉네임</a> <span class="lnr lnr-user"></span>
							</p>
							<p class="date col-lg-12 col-md-12 col-6">
								<a href="#">작성일</a> <span class="lnr lnr-calendar-full"></span>
							</p>
							<p class="view col-lg-12 col-md-12 col-6">
								<a href="#">조회수 View</a> <span class="lnr lnr-eye"></span>
							</p>
							<p class="comments col-lg-12 col-md-12 col-6">
								<a href="#">댓글 수 Comments</a> <span class="lnr lnr-bubble"></span>
							</p>
						</div>
					</div>
					<div class="col-lg-9 col-md-9 ">
						<div class="feature-img">
							<img class="img-fluid"
								src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201703/fa427ad8868550ef2dc8486180eca11f1.jpg&w=640&h=500&edit=c&t=520aa6e1f6253f2fa335699fd5d2956212e1d354" alt="">
						</div>
						<a class="posts-title" href="blog-single.html"><h3>For:each 돌려줘</h3></a>
						<p class="excert">여기는 걍 해당 레시피 재료 목록 씀</p>
						<a href="blog-single.html" class="primary-btn">View More</a>
					</div>
				</div>
	
				<nav class="blog-pagination justify-content-center d-flex">
					<ul class="pagination">
						<li class="page-item"><a href="#" class="page-link"
							aria-label="Previous"> <span aria-hidden="true"> <span
									class="lnr lnr-chevron-left"></span>
							</span>
						</a></li>
						<li class="page-item"><a href="#" class="page-link">01</a></li>
						<li class="page-item active"><a href="#" class="page-link">02</a></li>
						<li class="page-item"><a href="#" class="page-link">03</a></li>
						<li class="page-item"><a href="#" class="page-link">04</a></li>
						<li class="page-item"><a href="#" class="page-link">09</a></li>
						<li class="page-item">
							<a href="#" class="page-link"aria-label="Next"> 
								<span aria-hidden="true"> 
									<span class="lnr lnr-chevron-right"></span>
								</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
			<div class="col-lg-4 sidebar-widgets">
				<div class="widget-wrap">
					<div class="single-sidebar-widget search-widget">
						<form class="search-form" action="#">
							<input placeholder="Search Posts" name="search" type="text"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = 'Search Posts'">
							<button type="submit">
								<i class="fa fa-search"></i>
							</button>
						</form>
					</div>
					<div class="single-sidebar-widget user-info-widget">
						<img src="http://blogdailyherald.com/wp-content/uploads/2014/10/wallpaper-for-facebook-profile-photo-1024x645.jpg" alt=""> <a
							href="#"><h4>강팀장</h4></a>
						<p>뒤를 부탁하네</p>
						<ul class="social-links">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-github"></i></a></li>
							<li><a href="#"><i class="fa fa-behance"></i></a></li>
						</ul>
						
						<div class="single-sidebar-widget tag-cloud-widget">
							<h4 class="tagcloud-title"><a>회원 정보 수정</a></h4>
						</div>

					</div>
					<div class="single-sidebar-widget popular-post-widget">
						<h4 class="popular-title">Popular Posts</h4>
						<div class="popular-post-list">
							<div class="single-post-list d-flex flex-row align-items-center">
								<div class="thumb">
									<img class="img-fluid" src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201703/26c754fe072ef699ef106be30b90b2b6.jpg&w=640&h=500&edit=c&t=f97b90cc79632036ef4542576519170ae864814f" alt="">
								</div>
								<div class="details">
									<a href="blog-single.html"><h6>비빔국수 만들기</h6></a>
									
								</div>
							</div>
							<div class="single-post-list d-flex flex-row align-items-center">
								<div class="thumb">
									<img class="img-fluid-popular" src="http://img.ssgcdn.com/trans.ssg?src=/cmpt/recipe/201707/87bf816f77a8cadcf4638d25ed2bd9da1.jpg&w=640&h=500&edit=c&t=114263c55653b7cdd468d72388cee224b055b2e6" alt="">
								</div>
								<div class="details">
									<a href="blog-single.html"><h6>집에서도 고급진 스페인요리 감바스로 !</h6></a>
									
								</div>
							</div>
						</div>
					</div>
					<div class="single-sidebar-widget tag-cloud-widget">
						<h4 class="tagcloud-title">인기 해쉬태그</h4>
						<ul>
							<li><a href="#">감</a></li>
							<li><a href="#">소세지</a></li>
							<li><a href="#">삼겹살</a></li>
							<li><a href="#">파</a></li>
							<li><a href="#">밀가루</a></li>
							<li><a href="#">박지성</a></li>
						</ul>
					</div>
					<div class="single-sidebar-widget tag-cloud-widget">
						<h4 class="tagcloud-title"><a>회원 탈퇴</a></h4>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>