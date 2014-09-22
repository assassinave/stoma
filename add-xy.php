<?php 
require_once 'inc/medoo.min.php';
$database = new medoo();

    $test = $_POST['test'];
	$correct = $_POST['correct'];
	$x = $_POST['x'];
	$y = $_POST['y'];
	
	
	$database->update("test", [
	 "correct"=>$correct,
	 "x"=>$x,
	 "y"=>$y
	  ],
	  [
	"test_id"=>$test
	]);
?>