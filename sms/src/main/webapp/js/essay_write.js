var urno = '';
var fileList = [];

$(document).ready(function() {
	$('#submit').on('click', essay_img_insert);
// 내PC 첨부파일 시작////////////////////
	var userfile = '';
	$('#userpc').on('click', function() {
		userfile = $('<input type="file" />');
		userfile.click();
		userfile.change(function() {
			var partname = $(userfile[0]).val().substring($(userfile[0]).val().lastIndexOf("\\")+1);
			console.log(partname);
			var str = '<p><input type="checkbox" />' + partname + '</p>';
			$('.fileDrop').append(str);
			fileList.push(userfile[0].files[0]);
			console.log(fileList);
			});
	});// 내PC 첨부파일끝///////////////////////

					
	// 첨부파일 드래그 시작///////////////
	var obj = $('.fileDrop');
	var win = $('.fileDrop');
	win.on('dragover', function(e) {
	// dragover, dragenter은 되지만 drop이 안되므로 preventDefault()
	// 메소드를 호출한다.
	e.preventDefault();
	/*$(this).css('border', '1px solid #0B85A1');});*/
	});
	win.on('drop', function(e) {
		e.preventDefault();
		// $(obj).empty();
		var files = e.originalEvent.dataTransfer.files;
		for (i = 0; i < files.length; i++) {
			obj.append('<p><input type="checkbox" />' + files[i].name + '</p>');
			fileList.push(files[i]);
			}
	});
	// 첨부파일 드래그 끝///////////////

	// 첨부파일 삭제 시작////
	$(document).on('click', '.fileDrop input', function() {
		if ($(this).prop('checked')) {
			fileList.pop($(this).index());
			$(this).parent().remove();
		}
	});
	// 첨부파일 삭제 끝///////////////////

});// end ready()////////////////////////////

	function essay_img_insert() {
		if ($('#essay_subject').val() == '') {
			alert('Subject');
			return false;
		}
		if ($('#essay_content').val() == '') {
			alert('Content');
			return false;
		}
	
		var form_data = new FormData()
		form_data.append('essay_subject', $('#essay_subject').val());
		form_data.append('essay_content', $('#essay_content').val());
		console.log($('#essay_subject').val());
		
		/*다중첨부파일*/
		if(fileList){
			for(var index in fileList){
				form_data.append('filepath', fileList[index]);
			}
		}
	
		$.ajax({
			// 첨부파일이 있을때는 data, contentType, enctype, processData가 이런 폼으로 있어야한다.
			type : 'POST',
			dataType : 'json',
			url : 'essaywrite.do', /* 요청하면 data를 넘기다. */
			data : form_data,
			contentType : false,
			enctype : 'multipart/form_data',
			processData : false,
			
		})
		fileList = [];

	}// end essay_img_insert()
