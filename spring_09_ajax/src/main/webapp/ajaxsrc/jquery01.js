$(document).ready(function(){
	$('#btn').on('click', function(){
		$.ajax({
			type:'GET',
			dataType:'json',
			url:'searchOpen.do?search='+$('#search').val(),
			success:viewMessage
		});
	});
});

function viewMessage(res){
	   $('#wrap').empty();
	   $('#wrap').append('<table><tr><th>title</th><th>image</th>'+'<th>author</th><th>price</th></tr></table>');
	   
	   $.each(res.documents, function(index, value){
	      $('#wrap table').append(
	         "<tr><td>"+value.title+
	         "</td><td><a href='"+value.url+"'><img src='"+value.thumbnail+"'/></a></td><td>"
	         +value.authors+"</td><td>"+value.price+"</td></tr>"
	      );
	   });
}//end viewMessage()