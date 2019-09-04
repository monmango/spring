<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>essay_list.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/* 	$('#w_btn').click(function(){
		 location.href = "/essay_list.jsp";
		 }); */
	});
</script>
<!-- <link rel="stylesheet" href="css/essay_list.css"> -->
<style type="text/css">
/* 페이지 관련  시작*/
.pagelist a {
	text-decoration: none;
	color: black;
}

.pagelist a:hover, .pagelist .pagecolor {
	text-decoration: underline;
	color: red;
}
/* 페이지 관련  끝*/
.wrap {
	box-sizing: border-box; width : 1026px;
	margin: auto;
	width: 1026px;
}

.wrap .e_list {
	border-radius: 15px;
	border: 0px solid;
	box-shadow: 3px 3px 3px #aaa;
	width: 300px;
	height: 430px;
	float: left;
	display: inline-block;
	margin: 20px;
	
}

.wrap .e_list .inf {
	height: 80px;
	display: flex;
}

.wrap .e_list .e_num {
	width: 30px;
}

.wrap .e_list .e_num img {
	border-radius: 50%;
	height: 60px;
	padding: 7px;
}

.wrap .e_list .comp {
	display: flex;
	flex-direction: column;
}

.wrap .e_list .comp .co {
	height: 50%;
}

.wrap .e_list .date {
	justify-content: flex-end;
	width: 80px;
}

.wrap .e_list .content {
	height: 320px;
	display: flex;
	flex-direction: column;
}

.wrap .e_list .content .con_t {
	height: 100px;
}

.wrap .e_list .content .con_c {
	height: 270px;
}

.wrap .e_list .com {
	height: 30px;
	display: flex;
	justify-content: flex-start;
}

.pagelist {
	clear: both;
}
</style>

</head>
<body>

	<a href="essayWrite.es">글쓰기</a>
	<div>
		<div class="wrap">
		<h1>에세이</h1>
			<c:forEach items="${e_list }" var="dto">
				<div class="e_list">
					<div class="inf">
						<div class="e_num">
							<img alt="montor" src="img/mentor.jpg">
						</div>
						<div class="comp">
							<div class="co">${dto.mentor_num }</div>
							<div class="co">회사</div>
						</div>
						<div class="date">${dto.essay_date }</div>
					</div>

					<div class="content">
						<div class="con_t">
							<h2>${dto.essay_subject }</h2>
						</div>
						<div class="con_c">${dto.essay_content }</div>
					</div>

					<div class="com">
						<div>
							<img alt="" src="">${dto.essay_hit }</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<div class="pagelist">
		<!-- 이전 출력 시작 -->
		<c:if test="${pv.startPage > 1 }">
			<a href="essaylist.es?currentPage=${pv.startPage-pv.blockPage }">이전</a>
		</c:if>
		<!-- 이전 출력 끝 -->
		<!-- 페이지 출력 시작 -->
		<c:forEach var="i" begin="${pv.startPage }" end="${pv.endPage }">

			<span> <c:url var="currPage" value="essaylist.es">
					<c:param name="currentPage" value="${i }" />
				</c:url> <c:choose>
					<c:when test="${i == pv.currentPage }">
						<a href="${currPage }" class="pagecolor"> <c:out value="${i }" />
						</a>
					</c:when>
					<c:otherwise>
						<a href="${currPage }"><c:out value="${i }" /> </a>
					</c:otherwise>
				</c:choose>
			</span>
		</c:forEach>
		<!-- 페이지 출력 끝 -->
		<!-- 다음 출력 시작 -->
		<c:if test="${pv.totalPage > pv.endPage }">
			<a href="essaylist.es?currentPage=${pv.startPage+pv.blockPage }">다음</a>
		</c:if>
		<!-- 다음 출력 끝 -->
	</div>
</body>
</html>