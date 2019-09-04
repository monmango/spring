function init(chk){
	
	if(chk){
		console.log('aa');
		$('#loginPage').removeClass('hidePage').addClass('showPage');
		$('#logOutPage').removeClass('showPage').addClass('hidePage');
	}else {
		console.log('bb');
		$('#loginPage').removeClass('showPage').addClass('hidePage');
		$('#logOutPage').removeClass('hidePage').addClass('showPage');
	}
}// end init() 