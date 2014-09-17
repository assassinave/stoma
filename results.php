<?php
// Setup page
require_once 'inc/medoo.min.php';
$database = new medoo();
$id = $_GET['id'];
 
$correct = $database->count("test", [
		"user_id" => $id,
]);
 
$stomacount = $database->count("stoma", [
		"active" => "true"
]);

?>
<?php include ("inc/header.php");?>
<?php include ("inc/results.php");?>
<?php include ("inc/footer.php");?>