$(document).ready(function(){
	$('.parallax').parallax();
	$('.scrollspy').scrollSpy();

	var googleForm = $(window).jqGoogleForms({"formKey": "1-TcT0uIi8RlMqInjvKXKCcCwejKcI6bHBHskjqnP2XU"});
	$('.request-form').submit(function(e) {
		e.preventDefault();
		var email = $(this).find('#email').val();
		googleForm.sendFormData({
			"entry.1697207204": email
		});
		Materialize.toast('Заявка отправлена!', 4000);
	});
});