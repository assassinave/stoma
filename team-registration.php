<?php 
if (!empty($_POST)) {
	
require_once 'inc/medoo.min.php';

$database = new medoo();

$insertId = $database->insert('user', [
	'name' => $_POST['name'],
	'name_1' => $_POST['member1'],
	'name_2' => $_POST['member2'],
	'name_3' => $_POST['member3'],
	'name_4' => $_POST['member4'],
	'type' => "team"
	
]);

header( 'Location: start.php?id='.$insertId.'&start=true' );
}
?>
<?php include ("inc/header.php");?>
<?php include ("inc/header-home.php");?>
<?php include ("inc/team-reg.php");?>
<?php include ("inc/footer-logo.php");?>
<?php include ("inc/footer.php");?>