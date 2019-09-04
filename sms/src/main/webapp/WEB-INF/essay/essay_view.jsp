<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>essay_view.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#u_btn').on('click', function(){
		location.href="essay/essay_update";
	})
	
})
</script>
</head>
<body>
	<div>
		<div>
			<p>${essayDto.mentor_num }</p>
		</div>
		<div>
			<p>${essayDto.essay_num }</p>
		</div>
		<div>
			<p>${essayDto.essay_date }</p>
		</div>
		<div>
			<p>${essayDto.essay_subject }</p>
		</div>
		<div>
			<p>${essayDto.essay_content }</p>
		</div>
		<div>
			<p>${essayDto.essay_hit }</p>
		</div>
	</div>
	<div>
	<form action="essaylist.es" method="get">
		<input type="submit" value="back"/>
		<input type="button" id="u_btn" value="수정" />
		</form>
			
	</div>
</body>
</html>