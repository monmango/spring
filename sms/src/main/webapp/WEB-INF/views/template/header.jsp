<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ////////////////////////////////////////////////////////////// -->
<!-- Nav -->
<script type="text/javascript">
	$(document).ready(function() {
		var mCheck = $('#mcheck').val();
		$("#wannabe").on('click', function() {
			if (mCheck == 1) {
				alert('★경고★ 이미 멘토를 지원하셨습니다.');
				return false;
			}else if(mCheck==""){
				alert('로그인을 해주셔야 합니다.');
				return false
			} else {
				return true;
			}

		});
		
		$(".post-category").on('click', function() {
			if (mCheck == 1) {
				alert('★경고★ 이미 멘토를 지원하셨습니다.');
				return false;
			}else if(mCheck==""){
				alert('로그인을 해주셔야 합니다.');
				return false
			} else {
				return true;
			}

		});
		
		$(document).ready(function() {
			var mCheck = $('#mcheck').val();
			$("#update_mentor").on('click', function() {
				if (mCheck == 0) {
					alert('멘토를 먼저 지원해주세요~');
					return false;
				}else if(mCheck==""){
					alert('로그인을 해주셔야 합니다.');
					return false
				} else {
					return true;
				}

			});

		});

	});
</script>
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
				<li class="cat-4"><a href="mentor_list.do">멘토 찾기</a></li>
				<li class="cat-4"><a href="essay_list.do">에세이</a></li>
				<li class="cat-4"><a href="list.do">모임</a></li>
				<li class="cat-4"><a id="wannabe" href="wannabe.do">멘토지원하기</a></li>
				<input type="hidden" id="mcheck" value="${mCheck}" />
			
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
				<li><a href="userSetting.do?user_id=${sessionScope.user_id}">Profile Setting</a></li>
				<li id="update_mentor"><a href="update_Mento.do">Mentor Setting</a></li>
				<li><a href="myPage.do?user_id=${sessionScope.user_id }">MyPage</a></li>
			    <li><a href="question_list.do?user_id=${sessionScope.user_id}">My Q&A</a></li>
				<li><a href="userLogout.do?user_id=${sessionScope.user_id }">Logout</a></li>
			</ul>
		</div>
	
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
		style="background-image: url('./img/llogo.png');"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<div class="post-meta" >
					<a class="post-category cat-2" href="wannabe.do" >멘토 지원하기</a>
				</div>
				<h1>가치 있는 커리어 경험을 공유해 보세요 :)</h1>
			</div>
		</div>
	</div>
</div>
<!-- /Page Header -->









