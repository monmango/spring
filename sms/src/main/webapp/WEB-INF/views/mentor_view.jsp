<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mentor-box {
	margin: 50px 100px;
}

.mentor-image-circle {
	margin: 30px 30px 30px 30px;
	display: inline-block;
	float: left;
	/* background-color: yellow;  */
}

.mentor-image-circle img {
	border-radius: 50%;
	border: 2px solid #ccc;
}

.mentor-info {
	margin: 30px 0 0 100px;
	display: inline-block;
	width: 50%;
	/* background-color: red;  */
}

.mentor-name {
	color: rgba;
	font-size: 30px;
	font-weight: bold;
	font-size: 30px;
}

.mentor-name small {
	font-size: 50%;
	color: #6d6d72;
}

.mentor-job {
	margin: 8px 0;
}

.btn-container {
	margin-top: 15px;
}

.detail-box {
	margin: 35px 0;
	padding: 15px 0;
	border-top: 1px solid #c8c7cc;
	border-bottom: 1px solid #c8c7cc;
}

.mentoring-info {
	margin-top: 15px;
}

.detail-box #block-title {
	font-weight: bold;
	margin: 35px 15px 10px;
}

.detail-box #block-content {
	padding: 0 15px;
}
</style>

	<!-- body -->
	<div class="body">

		<div class="mentor-box">
			<div class="mentor-image-circle">
				<a type="external" href="/mentors/42139"> <img width="200"
					height="200" src="/sms/temp/${mentorView.mentor_image}">
				</a>
			</div>
			<div class="mentor-info">
				<div id="name">
					<span class="mentor-name">${mentorView.mentor_name} <small>멘토</small></span>
				</div>
				<div class="mentor-job">${mentorView.mentor_co}&nbsp;${mentorView.mentor_dept}</div>
				<div class="detail-block">
					<div class="mentoring-type">대표 멘토링 분야</div>
					<div class="mentoring-type-block">${mentorView.mentor_sub}</div>

					<div class="mentoring-info">멘토링 분야</div>
					<div class="button-container">
					<c:forEach items="${fieldDTO}" var="flist">
						<input type="button" value="${flist.field_name}"> 
					</c:forEach>
					</div>
				</div>
				<div class="btn-container">
					<button id="qs" type="button" class="btn btn-default">팔로우</button>
					<button id="qs" type="button" class="btn btn-danger">질문하기</button>
				</div>
			</div>
		</div>

		<div class="detail-box">
			<div id="block-title">멘토 소개</div>
			<div id="block-content">${mentorView.mentor_info}</div>
			<div id="block-title">주요 경력</div>
			<div id="block-content">${mentorView.mentor_career}</div>
			<br />
		</div>
	</div>
	<!-- /body -->

