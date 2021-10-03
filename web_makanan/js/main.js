$(document).ready(function(){
	$('#btn_open_navbar').on('click', function(){
		if($('.nav-list').hasClass('open')){
			$('.nav-list').removeClass('open')
		} else {
			$('.nav-list').addClass('open')
		}
	});
});