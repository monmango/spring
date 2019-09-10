<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>essay_list.jsp</title>
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

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
						<li><a href="userSetting.do">Setting</a></li>
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

			</div>
			<!-- Aside Nav -->
		</div>
		<!-- /Nav -->
	</header>
	<!-- /Header -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">


			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<div class="section-title">
						<h2>ESSAY</h2>
					</div>
				</div>
				<!--////////////////////////////////////////              여기 부터                       //////////////////////////////////////-->
				<!-- post -->
				<c:forEach items="${e_list }" var="dto">
					<div class="col-md-4">
						<div class="post">
							<c:url var="path" value="essayview.do">
								<c:param name="currentPage" value="${pv.currentPage }" />
								<c:param name="essay_num" value="${dto.essay_num }" />
							</c:url>
							<a class="post-img" href="${path }"> <img
								src="/sms/temp/${dto.essay_img }" alt="#"></a>
							<div class="post-body">
								<div class="post-meta">
									<span class="post-date">${dto.essay_date }</span>
								</div>
								<h3 class="post-title"
									style="padding-left: 10px; padding-right: 10px">
									<a href="${path }">${dto.essay_subject }</a>
								</h3>
								<hr />
								<div class="subtitle" style="padding: 10px">
									${dto.essay_summary }</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- /post -->

				<div class="clearfix visible-md visible-lg"></div>
				<button id="w_btn" onclick="location.href='essaywrite.do'"
					class="primary-button center-block">글쓰기</button>
			</div>

			<!-- /row -->


		</div>
		<!-- /container -->
	</div>
	<!-- /section -->
	<!-- 페이지 번호 -->
	<div class="pagelist">
		<!-- 이전 출력 시작 -->
		<c:if test="${pv.startPage > 1 }">
			<a href="essaylist.es?currentPage=${pv.startPage-pv.blockPage }">이전</a>
		</c:if>
		<!-- 이전 출력 끝 -->
		<!-- 페이지 출력 시작 -->
		<c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }">

			<span> <c:url var="currPage" value="essaylist.do">
					<c:param name="currentPage" value="${i }" />
				</c:url> <c:choose>
					<c:when test="${i == pv.currentPage }">
						<a href="${currPage }" class="pagecolor"> <c:out value="${i }" />
						</a>
					</c:when>
					<c:otherwise>
						<a href="${currPage }"> <c:out value="${i }" />
						</a>
					</c:otherwise>
				</c:choose>
			</span>
		</c:forEach>
		<!-- 페이지 출력 끝 -->
		<!-- 다음 출력 시작 -->
		<c:if test="${pv.totalPage > pv.endPage }">
			<a href="essaylist.do?currentPage=${pv.startPage+pv.blockPage }">다음</a>
		</c:if>
		<!-- 다음 출력 끝 -->
	</div>
	<!-- /페이지 번호 -->


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