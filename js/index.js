$(document).ready(function(){
	$('.parallax').parallax();
	$('.scrollspy').scrollSpy();
	$('.request-form').submit(function(e) {
		e.preventDefault();
		Materialize.toast('Заявка отправлена!', 4000);
	});
});