$( document ).ready(function() {
	$("#myform").validate({
	  submitHandler: function(form) {
		$(form).submit();
	  }
	});
	 
	// Show and hide question conformation 
	$( ".select-button" ).click(function() {
	   $( ".question-info" ).hide();
	   $( ".question-confirm" ).show();
	});
	 
	$( ".choose-button" ).click(function() {
	   $( ".question-info" ).show();
	   $( ".question-confirm" ).hide();
	}); 
});