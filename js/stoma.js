
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
	  
	  var startXpos = 350;
	  var startYpos = 750;
	  
	  var offsetXposMinus = startXpos - 50;
	  var offsetXposPlus = startXpos + 50;
	  
	  var offsetYposMinus = startYpos - 50;
	  var offsetYposPlus = startYpos + 50;
	  
	  
	  var offsetXPos = parseInt( ui.offset.left );
	  var offsetYPos = parseInt( ui.offset.top );
	  
	  if (offsetXPos > offsetXposMinus && offsetXPos < offsetXposPlus && offsetYPos > offsetYposMinus && offsetYPos < offsetYposPlus )  {
		alert( "Correct! \n\nOffset: (" + offsetXPos + ", " + offsetYPos + ")\n");
	  //} else if () {
	    // alert( "grey! \n\nOffset: (" + offsetXPos + ", " + offsetYPos + ")\n");
	  } else {
		   alert( "Wrong! \n\nOffset: (" + offsetXPos + ", " + offsetYPos + ")\n");
	  }
  }
  
  
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