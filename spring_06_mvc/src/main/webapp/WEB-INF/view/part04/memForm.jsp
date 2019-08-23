<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memForm.jsp</title>
</head>
<body>
	<p>member data</p>
	<form name="frm" action="mem.htm" method="post">
		<label for="fname" >이름</label>
		<input type="text" name="name" id="fname" value=""/>
		<label for="fage">나이</label>
		<input type="text" name="age" id="fage" value=""/>
		<input type="submit" value="send"/>
	</form>
</body>
</html>