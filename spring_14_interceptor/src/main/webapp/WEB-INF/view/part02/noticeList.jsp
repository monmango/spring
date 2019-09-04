<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>noticeList.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	process("${param.returnUrl}");
});
</script>
</head>
<body>
	<div id="body">
	<jsp:include page="logout.jsp"/>
	<p>noticeList</p>
	</div>
</body>
</html>