<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style type="text/css">
.section{
	margin-left: 35%;
	width: 600px;
}
.w3-input{
	width: 100%;
	resize: none;
	padding: 12px 20px;
 	margin: 8px 0;
 	display: inline-block;
 	border: 1px solid #ccc;
	border-radius: 4px;
  	box-sizing: border-box;
  	transition: 1.5s;
}

button{
  background:#1AAB8A;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}

button:hover{
  background:#fff;
  color:#1AAB8A;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #1AAB8A;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
}
</style>
<script type="text/javascript">
$(document).ready(function() {
	$("input:text[numberOnly]").on("keyup", function() {
	    $(this).val($(this).val().replace(/[^0-9]/g,""));
	});

	
	
	$('.w3-button').on('click', function(){
		if ($("input:checkbox[name='field_num']").is(":checked") == false){
			alert('멘토링 분야를 설정해주세요~');
			return false;
		}else{
			return true;
		}
			
		
	});
});
	

	
</script>

	<div class="section">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h1 style="text-align:center">멘토 지원하기</h1>
			</div>
			<br/><br/>
			<div>
				<form id="myForm" action ="signUpMento.do" method="POST">
					<div>
						<label>이름</label>
					</div>
					<div>
						<input class="w3-input" type="text" id="mentor_name" name="mentor_name" value="${userDTO.user_name}" required>
					</div>
					<br/>
					<div>
						<label>회사명</label>
					</div>
					<div>
						<input class="w3-input" type="text" id="mentor_co" name="mentor_co" required>
					</div>
					<br/>
					<div>
						<label>부서</label>
					</div>
					<div>
						<input class="w3-input" type="text" id="mentor_dept" name="mentor_dept" required>
					</div>
					<br/>
					<div>
						<label>직급</label>
					</div>
					<div>
						<input class="w3-input" type="text" id="mentor_level" name="mentor_level" required>
					</div>
					<br/>
					<div>
						<label>주요 경력</label>
					</div>
					<div>
						<textarea class="w3-input" rows="10" cols="50" name="mentor_career" required></textarea>
					</div>
					<br/>
					<div>
						<label>멘토링 분야</label>
					</div>
					<label>
						<input type="checkbox" name="field_num" value="1">직무&emsp;
						<input type="checkbox" name="field_num" value="2">진로&emsp;
						<input type="checkbox" name="field_num" value="3">스펙&emsp;
						<input type="checkbox" name="field_num" value="4">외국어&emsp;
						<input type="checkbox" name="field_num" value="5">면접/자소서<br/>
						<input type="checkbox" name="field_num" value="6">회사생활&emsp;
						<input type="checkbox" name="field_num" value="7">창업&emsp;
						<input type="checkbox" name="field_num" value="8">이직&emsp;
						<input type="checkbox" name="field_num" value="9">기타&emsp;
					</label>
					<br/>	<br/>
					
					<div>
						<label>멘토 소개</label>
					</div>
					<div>
						<textarea class="w3-input" rows="10" cols="50" name="mentor_info" required></textarea>
					</div>
					<br/>
					<div>
						<label>멘토에게 하고 싶은 말</label>
					</div>
					<div>
						<input class="w3-input" type="text" id="mentor_sub" name="mentor_sub" required>
					</div>
					<br/>
						<input class="w3-input" type="text" id="mentor_sub" name="mentor_image" value="${userDTO.user_image }">
					<br/>

					<button type="submit" class="w3-button" style="position:relative; margin-left:40%;" >제출</button>
				</form>
			</div>
		</div>
	</div>









