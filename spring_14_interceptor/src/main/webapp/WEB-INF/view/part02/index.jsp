<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" type="text/css" href="css/header.css" />
<script type="text/javascript" src="js/header.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		var chk = "${empty sessionScope.chk}" == 'true' ? true : false;
		init(chk);
	});
</script>
</head>
<!-- 정정페이지 구현은 webapp에서 구현한다. -->
<body>
	<p id="loginPage">
		<a href="login.do?returnUrl=${param.returnUrl }" >Login</a>
	</p>
	<p id="logOutPage">
		<a href="logout.do">Logout</a>
	</p>
	<div>
		<p>index page</p>
	</div>
</body>
</html>