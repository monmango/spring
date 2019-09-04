$(document).ready(function() {
	$('#btn').on('click', process);

});// end ready

function process() {
	$.ajax({
		type : 'GET',
		dataType : 'xml',
		url : 'searchProcess.do?data=' + $('#data').val(),
		success : viewMessage,
		error : function(shr, status, error) {
			alert(error);
			alert(xhr);
			alert(status);
		}
	})
}// end process()

function viewMessage(res) {
	var empBean = $(res).find('employee');
	var chaild = $('#wrap').empty();
	$("#wrap").append(
			"<tr>" + "<th>first_name</th>" + "<th>email</th>"
					+ "<th>hire_date</th>" + "<th>salary</th>");
	$.each(empBean, function(index, value) {
		$("#wrap").append(
				"<tr><td>" + $(value).find('first_name').text() 
				+ "<td>" + $(value).find('email').text() + "</td>" 
				+ "<td>" + $(value).find("hire_date").text().substr(0, 10) + "</td>" 
				+  "<td>" + $(value).find("salary").text() + "</td></tr>");
	})
}// end viewMessage()
