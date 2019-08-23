<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>update.jsp</title>
</head>
<body>
	<form action="update.html" name="frm" method="post">
		<p><input type="hidden" name="num" value="${dto.num }"/></p>
		<p><input type="text" name="name" value="${dto.name }"/></p>
		<p><input type="text" name="age" value="${dto.age }"/></p>
		<p><input type="text" name="loc" value="${dto.loc }"></p> 
		<p><input type="submit" value="commit"/>
		
	</form>
</body>
</html>