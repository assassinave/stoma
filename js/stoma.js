function touchHandler(event) {
    var touch = event.changedTouches[0];

    var simulatedEvent = document.createEvent("MouseEvent");
        simulatedEvent.initMouseEvent({
        touchstart: "mousedown",
        touchmove: "mousemove",
        touchend: "mouseup"
    }[event.type], true, true, window, 1,
        touch.screenX, touch.screenY,
        touch.clientX, touch.clientY, false,
        false, false, false, 0, null);

    touch.target.dispatchEvent(simulatedEvent);
    event.preventDefault();
}

function init() {
    document.addEventListener("touchstart", touchHandler, true);
    document.addEventListener("touchmove", touchHandler, true);
    document.addEventListener("touchend", touchHandler, true);
    document.addEventListener("touchcancel", touchHandler, true);
}

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
	

	// Submit forms
	$( "#submit-nurse" ).click(function() {
  		$( "#nurse-form" ).submit();
	});
	
	$( "#submit-admin" ).click(function() {
  		$( "#admin" ).submit();
	});
	
	init();
  $( ".target" ).draggable({
    cursor: 'move',
    containment: 'document',
    stop: handleDragStop
  });
  
  function handleDragStop( event, ui ) {
	  var offsetXPos = parseInt( ui.offset.left );
	  var offsetYPos = parseInt( ui.offset.top );
	  alert( "Drag stopped!\n\nOffset: (" + offsetXPos + ", " + offsetYPos + ")\n");
  }
	
});