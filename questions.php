<?php 
$id = $_GET['id'];
require_once 'inc/medoo.min.php';
$database = new medoo();


$test = $database->get("test", "test_id", [
	"AND" => [
		"user_id" => $id,
		"taken" => "no"
	]
]);


echo $test;
	
header( 'Location: questions.php?id='.$id.'' );	
?>


<?php include ("inc/header.php");?>
<?php include ("inc/footer.php");?>