<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardView.jsp</title>

<style type="text/css">
.modifyShow {
	display: block;
	position: absolute;
	/*  top: 150px; */
	left: 200px;
	width: 400px;
	height: 150px;
	z-index: 1000;
	border: 1px solid black;
	background-color: yellow;
	text-align: center;
}

.modifyHide {
	visibility:hidden;
	width:0px; 
	height:0px;	
} 
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.js"></script>
<script type="text/javascript">
	var urno='';
	$(document).ready(function(){
		//수정 모달 숨기기
		$('#modifyModal').addClass('modifyHide');
		
		//댓글 추가
		$('#replyAddBtn').on('click', reply_list);
		
		//댓글 삭제 수정 이벤트 등록
		$(document).on('click', '.timeline button', reply_update_delete);
		
		//모달창 닫기
		$('#btnClose').on('click', function(){
			$('#modifyModal').removeClass('modifyShow');
			$('#modifyModal').addClass('modifyHide');
			$(document).on('click', '.timeline button', reply_update_delete);
			urno = '';
		});		
		
		//모달창에 수정버튼
		$('#btnModify').on('click', reply_update_send);
		
	});// end ready()
	
	function reply_update_send(){
		$.ajax({
			type:'GET',
			dataType:'json',
			url:"replyUpdate.do?bno=${boardDTO.bno}&rno="+urno+"&replytext="+$('#updateReplyText').val(),
			success:reply_list_result
		});
		$('#updateReplyText').val('');
		$('#modifyModal').removeClass('modifyShow').addClass('modifyHide');
		$(document).on('click','.timeline button', reply_update_delete);
		urno='';
	}// end reply_update_send()

	function reply_update_delete(){
		if($(this).text()=='delete'){
			var drno = $(this).prop("id");// 삭제시 지역 변수로 사용 / 1회성
			$.ajax({
				type:'GET',
				dataType:'json',
				url:'replyDelete.do?bno=${boardDTO.bno}&rno=' + drno,
				success:reply_list_result
			})
		}else if($(this).text()=='update'){
			urno = $(this).prop("id")//수정시 멤버변수에 저장 필요함
			var stop = $(window).scrollTop();
			$('#modifyModal').css('top', 50+stop);
			$('#modifyModal').removeClass('modifyHide');
			$('#modifyModal').addClass('modifyShow');
			//$('#modifyModal').removeClass('modifyHide').addClass('modifyShow');
			$(document).off('click', '.timeline button');
		}
	}
	
	function reply_list(){
		if($('#newReplyWriter').val()==''){
			alert('writer를 작성하세요');
			return false;
		}
		if($('#newReplyText').val()==''){
			alert('Reply Text를 작성하세요');
			return false;
		}
		
	$.ajax({
		type:'POST',
		dataType:'json',
		url:'replyInsertList.do', /* 요청하면 data를 넘기다. */
 		data:"bno=${boardDTO.bno}" + "&replyer=" + $('#newReplyWriter').val() + "&replytext=" + $('#newReplyText').val(),
		success:reply_list_result
	})
	
	}// end reply_list()

	Handlebars.registerHelper("newDate", function(timeValue){
		var dateObj = new Date(timeValue);
		var year = dateObj.getFullYear();
		var month = dateObj.getMonth() + 1;
		var date = dateObj.getDate();
		return year + "/" + month + "/" + date;
	})// end registerHelper()
	
	
	function reply_list_result(res){
		/* console.log(res); */
		$('.timeline .time_sub').remove(); /* empty() 자손만 삭제 ,remove() 전체 삭제 */
		$('#replycntSmall').text('['+res.length+']');
		$.each(res,function(index, value){
			var source = '<li class="time_sub" id="{{rno}}"><p>{{replyer}}</p>'
						+ '<p>{{replytext}}</p><p>{{newDate regdate}}</p>' /*  {{newDate regdate}} 값을  registerHelper() 찾아서 다시 reply_list_result으로 리턴해준다.*/
						+ '<p><button id="{{rno}}">delete</button> '
						+ '<button id="{{rno}}">update</button></p></li>';
			var template = Handlebars.compile(source);
			$('.timeline').append(template(value));
			
					
			/*$('.timeline').append('<li class="time_sub" id="'+ value.rno + '"><p>' + value.replyer
					+ '</p><p>' + value.replytext
					+ '</p><p>' + new Date(value.regdate)
					+ '</p><p><button id="'+ value.rno
					+ '">delete</button><button id="'
					+ value.rno + '">update</button></p></li>');*/
		});
	}
	
</script>
</head>
<body>

	<div class="wrap">
		<!-- class="box-body" 시작 -->
		<div class="box-body">
			<div class="form-group">
				<label>Title</label> <input type="text" name="title"
					value="${boardDTO.title}" readonly="readonly">
			</div>
			<div class="form-group">
				<label>Content</label>
				<textarea name="content" rows="3" readonly="readonly">${boardDTO.content}</textarea>
			</div>
			<div class="form-group">
				<label>Writer</label> <input type="text" name="writer"
					value="${boardDTO.writer}" readonly="readonly">
			</div>

		</div>
		<!-- class="box-body"끝-->

		<!-- class-"box-footer" 시작 -->
		<div class="box-footer">
			<button type="submit" id="modifyBtn">Modify</button>
			<button type="submit" id="removeBtn">REMOVE</button>
			<button type="submit" id="goListBtn">GO LIST</button>
		</div>
		<!-- class-"box-footer" 끝-->
		<hr />


		<!--  box box-success 시작 -->
		<div class="box box-success">
			<div class="box-header">
				<h3 class="box-title">ADD NEW REPLY</h3>
			</div>

			<div class="box-body">
				<label for="newReplyWriter">Writer</label> 
				<input class="form-control" type="text" placeholder="USER ID" id="newReplyWriter">
				<label for="newReplyText">Reply text</label> 
				<input class="form-control" type="text" placeholder="REPLY TEXT" id="newReplyText">
			</div>

			<div class="box-footer">
				<button type="button" class="btn btn-primary" id="replyAddBtn">ADD REPLY</button>
			</div>
		</div>
		<!--  box box-success 끝 -->
		
		<hr/>
		
		<ul class="timeline">
			<li class="time-label" id="repliesDiv">
			<span class="bg-green">Replies List
			<small id="replycntSmall">
			[${fn:length(boardDTO.replyList) }]
			</small></span></li>
			<c:forEach items="${boardDTO.replyList }" var="replyDTO">
				<li class="time_sub" id="${replyDTO.rno }">
					<p>${replyDTO.replyer }</p>
					<p>${replyDTO.replytext }</p>
					<p><fmt:formatDate value="${replyDTO.regdate }" pattern="yyyy/MM/dd" dateStyle="short"/></p>
					<p><button id="${replyDTO.rno }">delete</button>
					<button id="${replyDTO.rno }">update</button></p>
				</li>
			</c:forEach>
		</ul>
	</div>
	
	<!-- Update Modal -->
	<div id="modifyModal">
		<p>
			<label for="updateReplyText">Reply Text</label>
			<input class="form-control" type="text" placeholder="REPLY TEXT" id="updateReplyText">
		</p>
		<p>
			<button id="btnModify">Modify</button>
			<button id="btnClose">Close</button>
		</p>	
	</div>
</body>
</html>