<?php

if (!empty($_POST)) {
	
require_once 'inc/medoo.min.php';
$database = new medoo();

$search = $_POST['search'];

$testdetails = $database->select("user", "*", [
	'LIKE' => [
		'name' => $search
	]
]);



} else {


require_once 'inc/medoo.min.php';
$database = new medoo();

$testdetails = $database->select("user", "*");

}
?>
<?php include ("inc/header.php");?>
<?php include ("inc/header-home.php");?>
<?php include ("inc/admin-results.php");?>
<?php include ("inc/footer.php");?>