<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




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

		$('#settingUser').on('click', function() {
			alert("프로파일 세팅으로 이동합니다.");
			$('.form-inline').attr('action', 'userSetting.do').submit();
		})

	});
</script>
<style type="text/css">
.profilebody {
	margin: auto;;
	width: 400px;
	height: 500px;
	padding: 5px;
}

.profilebody ul li {
	margin-top: 5px;
	margin-button: 5px;
}

.profilebody ul li input {
	width: 100%
}

.profilebody ul li label {
	text-align: left;
}

#btn {
	margin-top: 10px;
	margin-button: 10px;
}

#user_picture {
	width: 200px;
	height: 200px;
}
</style>

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<form method="POST" class="form-inline">
					<div class="profilebody">
							<input type="hidden" name="user_id" value="${userDTO.user_id}" />
							<input type="hidden" name="user_name"
								value="${userDTO.user_name}" />
							<input type="hidden" name="user_email"
								value="${userDTO.user_email}" />
						<ul>
							<li><label for="userName">이름</label></li>
							<li>${userDTO.user_name }</li>
							<li><label for="userEmail">이메일</label></li>
							<li>${userDTO.user_email }</li>
							<li><label for="userPhone">휴대폰 번호</label></li>
							<li>${userDTO.user_phone }</li>
							<li><label for="userimage">이미지</label></li>
							<c:choose>
								<c:when test="${userDTO.user_image != null}">
									<li><img id="user_picture"
										src="/sms/temp/${userDTO.user_image}" /></li>
								</c:when>
								<c:otherwise>
									<li><img id="user_picture" src="./img/userpicture.png" /></li>
								</c:otherwise>
							</c:choose>
							<li></li>
							<li><input type="button" id="settingUser" value="설정 하기"
								class="btn btn-danger" /></li>
						</ul>
					</div>
				</form>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->
