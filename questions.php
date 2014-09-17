<?php 
$id = $_GET['id'];
require_once 'inc/medoo.min.php';
$database = new medoo();

$nexttest = $database->get("test", ["test_id", "stoma_id"], [
	"AND" => [
		"user_id" => $id,
		"taken" => "no"
	]
]);

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



?>
<?php include ("inc/header.php");?>
<?php include ("inc/question-image.php");?>
<?php include ("inc/question-info.php");?>
<?php include ("inc/question-confirm.php"); ?>
<?php include ("inc/footer.php");?>