$( document ).ready(function() {
  // Draggable code
  $( ".target" ).draggable({
    cursor: 'move',
    stop: handleDragStop
  });
 
  function handleDragStop( event, ui ) {  
  
	  var startXpos = parseInt(xposition);
	  var startYpos = parseInt(yposition);
	 
	  var offsetXposMinus = startXpos - 50;
	  var offsetXposPlus = startXpos + 50;
	 
	  var offsetYposMinus = startYpos - 50;
	  var offsetYposPlus = startYpos + 50;
	  
	  // alert(offsetXposMinus + " " + offsetXposPlus + " " + offsetYposMinus + " " + offsetYposPlus);
	  
	  window.offsetXPos = parseInt( ui.offset.left );
	  window.offsetYPos = parseInt( ui.offset.top );
	  
	  window.isCorrect = "false";
	  
	  if (offsetXPos > offsetXposMinus && offsetXPos < offsetXposPlus ) {
		  var xWithinLimit = "true";
	  }
	  
	  if (offsetYPos > offsetYposMinus && offsetYPos < offsetYposPlus) {
		  var yWithinLimit = "true";
	  }
	  
	  if (xWithinLimit == "true" && yWithinLimit == "true") { 
		   alert( "Correct! \n\nOffset: (" + offsetXPos + ", " + offsetYPos + ")\n");
		   window.isCorrect = "true";
	  } else {
		   alert( "Wrong! \n\nOffset: (" + offsetXPos + ", " + offsetYPos + ")\n");
		   window.isCorrect = "false";
	  }
  }




	
	$( ".confirm-button" ).click(function() {
	  // $( ".question-info" ).show();
	  // $( ".question-confirm" ).hide();
	   
	      var testD = 579;
	   
		  var correct = isCorrect;
		  var x = offsetXPos;
		  var y = offsetYPos;
		  var testData = globalTestData;
		  
		  //alert(correct + " " + x + " " + y + " " + testData);

		  $.ajax({
			  type:"post",
			  url:"add-xy.php",
			  data:"correct="+correct+"&x="+x+"&y="+y+"&test="+testData,
			  success:function(data){
				 //$("#info").html(data);
				 //alert(data);
			  }

		  });
	   
	 }); 
 
});