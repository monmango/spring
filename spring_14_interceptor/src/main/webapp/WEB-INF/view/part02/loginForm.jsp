<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var returnUrl = "${param.returnUrl }" ;
	if(returnUrl != "")
		alert(returnUrl + "요청한 페이지는 회원에게만 제공됩니다.");
});
</script>
</head>
<body>	
	<form action="logpro.do" name="frm" method="post">
		<p>
			<label for="id">ID</label>
			<input type="text" name="id" />
		</p>
		<p>
			<label for="pass">PW</label>
			<input type="password" name="pass" />
		</p>
		<p>
			<input type="text" name="returnUrl" value="${param.returnUrl }" />
			<input type="submit" value="Login" />
		</p>		
	</form>
</body>
</html>