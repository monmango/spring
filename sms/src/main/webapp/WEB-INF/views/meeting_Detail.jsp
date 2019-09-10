<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e125bfc102f60cc43e9ffab343755532&libraries=services"></script>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:700%7CNunito:300,600" rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/meeting.css">
<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />

<style type="text/css">

.meeting_form{
	width:50%;
	margin:0 auto;
	margin-top: 20px;
}


.meeting_form #li{
	width:110%;
	margin: 0 auto;
}
.meeting_form #meeting_img{
	width:100%;
	height:250px;
	margin: 0 auto;
}


.meeting_form .container .list-group{
	width: 70%;
	margin: 0 auto;
}

.meeting_form .li .h4{
	width:70%;
	margin: 0 auto;
}

.meeting_form .moli{

	margin-left: 90px;
}
.meeting_form .mentor{
	float: right;
}

.meeting_form .name{
width:80%;
	margin: 0 auto;
	margin-top: 20px;
}
.meeting_form .name .btn{
	margin-left:10px;
}
.meeting_form #program{
width:80%;
	margin: 0 auto;
	margin-top: 20px;
}
.meeting_form #notice{
	width:80%;
	margin: 0 auto;
	margin-top: 20px;
}
.meeting_form #place{
	width:80%;
	margin: 0 auto;
	margin-top: 20px;
}
.meeting_form #li{
	width:80%;
	margin: 0 auto;
	margin-top: 20px;
}
.meeting_form #meeting_img{
	width:80%;
	margin: 0 auto;
	margin-top: 20px;
}

hr {
    color: #222222;    /* IE */
    border-color: #222222;  /* 사파리 */
    background-color: #222222;   /* 크롬, 모질라 등, 기타 브라우저 */
}

#bt{
	width:80%;
	margin: 0 auto;
	margin-top: 20px;
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
	<div class="meeting_form">
	<c:forEach items="${aList}" var="dt">
	
		<div id="meeting_img">
			<img id="dd" alt="" src="/sms/temp/${dt.meeting_img_name}" style="max-width: 100%;height: auto;" />
		</div>
		<br /><br/><br/><br/><br/><br/><br/><br/><br/>
		<div id="title">
		<h3 class="text-center" >${dt.meeting_title}</h3>
		<p class="text-center">${dt.meeting_introduction}
		</p>
		</div>
		<br />

		<div id="li" class="deteli">
			<h4 class="h4" style="font-weight: bold;">기본정보</h4>
			<br>
			<ul class="list-group">
				<li class="list">일시 <span class="date" style="float: right;">${date}/년월일,${dt.meeting_time}/시간</span></li>
				<hr/>
				<li class="list">장소 <span class="place" style="float: right;">${dt.meeting_place}</span></li>
				<hr/>
				<li class="list">모집인원 <span class="num" style="float: right;">${dt.meeting_recruitment}</span></li>
				<hr/>
				<li class="list">참가비 <span class="price" style="float: right;">${dt.meeting_price}</span></li>
			</ul>
		</div>
		<br/>
		<h4 class="moli" style="font-weight: bold;">참여멘토</h5>

		<%-- <div class="mentor">
		<a type="external" href="/mentors/42139">
        <img class="img-responsive img-circle" width="120" height="120" src="C:/study/spring_workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/spring_07_baord/temp/${dt.img_path}">
		</a>
		</div>
		<div class="name" id="name">
		<span class="mento_name" style="font-weight: bold; font-size: larger;">${dt.mento_name}</span><span style="font-weight:bold; font-size: small;">멘토</span>
		<button id="qs" type="button" class="btn btn-default">팔로우</button>
		<button id="qs" type="button" class="btn btn-danger">질문하기</button> --%>
		
		<%-- <p>${dt.ju}</p>
		<b>대표 멘토링분야</b>
		<p>${dt.meeting_name}</p>
		<b>멘토링분야</b>
		<div id="button">
		<input type="button" value="전략/기획">
		<input type="button" value="진로">
		<input type="button" value="창업">
		</div>
		</div>
		<br/> --%>
		<div id="program">
		<p>프로그램내용</p>
		<b>${dt.meeting_comment}</b>
		<hr/>
	</div>
		
		<div id="notice">
		<p>안내사항</p>
		<hr/>
		<ul>
        <li>1.확정된 분들에게는 참여 확정 안내 메일이 발송됩니다.</li>
        <li>2.사전 취소는 2일 전까지 가능합니다.</li>
        <li>3.무단 No-Show 시에는 참여 신청이 제한됩니다.</li>
        <li>4.주차지원은 불가능하니 대중교통을 이용해 주세요.</li>
      </ul>
      <br/>
	</div>
		<div id="place">
		<p>장소</p>
		<hr/>
		<b id="m_p">${dt.meeting_place}</b>
		<p id="m_d">${dt.meeting_address}</p>
		<div id="map" style="width:100%;height:350px;"></div>
	</div>
	</c:forEach>
	 <button id="bt" type="button" class="btn btn-primary btn-block">신청하기</button>
	</div>



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

<script type="text/javascript">
var address = document.getElementById('m_d').innerHTML; 
var point = document.getElementById('m_p').innerHTML; 
 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch(address, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+point+'</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>

</body>
</html>