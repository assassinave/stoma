<?php 
require_once 'inc/medoo.min.php';
$database = new medoo();

   $test = $_POST['test'];
	$correct = $_POST['correct'];
	$x = $_POST['x'];
	$y = $_POST['y'];
	
	
	$correct2 = $_POST['correct2'];
	$x2 = $_POST['x2'];
	$y2 = $_POST['y2'];
	
	
	$database->update("test", [
	 "correct"=>$correct,
	 "correct2"=>$correct2,
	 "x"=>$x,
	 "y"=>$y,
	 "x2"=>$x2,
	 "y2"=>$y2
	  ],
	  [
	"test_id"=>$test
	]);
	
	
	
?>