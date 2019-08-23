
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}
/*메뉴 부분*/
header {
	background-color: yellow;
	height: 60px;
}

.m_ul {
	list-style: none;
	width: 500px;
	height: 20px;
	background-color: red;
	float: right;
}

.m_ul .m_li {
	width: 100px;
	float: left;
	border: 0px solid black;
}

.slide_wrap {
	height: 300px:
}

.one_wrap {
	width: 1026px;
	margin: auto;
}

.one_wrap .one_board {
	width: 300px;
	height: 430px;
	border: 1px solid red;
	float: left;
	display: inline-block;
	margin: 20px;
}

/*게시판 사이*/
.f_line_wrap {
	clear: both;
	height: 200px;
	background-color: olive;
}

.two_wrap {
	width: 1026px;
	margin: auto;
}

.two_wrap h2 {
	margin-top: 30px;
}

.two_wrap .two_board {
	width: 234px;
	height: 180px;
	border: 1px solid olive;
	border-radius: 13px;
	float: left;
	display: inline-block;
	margin: 10px;
}

.m_line_wrap {
	width: 13px;
	clear: both;
}

.three_wrap {
	width: 1026px;
	margin: auto;
}

.three_wrap h2 {
	margin-top: 30px;
}

.three_wrap .three_board {
	width: 234px;
	height: 180px;
	border: 1px solid gray;
	border-radius: 13px;
	float: left;
	display: inline-block;
	margin: 10px;
}

.b_line_wrap {
	clear: both;
	height: 130px;
	background-color: #e3b6e9;
}

footer {
	clear: both;
	height: 200px;
	background-color: #333;
}

.footer .footer-inner ul li a {
	font-size: 13px;
	color: #6d6d72 !important;
}
</style>
</head>
<body>
	<header>
		<img src="#" /> <input type="text" name="" value="">
		<nav class="m_wrap">
			<ul class="m_ul">
				<li class="m_li">menu1</li>
				<li class="m_li">menu2</li>
				<li class="m_li">menu3</li>
				<li class="m_li">munu4</li>
				<li class="m_li">munu5</li>
			</ul>
		</nav>
	</header>
	<section class="slide_wrap"></section>

	<section class="one_wrap">
		<div class="one_board"></div>
		<div class="one_board"></div>
		<div class="one_board"></div>
		<div class="one_board"></div>
		<div class="one_board"></div>
		<div class="one_board"></div>
	</section>
	<section class="f_line_wrap"></section>

	<section class="two_wrap">
		<h2>명예</h2>
		<div class="two_board"></div>
		<div class="two_board"></div>
		<div class="two_board"></div>
		<div class="two_board"></div>

		<div class="two_board"></div>
		<div class="two_board"></div>
		<div class="two_board"></div>
		<div class="two_board"></div>

	</section>

	<section class="m_line_wrap"></section>

	<section class="three_wrap">
		<h2>추천</h2>
		<div class="three_board"></div>
		<div class="three_board"></div>
		<div class="three_board"></div>
		<div class="three_board"></div>

		<div class="three_board"></div>
		<div class="three_board"></div>
		<div class="three_board"></div>
		<div class="three_board"></div>
	</section>
	<section class="b_line_wrap"></section>
	<section class="four_wrap">
		<h2></h2>
		<div class="four_board"></div>
		<div class="four_board"></div>
		<div class="four_board"></div>
		<div class="four_board"></div>
		<div class="four_board"></div>
		<div class="four_board"></div>
	</section>

	<footer id="footer" class="footer">
		<div class="footer-inner">
			<div class="logo"></div>
			<div class="sns"></div>
			<ul>
				<li><a href="#" type="external">회사소개</a> <span> ·</span><a
					href="#" type="external">이용약관</a> <span> ·</span><a href="#"
					type="external">개인정보 처리방침</a> <span> ·</span><a href="#"
					type="external">고객센터</a></li>
			</ul>
		</div>
		<div class="info">
			대표번호: 00-000-0000 (09:00 ~ 18:00) <span>/</span> 점심시간: 13:00 ~ 14:00
			(주말 및 공휴일 휴무)
		</div>
		<div>
			조명 <span>|</span> 조 번호: 000-00-00000 <span>|</span> 조장: 오영수 종로지점
			<p>@ 2019 조명</p>
		</div>
	</footer>
</body>
</html>
