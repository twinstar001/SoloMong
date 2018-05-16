<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<style>
.div1{  /*  레시피 이미지 + 제목*/
	display:inline-block;
	margin-left:20px;
	margin-top:20px;
	width:320px;
	height:320px;
	background-color:grey;
}
.recipe-image{  
	width:310px;
	height:230px;
	margin: 5px;
	background-color:#222241;
}
.recipe-title{
	width:310px;
	height:70px;
	margin: 5px;
	background-color:#3e3e92;
}
.div2{  /* 레시피 카테고리 div */
	display:inline-block;
	width: 100px;
	height: 40px;
	background-color:#cddc39;
	margin: 5px;
	vertical-align:top;
}
</style>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<header>
	<div style="background-color:red; height:100px;">상단바</div>  <!-- 상단바 위치/ include 시키기 -->
</header>
	<div style="width:1100px; margin-left:130px;" >
		<div style="height:150px;">
			<div class="div2">요리별</div><!-- 
			 --><div class="div2">국물/찌개</div><!-- 
			 --><div class="div2">볶음</div><!-- 
			 --><div class="div2">찜</div><!-- 
			 --><div class="div2">구이</div> 
			 <br>
			 <div class="div2">상황별</div><!-- 
			 --><div class="div2">명절</div><!-- 
			 --><div class="div2">집들이</div><!-- 
			 --><div class="div2">다이어트</div>
			 <br>
			 <div class="div2">재료별</div><!-- 
			 --><div class="div2">소고기</div><!-- 
			 --><div class="div2">돼지고기</div><!-- 
			 --><div class="div2">생선류</div><!-- 
			 --><div class="div2">닭</div>
		</div>
		<div>
			<div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div><!-- 
			 --><div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div> 
			</div><!-- 
			 --><div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div>
		</div>
		<div>
			<div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div><!-- 
			 --><div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div><!-- 
			 --><div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div>
		</div>
		<div>
			<div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div><!-- 
			 --><div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div><!-- 
			 --><div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div>
		</div>
		<div>
			<div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div><!-- 
			 --><div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div><!-- 
			 --><div class="div1">
				<div class="recipe-image"></div>
				<div class="recipe-title"></div>
			</div>
		</div>
		
	</div>
<footer class="footer-area section-gap"style="width:1100px; margin-left:100px; 	">
		<div class="container" style="background-color:#222;">
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