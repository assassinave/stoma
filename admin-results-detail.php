<?php
require_once 'inc/medoo.min.php';
$database = new medoo();


$id = $_GET['id'];
$type = $_GET['type'];

$firsttestresults = $database->get("test", "*", [
	"user_id" => $id, 
]);


if ($type == "user") {
header( 'Location: admin-results-detail-page.php?id'.$id.'=23&test='.$firsttestresults['test_id'].'&type=user' );
}

?>
<?php include ("inc/header.php");?>

<?php include ("inc/admin-results-detail.php");?>

<?php include ("inc/footer.php");?>