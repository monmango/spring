<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>essay_update.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
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

</body>
</html>