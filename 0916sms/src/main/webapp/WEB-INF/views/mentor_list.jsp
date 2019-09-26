<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SMS - 멘토 찾기</title>
<style type="text/css">
.aside-widget {
padding : 0px 15px;
}

.card {
	border: 1px solid #ccc;
	border-radius: 10px;
	padding: 10px;
	margin: 5px;
}

.card img {
	border-radius: 50%;
	border: 2px solid #ccc;
	position: relative;
}

.card:hover {
	background-color: #E0F2F7;
}

.card-field {
	/* display: block; */
	background-color: #4BB92F;
	font-size: 13px;
	text-transform: uppercase;
	padding: 3px 10px;
	font-weight: 600;
	border-radius: 2px;
	margin-right: 15px;
	color: #FFF;
	-webkit-transition: 0.2s opacity;
	transition: 0.2s opacity;
	text-align: right;
	float: right;
}

.card-name {
	font-size: 23px;
	font-weight: bold;
}

.card-info, .card-job {
	text-align: right;
	display: block;
	margin-right: 15px;
}

.card-job {
	font-size: 13px;
}

#title {
	position: absolute;
	width: 35%;
	font-size: 12px;
	font-weight: bold;
	text-align: right;
	top: 50px;
	right: 42px;
}
</style>


	<!-- tags -->

	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="aside-widget">
					<div class="tags-widget">
						<p>멘토링 유형</p>
						<ul>
							<li><a href="mentor_list.do?field_num=1">직무</a></li>
							<li><a href="mentor_list.do?field_num=2">진로</a></li>
							<li><a href="mentor_list.do?field_num=3">스펙</a></li>
							<li><a href="mentor_list.do?field_num=4">외국어</a></li>
							<li><a href="mentor_list.do?field_num=5">면접/자소서</a></li>
							<li><a href="mentor_list.do?field_num=6">회사생활</a></li>
							<li><a href="mentor_list.do?field_num=7">창업</a></li>
							<li><a href="mentor_list.do?field_num=8">이직</a></li>
							<li><a href="mentor_list.do?field_num=9">기타</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /tags -->

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<div class="section-title">
						<h2>멘토</h2>
					</div>
				</div>

				<!-- post -->
				<c:forEach items="${mentorList}" var="mlist">
					<div class="col-md-4">
						<a href="mentor_view.do?num=${mlist.mentor_num}" style="text-decoration:none;">
							<div class="card">
								<span class="card-field">멘토 한마디</span>
								<div id="title">${mlist.mentor_sub}</div>
								<img src="/sms/temp/${mlist.mentor_image}" alt=""
									style="width: 100px; height: 100px;" />
								<div class="card-info">
									<span class="card-name">${mlist.mentor_name}</span> <small>멘토</small>
								</div>
								<div class="card-job">${mlist.mentor_co}&nbsp;${mlist.mentor_dept}</div>
							</div>
						</a>
					</div>
				</c:forEach>
				<!-- /post -->
			</div>
			<!-- /row -->

		</div>
		<!-- /container -->
	</div>
	<!-- /section -->

