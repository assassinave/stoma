<?php
if (!empty($_POST)) {
	
require_once 'inc/medoo.min.php';
$database = new medoo();

if ($_POST['username'] == "adminlogin2014") { 
header( 'Location: admin-results.php' );
} else {
}


}
?>
<?php include ("inc/header.php");?>
<?php include ("inc/header-home.php");?>
<?php include ("inc/admin-login.php");?>
<?php include ("inc/footer-logo.php");?>
<?php include ("inc/footer.php");?>