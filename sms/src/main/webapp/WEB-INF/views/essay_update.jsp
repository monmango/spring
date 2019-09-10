<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>essay_update.jsp</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    
    <!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Nunito+Sans:700%7CNunito:300,600" rel="stylesheet">
	
	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	
	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />
		
	<!-- include summernote -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>
    
    <!-- include summernote-ko-KR -->
    <script src="lang/summernote-ko-KR.js"></script>
    
  </head>

  <body>
	<!-- Header -->
	<header id="header">
		<!-- Nav -->
		<div id="nav">
			<!-- Main Nav -->
			<div id="nav-fixed">
				<div class="container">
					<!-- logo -->
					<div class="nav-logo">
						<a href="index.html" class="logo"><img src="./img/logo.png" w
							alt=""></a>
					</div>
					<!-- /logo -->

					<!-- nav -->
					<ul class="nav-menu nav navbar-nav">
						<li><a href="about.do">About</a></li>
						<li><a href="blank.do">Blank</a></li>
						<li class="cat-1"><a href="blog-post.do">Blog-post</a></li>
						<li class="cat-2"><a href="category.do">Category</a></li>
						<li class="cat-3"><a href="contact.do">Contact</a></li>
						<li class="cat-4"><a href="index.do">Index</a></li>
					</ul>
					<!-- /nav -->

					<!-- search & aside toggle -->
					<div class="nav-btns">
						<button class="aside-btn">
							<i class="fa fa-bars"></i>
						</button>
						<button class="search-btn">
							<i class="fa fa-search"></i>
						</button>
						<div class="search-form">
							<input class="search-input" type="text" name="search"
								placeholder="Enter Your Search ...">
							<button class="search-close">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
					<!-- /search & aside toggle -->
				</div>
			</div>
			<!-- /Main Nav -->

			<!-- Aside Nav -->
			<div id="nav-aside">
				<!-- nav -->
				<div class="section-row">
					<ul class="nav-aside-menu">
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About Us</a></li>
						<li><a href="#">Join Us</a></li>
						<li><a href="#">Advertisement</a></li>
						<li><a href="contact.html">Contacts</a></li>
					</ul>
				</div>
				<!-- /nav -->

				<!-- widget posts -->
				<div class="section-row">
					<h3>Recent Posts</h3>
					<div class="post post-widget">
						<a class="post-img" href="blog-post.html"><img
							src="./img/widget-2.jpg" alt=""></a>
						<div class="post-body">
							<h3 class="post-title">
								<a href="blog-post.html">Pagedraw UI Builder Turns Your
									Website Design Mockup Into Code Automatically</a>
							</h3>
						</div>
					</div>

					<div class="post post-widget">
						<a class="post-img" href="blog-post.html"><img
							src="./img/widget-3.jpg" alt=""></a>
						<div class="post-body">
							<h3 class="post-title">
								<a href="blog-post.html">Why Node.js Is The Coolest Kid On
									The Backend Development Block!</a>
							</h3>
						</div>
					</div>

					<div class="post post-widget">
						<a class="post-img" href="blog-post.html"><img
							src="./img/widget-4.jpg" alt=""></a>
						<div class="post-body">
							<h3 class="post-title">
								<a href="blog-post.html">Tell-A-Tool: Guide To Web Design
									And Development Tools</a>
							</h3>
						</div>
					</div>
				</div>
				<!-- /widget posts -->

				<!-- social links -->
				<div class="section-row">
					<h3>Follow us</h3>
					<ul class="nav-aside-social">
						<li><a href="#"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
						<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
					</ul>
				</div>
				<!-- /social links -->

				<!-- aside nav close -->
				<button class="nav-aside-close">
					<i class="fa fa-times"></i>
				</button>
				<!-- /aside nav close -->
			</div>
			<!-- Aside Nav -->
		</div>
		<!-- /Nav -->

		<!-- Page Header -->
		<!-- 		<div class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<ul class="page-header-breadcrumb">
							<li><a href="index.html">Home</a></li>
							<li>Contact</li>
						</ul>
						<h1>Contact</h1>
					</div>
				</div>
			</div>
		</div> -->
		<!-- /Page Header -->
	</header>
	<!-- /Header -->
	<!--//////////////////////////////////// 수정  ///////////////////////////////////-->
	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-5 col-md-offset-1">
					<div class="section-row">
						<h3>Essay Write</h3>
						<form class="frm" name="frm">
							<div class="row">
								<div class="col-md-7">
									<div class="form-group">
										<span>Subject</span> 
										<input class="input" type="text" name="essay_subject" value="${essayDto.essay_subject }">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group">
										<textarea class="input" id="summernote" name="essay_content" placeholder="" >${essayDto.essay_content }</textarea> 
											<script>
									      $('#summernote').summernote({
									        placeholder: '글쓰기',
									        tabsize: 2,  
									        height: 600,
									        fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
									        focus: true,
									        callbacks: {
												onImageUpload: function(files, editor, welEditable) {
										            for (var i = files.length - 1; i >= 0; i--) {
										            	sendFile(files[i], this);
										            }
										        }
											}
									        
									       });
									      
									      function sendFile(file, el) {
									  		var form_data = new FormData();
									        	form_data.append('file', file);
									        	$.ajax({
									          	data: form_data,
									          	type: "POST",
									          	url: './profileImage.mpf',
									          	cache: false,
									          	contentType: false,
									          	enctype: 'multipart/form-data',
									          	processData: false,
									          	success: function(img_name) {
									            		$(el).summernote('editor.insertImage', img_name);
									          	}
									        	});
									      }
									    </script>
									</div>
									<button class="primary-button center-block" id="update">Update</button>
									<button class="primary-button center-block" id="list">List</button>
									<input type="hidden" name="currentPage" id="currentPage" value="${currentPage}" /> 
									<input type="hidden" name="essay_num" value="${essayDto.essay_num }" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

	<!-- Footer -->
	<footer id="footer">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-5">
					<div class="footer-widget">
						<div class="footer-logo">
							<a href="index.html" class="logo"><img src="./img/logo.png"
								alt=""></a>
						</div>
						<ul class="footer-nav">
							<li><a href="#">Privacy Policy</a></li>
							<li><a href="#">Advertisement</a></li>
						</ul>
						<div class="footer-copyright">
							<span>&copy; <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>
									document.write(new Date().getFullYear());
								</script> All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="row">
						<div class="col-md-6">
							<div class="footer-widget">
								<h3 class="footer-title">About Us</h3>
								<ul class="footer-links">
									<li><a href="about.html">About Us</a></li>
									<li><a href="#">Join Us</a></li>
									<li><a href="contact.html">Contacts</a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-6">
							<div class="footer-widget">
								<h3 class="footer-title">Catagories</h3>
								<ul class="footer-links">
									<li><a href="category.html">Web Design</a></li>
									<li><a href="category.html">JavaScript</a></li>
									<li><a href="category.html">Css</a></li>
									<li><a href="category.html">Jquery</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="footer-widget">
						<h3 class="footer-title">Join our Newsletter</h3>
						<div class="footer-newsletter">
							<form>
								<input class="input" type="email" name="newsletter"
									placeholder="Enter your email">
								<button class="newsletter-btn">
									<i class="fa fa-paper-plane"></i>
								</button>
							</form>
						</div>
						<ul class="footer-social">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
						</ul>
					</div>
				</div>

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</footer>
	<!-- /Footer -->

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>