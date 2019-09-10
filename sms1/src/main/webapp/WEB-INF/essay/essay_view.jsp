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
	$('#u_btn').on('click', updateRun);
	$('#d_btn').on('click', deleteRun);
	$('#l_btn').on('click', listRun);
})

function updateRun() {
	$('.frm').attr('action', "essayUpdate.es").submit();
}
function deleteRun() {
	$('.frm').attr('action', "essayDelete.es").submit();
}
function listRun() {
	$('.frm').attr('action', "essaylist.es").submit();
}

</script>
</head>
<body>
	<div>
		<div>
			<p>멘토 번호: ${essayDto.mentor_num }</p>
		</div>
		<div>
			<p>에세이 번호: ${essayDto.essay_num }</p>
		</div>
		<div>
			<p>작성일 : ${essayDto.essay_date }</p>
		</div>
		<div>
			<p>제목: ${essayDto.essay_subject }</p>
		</div>
		<div>
			<p>내용: ${essayDto.essay_content }</p>
		</div>
		<div>
			<p>추천수: ${essayDto.essay_hit }</p>
		</div>
	</div>
	<div>
	<form class="frm" method="post">
		<input type="text" name="currentPage" id="currentPage" value="${currentPage}" />	
		<input type="text" name="essay_num" value="${essayDto.essay_num }" /> 
		 
		<input type="button" id="l_btn" value="리스트" /> 
		<input type="button" id="u_btn" value="수정" />
		<input type="button" id="d_btn" value="삭제"	/>
	</form>
			
	</div>
</body>
</html>