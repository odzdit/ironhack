$(document).on('ready', function(){
	window.alert("Some text");

	$('.button').on('click', function(){
		$('html').hide().fadeIn(3000)
	});
	
});