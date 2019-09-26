<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
#meeting{
	width: 300px;
	hegith: 200px;
}

</style>
<title>Insert title here</title>
</head>
<body>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
</script>

<div id="meeting">
	<h3>내가 참여한 모임</h3>
 	<c:forEach var="meeting" items="${meetingInfoList }">
 	 <c:url var="mpath" value="detail.do">
 			<c:param name="meeting_num" value="${ meeting.meeting_num}"/>
			<c:param name="mentor_num" value="${meeting.mentor_num }"/>
 		</c:url>  		
 		<p><a href="${mpath}" >모임명: ${ meeting.meeting_title}</a></p>
 		<p>모임 내용 :${ meeting.meeting_comment}</p>
		</hr>
 	</c:forEach>
</div>

<div id="follow">
<h3>내가 팔로우 한 멘토</h3>
	<c:forEach items="${mymentorInfo}" var="mlist" begin="0" end="2">
		<div id="follower">
			<a href="mentor_view.do?num=${mlist.mentor_num}"
				style="text-decoration: none;">
				<p>
					<span class="card-name">${mlist.mentor_name}</span>&nbsp; <small>멘토</small>
				</p>
			</a>
		</div>
	</c:forEach>
</div>

</body>
</html>