<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style type="text/css">

*{
 margin: 0;
 padding: 0

}

.meeting_body {
	width: 80%;
	margin-left:280px;
	display:inline-block;
}
.meeting_body .meeting {
	width: 80%;
	margin: 0 auto;

}

.meeting_body .meeting .metable {
	width: 25%;
	height: 400px;
	float: left;
	margin: 0 auto;
	margin-left: 60px;
	margin-top: 50px;
}

.meeting_body .meeting .metable img {
	width: 100%;
	height: 190px;
	border: 1px solid #2E2E2E;
	margin: 0 auto;
}

.meeting_body .meeting .metable p {
	margin-top: 10px;
}

.meeting_body .meeting .metable .mm {
	margin-top: 10px;
}

.meeting_body .meeting .metable .mm  hr {
	color: #222222; /* IE */
	border-color: #222222; /* 사파리 */
	background-color: #222222; /* 크롬, 모질라 등, 기타 브라우저 */
	margin: 2px;
	padding: 0;
}

.meeting_body .meeting .metable .mm #m {
	float: right;
}

.meeting_body .meeting .metable .mento img {
	width: 45px;
	height: 45px;
	border-radius: 50%;
}

.meeting_body .meeting .metable .mento {
	display: flex;
}



.meeting_body .meeting .metable .mento div .mento_name {
	font-weight: bold;
	font-size: small;
}

.meeting_body .meeting .metable .mento #me_2 .mem {
	font-size: x-small;
	margin-left: 5px;
}

.meeting_body .meeting .metable .mento #me_2 span {
	margin: 0;
	padding: 0px;
}

.meeting_body .meeting .metable .mento #me_2 .so {
	display:block;
	font-size: small;
	margin-left: 10px;
}

.meeting_body .meeting .metable .mento .job {
	top: 5px;
	font-size: small;
}

.meeting_body .meeting .metable .mento .badge {
	float: right;
	width: 75px;
	height: 20px;
	margin-left: 120px;
}

.meeting_body .meeting .metable .mento .me_2 {
	border-bottom: 1px solid #222222;
}

.btn {
	padding: 9px 45px;
	border: none;
	background-color: #212631;
	font-weight: 600;
	text-transform: uppercase;
	font-size: 13px;
	color: #fff;
	margin-left: 410px;
	margin-top: 20px;
	-webkit-transition: 0.2s opacity;
	transition: 0.2s opacity;
}


.a{
	margin-top: -30px;
	margin-left: 975px;
}
</style>

<script type="text/javascript">

$(document).ready(function(){
	$('.a').hide();
	var mentor_um =$('.b').val();
	console.log(mentor_um);
	mentor_um = mentor_um*1; 
	if(mentor_um != 0){
		$('.a').show();	
	}
	
	
});


</script>

<a class="a" href="write.do"><input type="button" class="btn" value="작성하기"></a>
	<!-- body -->
	<input class="b" type="hidden" value="${user}"/>
	
	<div class="meeting_body">
		<form name="frm" class="meeting" action="list.do" method="get">
			<c:forEach items="${mm}" var="men">
				<c:forEach items="${men.meetingDTO}" var="mee">
					<a href="detail.do?meeting_num=${mee.meeting_num}">
						<div class="metable">
							<img alt="#" src="/sms/temp/${mee.meeting_img_name}"> <b
								class="title">${mee.meeting_title}</b>
							<p>${mee.meeting_introduction}</p>
							<div class="mm">
								<span><b>장소</b></span><span id="m">${mee.meeting_place}</span>
								<hr />

								<span><b>일시</b></span><span id="m">${mee.meeting_date}</span>
								<hr />
								<span><b>주최</b></span><span id="m">${men.mentor_co}</span>
							</div>
					</a>
					<a class="mentor_de" href="mentor_view.do?num=${men.mentor_num}" style="text-decoration: none;">
						<div class="mento" id="${men.mentor_num}">
							<div id="me_1">
								<img class="img-responsive" src="/sms/temp/${men.mentor_image}">
							</div>
							<div id="me_2">
								<span class="mento_name">${men.mentor_name}</span> <span
									class="mem">멘토</span> <span class="so">${men.mentor_career}</span>
							</div>

							<span class="badge ongoing-badge"
								style="background-color: green;"><div>모집중</div></span>
						</div>
					</a>
	</div>
	</c:forEach>
	</c:forEach>
	</form>

	</div>

