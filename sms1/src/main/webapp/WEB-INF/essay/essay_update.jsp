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
	$('#u_btn').on('click', updateRun);
})

function updateRun() {
	$('.frm').attr('action', "essayUpdate.es").submit();
}


</script>
</head>
<body>

<form action="essayUpdate.es" name="frm" method="post" class="frm">
		<div>
			<div>
				<label for="essay_subject">Title</label> 
				<input type="text"name="essay_subject" id="essay_subject" class="essay_subject" value="${essayDto.essay_subject }"/>
			</div>
			<div>
				<label for="essay_content">content</label> 
				<input type="text" name="essay_content" id="essay_content" class="essay_content" value="${essayDto.essay_content }"/>
			</div>
		</div>
		<input type="hidden" name="essay_num" value="${essayDto.essay_num }">
		<input type="button" id="u_btn" value="수정" />
</form>
</body>
</html>