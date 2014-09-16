<?php 
if (!empty($_POST)) {
	
require_once 'inc/medoo.min.php';

$database = new medoo();

$insertId = $database->insert('user', [
	'name' => $_POST['name'],
	'hospital' => $_POST['hospital'],
	'email' => $_POST['email']
]);

header( 'Location: start.php?id='.$insertId.'' );
}
?>

<?php include ("inc/header.php");?>
<?php include ("inc/nurse-reg.php");?>
<?php include ("inc/footer.php");?>