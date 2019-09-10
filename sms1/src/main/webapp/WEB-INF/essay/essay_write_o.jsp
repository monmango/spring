<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>essay_write.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#w_btn').click(function(){
			if($('#essay_subject').val() == "" ||  $('#essay_content').val() ==  ""){
				return false;
			}else {
			$('form[name=frm]').submit();
			}
		});
	});
</script>
</head>
<body>



	<form action="essayWrite.es" name="frm" method="post">
		<div>
			<div>
				<label for="essay_subject">Title</label> <input type="text"
					name="essay_subject" id="essay_subject" class="essay_subject" />
			</div>
			<div>
				<label for="essay_content">content</label> <input type="text"
					name="essay_content" id="essay_content" class="essay_content" />
			</div>
			<input type="button" id="w_btn" value="글쓰기">
		</div>
	</form>
</body>
</html>