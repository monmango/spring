<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ////////////////////////////////////////////////////////////// -->
<!-- Nav -->
<div id="nav">
	<!-- Main Nav -->
	<div id="nav-fixed">
		<div class="container">
			<!-- logo -->
			<div class="nav-logo">
				<a href="home.do?${session.user_id}" class="logo"><img
					src="./img/logo3.png" alt=""></a>
			</div>
			<!-- /logo -->
			<!-- nav -->
			<ul class="nav-menu nav navbar-nav" style="margin-left: 300px;">
				<li class="cat-4"><a href="about.do">About</a></li>
				<li class="cat-4"><a href="mentor_list.do">맨토 찾기</a></li>
				<li class="cat-4"><a href="essaylist.do">에세이</a></li>
				<li class="cat-4"><a href="list.do">모임</a></li>

				<c:if test="${mCheck == 0}">
					<li class="cat-4"><a href="wannabe.do">멘토지원하기</a></li>
				</c:if>
				<c:choose>
					<c:when test="${empty sessionScope.user_id}">
						<li class="cat-4"><a href="signUp.do">회원가입</a></li>
						<li class="cat-4"><a href="userLogin.do">로그인</a></li>
					</c:when>
					<c:otherwise>
						<li><div class="nav-btns">
								<c:choose>
									<c:when test="${not empty userDTO.user_image}">
										<button class="aside-btn">
											<img id="header_profile_pic"
												src="/sms/temp/${userDTO.user_image}"
												style="width: 40px; height: 40px">
										</button>
									</c:when>
									<c:otherwise>
										<button class="aside-btn">
											<img id="header_profile_pic" src="./img/userpicture.png"
												style="width: 40px; height: 40px">
										</button>
									</c:otherwise>
								</c:choose>
							</div></li>
					</c:otherwise>
				</c:choose>
			</ul>
			<!-- /nav -->
		</div>
	</div>
	<!-- /Main Nav -->

	<!-- Aside Nav -->
	<div id="nav-aside">
		<!-- nav -->
		<div class="section-row">
			<ul class="nav-aside-menu">
				<li><a href="home.do">Home</a></li>
				<li><a href="userSetting.do?user_id=${sessionScope.user_id}">Setting</a></li>
				<li><a href="userLogout.do?user_id=${sessionScope.user_id }">Logout</a></li>
				<li><a href="#">Advertisement</a></li>
				<li><a href="contact.html">Contacts</a></li>
			</ul>
		</div>
		<!-- /nav -->

		<!-- widget posts -->
		<!-- <div class="section-row">
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
						<a href="blog-post.html">Why Node.js Is The Coolest Kid On The
							Backend Development Block!</a>
					</h3>
				</div>
			</div>

			<div class="post post-widget">
				<a class="post-img" href="blog-post.html"><img
					src="./img/widget-4.jpg" alt=""></a>
				<div class="post-body">
					<h3 class="post-title">
						<a href="blog-post.html">Tell-A-Tool: Guide To Web Design And
							Development Tools</a>
					</h3>
				</div>
			</div>
		</div> -->
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
<div id="post-header" class="page-header">
	<div class="background-img"
		style="background-image: url('./img/post-page.jpg');"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<div class="post-meta">
					<a class="post-category cat-2" href="category.html">JavaScript</a>
					<span class="post-date">March 27, 2018</span>
				</div>
				<h1>Ask HN: Does Anybody Still Use JQuery?</h1>
			</div>
		</div>
	</div>
</div>
<!-- /Page Header -->












