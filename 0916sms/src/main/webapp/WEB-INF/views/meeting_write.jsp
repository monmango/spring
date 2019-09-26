<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<script type="text/javascript">
	$(document).ready(function() {
		$("#meeting_file").change(function() {
			readURL(this);
		});
		
	});

	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#foo').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
<style type="text/css">
.mewiret {
	width: 10%;
	margin: 0 auto;
	margin-top: 30px;
}

#body {
	width: 30%;
	margin: 0 auto;
	margin-top: 20px;
}

#body .name {
	margin: 0 auto;
}

.m_name #foo {
	float: right;
	position: relative;
	margin-top: -50px;
}

.m_name #address {
	float: right;
}

#body  .btn_1 {
	padding: 9px 45px;
	border: none;
	background-color: #212631;
	font-weight: 600;
	text-transform: uppercase;
	font-size: 13px;
	color: #fff;
	-webkit-transition: 0.2s opacity;
	transition: 0.2s opacity;
}

#body .btn {
	width: 100%;
	padding: 9px 45px;
	border: none;
	background-color: #212631;
	font-weight: 600;
	text-transform: uppercase;
	font-size: 13px;
	color: #fff;
	-webkit-transition: 0.2s opacity;
	transition: 0.2s opacity;
}
</style>

	<!-- body -->
	<h3 class="mewiret">모임글 작성</h3>
	<form id="body" name="frm" class="meeting" action="write.do"
		method="post" enctype="multipart/form-data">
		<img id="foo" src="#" style="max-width: 100%; height: 300px;">
		<div class="m_name">
			<label for="meeting">이미지</label> <input class="form-control"
				type="file" name="meeting_file" id="meeting_file"
				style="width: 220px;" />
		</div>
		<br />
		<div class="m_name">
			<label for="meeting">모임명</label> <input type="text"
				name="meeting_title" class="form-control" id="meeting_title"
				placeholder="모임명을 입력하세요">
		</div>
		<br />
		<div class="m_name">
			<label for="meeting">소개글</label> <input type="text"
				name="meeting_introduction" class="form-control"
				id="meeting_introduction" placeholder="소개글을 입력하세요">
		</div>
		<br />
		<div class="m_name">
			<label for="meeting">날짜 와 시간</label> <input class="form-control"
				id="meeting_date" name="meeting_date" type=datetime-local />
		</div>
		<br>
		<div class="m_name">
			<label for="meeting">장소명</label> <input type="text"
				name="meeting_place" class="form-control" id="meeting_place"
				placeholder="장소명을 입력하세요">
		</div>
		<br />
		<div class="m_name">
			<label for="meeting">인원수</label> <input type="text"
				name="meeting_recruitment" class="form-control"
				id="meeting_recruitment" placeholder="인원수을 입력하세요">
		</div>
		<br />
		<div class="m_name">
			<label for="meeting">주소</label> <input type="text"
				class="form-control" id="meeting_address" name="meeting_address"
				placeholder="주소"> <input type="button" class="btn_1"
				onclick="sample5_execDaumPostcode()" value="주소 검색" id="address"><br>
		</div>
		<br />

		<div class="m_name">
			<label for="meeting">참가비</label> <input type="text"
				name="meeting_price" class="form-control" id="meeting_price"
				placeholder="참가비을 입력하세요">
		</div>
		<br />
		<div class="m_name">
			<label for="meeting">프로그램 내용</label>
			<textarea class="form-control" id="meeting_comment"
				name="meeting_comment" rows="13" cols="40" style="resize: none;"></textarea>
		</div>
		<br />
		<button id="bt" type="submit" class="btn">신청하기</button>
	</form>
	<!-- /body -->
	
	<script>
		function sample5_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					var addr = data.address; // 최종 주소 변수

					// 주소 정보를 해당 필드에 넣는다.
					document.getElementById("meeting_address").value = addr;
					// 주소로 상세 정보를 검색
					geocoder.addressSearch(data.address, function(results,
							status) {
						// 정상적으로 검색이 완료됐으면
						if (status === daum.maps.services.Status.OK) {

							var result = results[0]; //첫번째 결과의 값을 활용

							// 해당 주소에 대한 좌표를 받아서
							var coords = new daum.maps.LatLng(result.y,
									result.x);
							// 지도를 보여준다.
							mapContainer.style.display = "block";
							map.relayout();
							// 지도 중심을 변경한다.
							map.setCenter(coords);
							// 마커를 결과값으로 받은 위치로 옮긴다.
							marker.setPosition(coords)
						}
					});
				}
			}).open();
			
			
		}
	</script>

