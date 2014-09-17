<?php

// Setup page
require_once 'inc/medoo.min.php';
$database = new medoo();
$id = $_GET['id'];
 
 
// Number of active stoma questions 
$stomacount = $database->count("stoma", [
		"active" => "true"
]);
 
 
// Check to see if the test is being updated 
if ($_GET['test']) { 

$test = $_GET['test'];

$database->update("test", [
 "taken"=>"yes",
 "position"=>""
  ],
  [
"test_id"=>$test
]);


header( 'Location: questions.php?id='.$id.'' );

} else {
 
// If the test isn't being updated display next test
$nexttest = $database->get("test", ["test_id", "stoma_id"], [
	"AND" => [
		"user_id" => $id,
		"taken" => "no"
	]
]);


// If the tests have finished 
if (!isset($nexttest["test_id"]) || empty($nexttest["test_id"])) {
header( 'Location: results.php?id='.$id.'' );
}

$testdetails = $database->select("stoma", "*", [
	"AND" => [
		"stoma_id" => $nexttest["stoma_id"]
	]
]);

foreach($testdetails as $data)
{
	$type = $data["type"];
	$position = $data["position"];
	$info = $data["info"];
}

} 


?>
<?php include ("inc/header.php");?>
<?php include ("inc/question-image.php");?>
<?php include ("inc/question-info.php");?>
<?php include ("inc/question-confirm.php"); ?>
<?php include ("inc/footer.php");?>