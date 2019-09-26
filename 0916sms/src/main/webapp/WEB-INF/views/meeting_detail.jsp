<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">

.meeting_form{
	width:50%;
	margin:0 auto;
	margin-top: 20px;
}


.meeting_form #li{
	width:110%;
	margin: 0 auto;
}


.meeting_form .container .list-group{
	width: 70%;
	margin: 0 auto;
}

.meeting_form .li .h4{
	width:70%;
	margin: 0 auto;
}

.meeting_form .moli{

	margin-left: 90px;
}
.meeting_form .mentor{
	float: right;
}

.meeting_form .name{
	width:80%;
	margin: 0 auto;
	margin-top: 20px;
}
.meeting_form .name .btn{
	margin-left:10px;
}
.meeting_form .program{
	width:80%;
	margin: 0 auto;
	display: block;
	margin-top: 20px;
}
.meeting_form #notice{
	width:80%;
	margin: 0 auto;
	margin-top: 20px;
}
.meeting_form #place{
	width:80%;
	margin: 0 auto;
	margin-top: 20px;
}
.meeting_form #li{
	width:80%;
	margin: 0 auto;
	margin-top: 20px;
}
.meeting_form .meeting_img{
	width:80%;
	height:300px;
	margin: 0 auto;
	margin-top: 20px;
}
.meeting_form .meeting_img img{
	position: relative; 
	top:0; 
	left: 0;
	width: 100%;
	height: 100%;
}

hr {
    color: #222222;    /* IE */
    border-color: #222222;  /* 사파리 */
    background-color: #222222;   /* 크롬, 모질라 등, 기타 브라우저 */
}

.meeting_form #bt{
	width:80%;
	margin: 0 auto;
	margin-top: 20px;
}

.meeting_form .mentor-box {
	margin: 50px 100px;
}

.meeting_form .mentor-image-circle {
	margin: 30px 30px 30px 30px;
	display: inline-block;
	float: left;
	/* background-color: yellow;  */
}

.meeting_form .mentor-image-circle img {
	border-radius: 50%;
	border: 2px solid #ccc;
}

.meeting_form .mentor-info {
	margin: 30px 0 0 100px;
	display: inline-block;
	width: 50%;
	/* background-color: red;  */
}

.meeting_form .mentor-name {
	color: rgba;
	font-size: 30px;
	font-weight: bold;
	font-size: 30px;
}

.meeting_form .mentor-name small {
	font-size: 50%;
	color: #6d6d72;
}

.meeting_form .mentor-job {
	margin: 8px 0;
}

.meeting_form .btn-container {
	margin-top: 15px;
}

.meeting_form .detail-box {
	margin: 35px 0;
	padding: 15px 0;
	border-top: 1px solid #c8c7cc;
	border-bottom: 1px solid #c8c7cc;
}

.meeting_form .mentoring-info {
	margin-top: 15px;
}

.meeting_form .detail-box #block-title {
	font-weight: bold;
	margin: 35px 15px 10px;
}

.meeting_form .detail-box #block-content {
	padding: 0 15px;
}

.meeting_form .mentor-box {
	width: 260%;
	margin: 0 auto;
	display: inline-block;
	margin-left: 60px;
}
.meeting_form .moli {
	margin-left: 90px;
}


.meeting_form .mentor-box .card {
	border: 1px solid #ccc;
	border-radius: 10px;
	padding: 10px;
	margin: 5px;
	display: block;
}

.meeting_form .mentor-box .card img {
	border-radius: 50%;
	border: 2px solid #ccc;
	position: relative;
}

.meeting_form .mentor-box .card:hover {
	background-color: #E0F2F7;
}

.meeting_form .mentor-box .card-field {
	/* display: block; */
	background-color: #4BB92F;
	font-size: 13px;
	text-transform: uppercase;
	padding: 3px 10px;
	font-weight: 600;
	border-radius: 2px;
	margin-right: 15px;
	color: #FFF;
	-webkit-transition: 0.2s opacity;
	transition: 0.2s opacity;
	text-align: right;
	float: right;
}

.meeting_form .mentor-box .card-name {
	font-size: 23px;
	font-weight: bold;
}

.meeting_form .mentor-box .card-info, .card-job {
	text-align: right;
	display: block;
	margin-right: 15px;
}

..meeting_form .mentor-box .card-job {
	font-size: 13px;
}

.meeting_form .mentor-box #title {
	position: absolute;
	width: 35%;
	font-size: 12px;
	font-weight: bold;
	text-align: right;
	top: 50px;
	right: 42px;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	var userid = $('.userid').val();
	console.log(userid);
	var meuser = $('.meuser').val();
	console.log(meuser);
	$('#bt').hide();
	if(userid != meuser ){
		$('#bt').show();	
	}
	
	
	
});
</script>

	<input type="hidden" class="userid" value="${userId}"/>
	<input type="hidden" class="meuser" value="${meuser}"/>
	<!-- body -->
	<div class="meeting_form">
	<c:forEach items="${meeting}" var="dt">
		<div class="meeting_img">
			<img alt="" src="/sms/temp/${dt.meeting_img_name}" />
		</div>
		<br /><br/>
		<div id="title">
		<h3 class="text-center" >${dt.meeting_title}</h3>
		<p class="text-center">${dt.meeting_introduction}
		</p>
		</div>
		<br />

		<div id="li" class="deteli">
			<h4 class="h4" style="font-weight: bold;">기본정보</h4>
			<br>
			<ul class="list-group">
				<li class="list">일시 <span class="date" style="float: right;">${dt.meeting_date}</span></li>
				<hr/>
				<li class="list">장소 <span class="place" style="float: right;">${dt.meeting_place}</span></li>
				<hr/>
				<li class="list">모집인원 <span class="num" style="float: right;">${dt.meeting_recruitment}</span></li>
				<hr/>
				<li class="list">참가비 <span class="price" style="float: right;">${dt.meeting_price}</span></li>
			</ul>
		</div>
		<br/>
		<h4 class="moli" style="font-weight: bold;">참여멘토</h4>
		<div class="mentor-box">
			<c:forEach items="${mentor}" var="dm">
			<!-- post -->
					<div class="col-md-4">
						<a href="mentor_view.do?num=${dm.mentor_num}" style="text-decoration:none;">
							<div class="card">
								<span class="card-field">멘토 분야</span>
								<div id="title">${dm.mentor_sub}</div>
								<img src="/sms/temp/${dm.mentor_image}" alt="#"
									style="width: 100px; height: 100px;" />
								<div class="card-info">
									<span class="card-name">${dm.mentor_name}</span> <small>멘토</small>
								</div>
								<div class="card-job">${dm.mentor_co}&nbsp;${dm.mentor_dept}</div>
							</div>
						</a>
					</div>
			</c:forEach>
		</div>
		<br/>
		<div class="program" >
		<b style="font-weight: bold;">프로그램내용</b>
		<hr/>
		<p>${dt.meeting_comment}</p>
	</div>
		
		<div id="notice">
		<p style="font-weight: bold;">안내사항</p>
		<hr/>
		<ul>
        <li>1.확정된 분들에게는 참여 확정 안내 메일이 발송됩니다.</li>
        <li>2.사전 취소는 2일 전까지 가능합니다.</li>
        <li>3.무단 No-Show 시에는 참여 신청이 제한됩니다.</li>
        <li>4.주차지원은 불가능하니 대중교통을 이용해 주세요.</li>
      </ul>
      <br/>
	</div>
		<div id="place">
		<p>장소</p>
		<hr/>
		<b id="m_p">${dt.meeting_place}</b>
		<p id="m_d">${dt.meeting_address}</p>
		<div id="map" style="width:100%;height:350px;"></div>
	</div>
	</c:forEach>
	 <button id="bt" type="button" class="btn btn-primary btn-block">신청하기</button>
	</div>



	<!-- /body -->

	

<script type="text/javascript">
var address = document.getElementById('m_d').innerHTML; 
var point = document.getElementById('m_p').innerHTML; 
 var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch(address, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+point+'</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
