<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#essay{

		width: 28%;
		margin-left: 4%;
		float: left;

	}
	
	#meeting{

		width: 28%;
		margin-left: 4%;
		float: left;
	}
	#follow{
	
		width: 28%;
		margin-left: 4%;
		float: left;
	}
	#essay .a{
		margin-left: 4px;
	}
	#all{
		margin-top:10px;
		
	}
	h2{
		text-align: center;
	}
	.eimg{
		width: 50px;
		height: 50px;
		float: left;
	}
	#essay::first-child{
		color: blue;
	}
	p{
		margin: 0;
	}
	hr{
		margin-top: 0px;
		margin-bottom: 5px;

	}
	.mimg{
		width: 50px;
		height: 50px;
		float: left;
	}
	#ffont{
		font-size: 20px;
	}
	footer{
		clear: both;
	}
}
</style>
</head>
<body>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
</script>
<div id="all">

<div id="essay">
	<h2>내가 쓴 에세이</h2>
	<c:forEach var="mn" items="${eassayInfoList }"> <!-- mentor_num -->
		<c:url var="epath" value="essay_view.do">
			<c:param name="essay_num" value="${mn.essay_num }"/>
			<c:param name="mentor_num" value="${mn.mentor_num }"/>
			<c:param name="essay_img" value="${mn.essay_img }"/>
		</c:url>
		
		<a href="${epath}" ><img src="/sms/temp/${mn.essay_img }" class="eimg"/>
		<p> &nbsp; 제목 : ${mn.essay_subject }</p><p> <br/>&nbsp;글 요약 : ${mn.essay_summary }</p></a>
		<br/>

	</c:forEach>
</div>
 <div id="meeting">
	<h2>내가 만든 모임</h2>
 	<c:forEach var="meeting" items="${meetingInfoList }">
 	 <c:url var="mpath" value="detail.do">
 			<c:param name="meeting_num" value="${ meeting.meeting_num}"/>
			<c:param name="mentor_num" value="${meeting.mentor_num }"/>
 		</c:url> 
 		<a href="${mpath }"><img src="/sms/temp/${meeting.meeting_img_name }" class="mimg"/></a>
 		<p><a href="${ mpath}" >모임명: ${ meeting.meeting_title}</a></p>
 		<p>모임 내용 :${ meeting.meeting_comment}</p>
 		<br/>

 	</c:forEach>
</div>
<div id="follow">
<h2>내가 팔로우 한 멘토</h2>
	<c:forEach items="${mymentorInfo}" var="mlist" begin="0" end="2">
		<div id="follower">
			<a href="mentor_view.do?num=${mlist.mentor_num}"
				style="text-decoration: none;">
				<p id="ffont">
					<i class="fa fa-user-circle-o" aria-hidden="true"></i>${mlist.mentor_name}&nbsp; <small>멘토</small>
				</p>
			</a>
		</div>
	</c:forEach>
</div>
</div>
</body>
</html>