<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Nunito+Sans:700%7CNunito:300,600"
	rel="stylesheet">
	
<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />
<!-- css -->
<link type="text/css" rel="stylesheet" href="css/meeting-write.css" />

 <script type="text/javascript">
	$(document).ready(function(){
		$("#meeting_file").change(function(){
		   readURL(this);
		});
	});
	
	function readURL(input) {
		 if (input.files && input.files[0]) {
		  var reader = new FileReader();
		  
		  reader.onload = function (e) {
		   $('#foo').attr('src', e.target.result);  
		  }
		  reader.readAsDataURL(input.files[0]);
		  }
		}
</script>
<style type="text/css">

.mewiret {
	width: 10%;
	margin: 0 auto;
	margin-top: 30px;
}

#body {
	width: 30%;
	margin: 0 auto;
	margin-top: 20px;
}

#body .name {
	margin: 0 auto;
}
.m_name #foo {
	float: right;
	position:relative;
	margin-top:-50px;
}
.m_name #address {
	float: right;
}



#body  .btn_1 {
          padding: 9px 45px;
          border: none;
          background-color: #212631;
          font-weight: 600;
          text-transform: uppercase;
          font-size: 13px;
          color: #fff;
          -webkit-transition: 0.2s opacity;
          transition: 0.2s opacity;
}
#body .btn {
		  width:100%;
          padding: 9px 45px;
          border: none;
          background-color: #212631;
          font-weight: 600;
          text-transform: uppercase;
          font-size: 13px;
          color: #fff;
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
	<h3 class="mewiret">모임글 작성</h3>
	<form id="body" name="frm" class="meeting" action="write.do" method="post" enctype="multipart/form-data">
	<img id="foo" src="#" style="max-width: 100%;height: auto;" >
		<div class="m_name">
		<label for="meeting">이미지</label> 
			<input class="form-control" type="file" name="meeting_file" id="meeting_file" style="width: 220px;"/>
		</div>
		<br/>
		<div class="m_name">
			<label for="meeting">모임명</label> <input type="text" name="meeting_title"
				class="form-control" id="meeting_title" placeholder="모임명을 입력하세요">
		 </div>
		<br/>
		<div class="m_name">
			<label for="meeting">소개글</label> <input type="text" name="meeting_introduction"
				class="form-control" id="meeting_introduction" placeholder="소개글을 입력하세요">
		</div>
		<br/>
		<div class="m_name">
			<label for="meeting">날짜 와 시간</label> <input class="form-control" id="meeting_date"
			 name ="meeting_date" type="date" />
			<input class="form-control" id="meeting_time"
			 name ="meeting_time" type="time" />
		</div>
		<br>
		<div class="m_name">
			<label for="meeting">장소명</label> <input type="text" name="meeting_place"
				class="form-control" id="meeting_place" placeholder="장소명을 입력하세요">
		</div>
		<br/>
		<div class="m_name">
			<label for="meeting">인원수</label> <input type="text" name="meeting_recruitment"
				class="form-control" id="meeting_recruitment" placeholder="인원수을 입력하세요">
		</div>
		<br/>
		<div class="m_name">
			<label for="meeting">주소</label>
			<input type="text" class="form-control" id="meeting_address" name="meeting_address" placeholder="주소">
			<input type="button" class="btn_1"  onclick="sample5_execDaumPostcode()" value="주소 검색" id="address"><br>
		</div>
		<br/>
	
		 <div class="m_name">
			<label for="meeting">참가비</label> <input type="text" name="meeting_price"
				class="form-control" id="meeting_price" placeholder="참가비을 입력하세요">
		</div> 
		<br/>
		<div class="m_name">
			<label for="meeting">프로그램 내용</label>
			<textarea class="form-control" id="meeting_comment" name="meeting_comment" rows="13" cols="40" style="resize: none;"></textarea>
		</div>
		<br/> 
		<button id="bt" type="submit" class="btn">신청하기</button>
	</form>




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

<script>

    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("meeting_address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
</script>

</body>
</html>