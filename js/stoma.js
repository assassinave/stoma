$( document ).ready(function() {

	// Submit forms
	$( "#submit-nurse" ).click(function() {
  		$( "#nurse-form" ).submit();
	});
	
	$( "#submit-admin" ).click(function() {
  		$( "#admin" ).submit();
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
	 
	$.validate();
	
});