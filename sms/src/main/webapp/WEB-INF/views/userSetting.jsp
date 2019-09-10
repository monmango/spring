<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>WebMag HTML Template</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:700%7CNunito:300,600"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function() {

		$('#saveUser').on('click', function() {
			alert("저장 되었습니다.");
			$('.form-inline').attr('action', 'index.do').submit();
		})
		$('#quit').on('click', function() {
			alert("탈퇴 되었습니다.");
			$('.form-inline').attr('action', 'quit.do').submit();
		})

		$('#pictureUpload').on('click', function() {
			alert("picture");
			$('#filepath').click();
		});

		$("#filepath").on('change', function() {
			var str = $("#filepath").val();
			console.log(str);
			// 이미지 첨부파일인지 체크
			var patt = /(.jpg$|.gif$|.png$)/gi;
			var result = str.match(patt);

			if (!result) {
				alert("jpg, gif, png만 가능합니다.");
				$('#filepath').val('');
				return false;
			}
			// 첨부파일 사이즈 체크
			console.log(this.files + "," + this.files[0]);
			// if (this.files && this.files[0]) {

			console.log("size: " + this.files[0].size);
			if (this.files[0].size > 1000000000) {
				alert("1GB 이하만 첨부할수 있습니다.");
				$("#filepath").val('');
				return false;
			}
			// }

			// 파일을 읽기 위한 fileReader 객체 생성.
			var reader = new FileReader();
			// file 내용을 읽어 dataURL형식의 문자열로 저장
			reader.readAsDataURL(this.files[0]);
			// 파일 읽어들이기를 성공했읋때 호출되는 이벤트 핸들러
			reader.onload = function(e) {
				// 이미지Tag의 src속성에 읽어들인 File내용을 지정
				$("#pic").attr('src', e.target.result);
			}

		});// end change
	});
</script>
<style type="text/css">
.settingbody {
	margin: auto;;
	width: 400px;
	height: 500px;
	padding: 5px;
}

.settingbody ul li {
	margin-top: 5px;
	margin-button: 5px;
}

.settingbody ul li input {
	width: 100%
}

.settingbody ul li label {
	text-align: left;
}

#btn {
	margin-top: 10px;
	margin-button: 10px;
}
</style>
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
						<a href="index.html" class="logo"><img src="./img/logo.png"
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
		<div class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-md-10">
						<h1>개인정보 수정</h1>
					</div>
				</div>
			</div>
		</div>
		<!-- /Page Header -->
	</header>
	<!-- /Header -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<form method="POST" class="form-inline" enctype="multipart/form-data">
					<div class="settingbody">
						<ul>
							<li><label for="userName">이름</label></li>
							<li><input type="text" id="userName" name="userName"
								class="form-control" aria-label="Large"
								aria-describedby="inputGroup-sizing-sm" style="width: 100%" /></li>
							<li><label for="userEmail">이메일</label></li>
							<li><input type="text" id="userEmail" name="userEmail"
								class="form-control" aria-label="Large"
								aria-describedby="inputGroup-sizing-sm" style="width: 100%" /></li>
							<li><label for="userPhone">휴대폰 번호</label></li>
							<li><input type="text" id="userPhone" name="userPhone"
								class="form-control" aria-label="Large"
								aria-describedby="inputGroup-sizing-sm" style="width: 100%" /></li>
							<li><button type="button" class="btn btn-default"
									id="pictureUpload" name="pictureUpload" style="float: left">
									<i class="fa fa-cog fa-spin"></i>사진 삽입
								</button><input type="file" name="filepath" id="filepath"
								style="display: none" /></li>
							<li><img src="./img/trip5.jpg" class="img-thumbnail"
								id="pic" alt=""
								style="width: 100px; height: 100px; margin-left: 10px;"></li>
							<li><input type="hidden" name="oldpicture" id="oldpicture"
								value="${requestScope.mypicture}" /></li>


							<li><input type="button" id="saveUser" value="설정 저장하기"
								class="btn btn-danger" /></li>
							<li><button type="button" id="quit" name="guit"
									class="btn btn-light">회원 탈퇴</button></li>
						</ul>
					</div>
				</form>
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