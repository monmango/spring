<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>insert.jsp</title>
</head>
<body>
	<form name="frm" action="insert.do" method="post">
		<p><span>이름</span><input type="text" name="name" /></p>
		<p><span>나이</span><input type="text" name="age" /></p>
		<p><span>지역</span><input type="text" name="loc" /></p>
		<p><input type="submit" value="삽입" />		
	</form>
</body>
</html>