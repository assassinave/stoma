$( document ).ready(function() {

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
		   window.isCorrect = "true";
	  } else {
		   window.isCorrect = "false";
	  }
 }
 
 
 
 $( ".target2" ).draggable({
    cursor: 'move',
    stop: handleDragStop2
  });
 
  function handleDragStop2( event, ui ) {  
  
	  var startXpos = parseInt(xposition2);
	  var startYpos = parseInt(yposition2);
	 
	  var offsetXposMinus = startXpos - 50;
	  var offsetXposPlus = startXpos + 50;
	 
	  var offsetYposMinus = startYpos - 50;
	  var offsetYposPlus = startYpos + 50;
	  
	  // alert(offsetXposMinus + " " + offsetXposPlus + " " + offsetYposMinus + " " + offsetYposPlus);
	  
	  window.offsetXPos2 = parseInt( ui.offset.left );
	  window.offsetYPos2 = parseInt( ui.offset.top );
	  
	  window.isCorrect2 = "false";
	  
	  if (offsetXPos2 > offsetXposMinus && offsetXPos2 < offsetXposPlus ) {
		  var xWithinLimit = "true";
	  }
	  
	  if (offsetYPos2 > offsetYposMinus && offsetYPos2 < offsetYposPlus) {
		  var yWithinLimit = "true";
	  }
	  
	  if (xWithinLimit == "true" && yWithinLimit == "true") { 
		   window.isCorrect2 = "true";
	  } else {
		   window.isCorrect2 = "false";
	  }
 }


	
	$( ".confirm-button" ).click(function() {
		  var correct = isCorrect;
		  var x = offsetXPos;
		  var y = offsetYPos;
		  
		  var testData = globalTestData;
   
		  $.ajax({
			  type:"post",
			  url:"add-xy.php",
			  data:"correct="+correct+"&x="+x+"&y="+y+"&test="+testData,
			  success:function(data){
			  }
		  });
	 }); 
	 
	 
	 $( ".confirm-button" ).click(function() {
		  //var correct = isCorrect;
		  var x = offsetXPos;
		  var y = offsetYPos;
		  
		  var correct2 = isCorrect2;
		  var x2 = offsetXPos2;
		  var y2 = offsetYPos2;
		  
		  

			  
		  if (isCorrect == 'true' || isCorrect2 == 'true') {
			  correct  = "true";
		  } else {
			  correct  = "false";
		  }
		  
		  var testData = globalTestData;
   
		  $.ajax({
			  type:"post",
			  url:"add-xy-double.php",
			  data:"correct="+correct+"&correct2="+correct2+"&x="+x+"&y="+y+"&x2="+x2+"&y2="+y2+"&test="+testData,
			  success:function(data){
			  }
		  });
	 }); 
	 
	 
 
});