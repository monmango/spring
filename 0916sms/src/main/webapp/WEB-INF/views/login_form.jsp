<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Font Icon -->
<link rel="stylesheet"
	href="../fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/signUpStyle.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>
<body>
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Log In</h2>
						<form method="POST" class="login-form" id="login-form"
							action="home.do">
							<div class="form-group">
								<label for="user_id"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="user_id" id="user_id" placeholder="Your Id" />
								<div id="id_check"></div>
							</div>
							<div class="form-group">
								<label for="user_pass"><i class="zmdi zmdi-email"></i></label> <input
									type="password" name="user_pass" id="user_pass"
									placeholder="Your Password" />
							</div>

							<!--         <div class="form-group">
                        <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                        <input type="password" name="reUser_Pass" id="reUser_Pass"
                           placeholder="Repeat your password" />
                     </div> -->

							<div class="form-group form-button">
								<input type="submit" name="login" id="login" class="form-submit"
									value="Login" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="./img/trip5.jpg" alt="sing up image">
						</figure>
						<a href="signUp.do" class="signup-image-link">Are you "Not" a
							member?</a>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>