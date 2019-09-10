<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:700%7CNunito:300,600"
	rel="stylesheet">
<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />
<!-- css -->
<link type="text/css" rel="stylesheet" href="css/meeting-list.css" />

<style type="text/css">

.meeting_body{
	border:1px solid black;
	width: 70%;
	
	margin:0 auto;
	
}

.meeting_body .meeting .metable{
	width:25%;
	height:400px;
	float:left;
	margin: 0 auto;
	margin-left: 60px;
	margin-top: 50px;
}
.meeting_body .meeting .metable img{
	width:100%;
	height:190px;
	border: 1px solid #2E2E2E;
	margin: 0 auto;
}
.meeting_body .meeting .metable p{
	margin-top: 10px;
}
.meeting_body .meeting .metable .mm{
	  margin-top: 10px;
}
.meeting_body .meeting .metable .mm  hr{
	color: #222222;    /* IE */
    border-color: #222222;  /* 사파리 */
    background-color: #222222;   /* 크롬, 모질라 등, 기타 브라우저 */
    margin: 2px;
    padding: 0;
}
.meeting_body .meeting .metable .mm #m{
	float: right;
}
.meeting_body .meeting .metable .mento img {
	width:45px;
	height:45px;
	border-radius: 50%;

}
.meeting_body .meeting .metable .mento {
	display: flex;
}

.meeting_body .meeting .metable .mento div .mento_name {
	font-weight:bold;
	font-size:small;
}
.meeting_body .meeting .metable .mento #me_2 .mem {
	font-size: x-small;
	margin-left: 5px;
}

.meeting_body .meeting .metable .mento #me_2 span {
	margin: 0;
	padding: 0px;
}

.meeting_body .meeting .metable .mento #me_2 .so {
	font-size: small;
	padding-top: 30px;
	margin-left: 10px;
}

.meeting_body .meeting .metable .mento .job {
	top:5px;
	font-size: small;
	
	
}
.meeting_body .meeting .metable .mento .badge {
	float:right;
	width:75px;
	height: 20px;
	margin-left: 35px;
} 
.meeting_body .meeting .metable .mento .me_2 {
	border-bottom: 1px solid #222222;
} 



.btn {
          padding: 9px 45px;
          border: none;
          background-color: #212631;
          font-weight: 600;
          text-transform: uppercase;
          font-size: 13px;
          color: #fff;
          margin-left:410px;
          margin-top:20px;
          -webkit-transition: 0.2s opacity;
          transition: 0.2s opacity;
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
						<li><a href="category.html">News</a></li>
						<li><a href="category.html">Popular</a></li>
						<li class="cat-1"><a href="category.html">Web Design</a></li>
						<li class="cat-2"><a href="category.html">JavaScript</a></li>
						<li class="cat-3"><a href="category.html">Css</a></li>
						<li class="cat-4"><a href="category.html">Jquery</a></li>
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
		<!-- /Page Header -->
	</header>
	<!-- /Header -->

	<!-- body -->
	<div class="meeting_body">
		<%-- <c:forEach items="${aList}" var="ml"> --%>
		<c:forEach items="${mm}" var="men">
		<c:forEach items="${men.meetingDTO}" var="mee">
			<form name="frm" class="meeting" action="list.do" method="get">
				<a href="detail.do?meeting_num=${mee.meeting_num}">
					<div class="metable">
						<img alt="#" src="/sms/temp/${mee.meeting_img_name}">
						<b class="title">${mee.meeting_title}</b>
						<p>${mee.meeting_introduction}</p>
						<div class="mm">
							<span><b>장소</b></span><span id="m">${mee.meeting_place}</span>
							<hr />
							
							<span><b>일시</b></span><span id="m">${date}</span>
							<hr />
							<span><b>주최</b></span><span id="m">${men.mentor_co}</span>
						</div>
						<div class="mento">
							<div id="me_1">
								<img class="img-responsive" src="img/${men.mentor_image}">
							</div>
							<div id="me_2">
								<span class="mento_name">${men.mentor_name}</span> <span
									class="mem">멘토</span> <b class="so">${men.mentor_career}</b>
							</div>

							<span class="badge ongoing-badge"
								style="background-color: green;"><div>모집중</div></span>
						</div>
					</div>
				</a>
			</form>
			</c:forEach>
		</c:forEach>

	</div>

	<a href="write.do"><input type="button" class="btn" value="작성하기"></a>

	<!-- /body -->
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
</body>
</html>