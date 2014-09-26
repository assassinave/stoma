<?php
// Setup page
require_once 'inc/medoo.min.php';
$database = new medoo();
$id = $_GET['id'];
$test = $_GET['test'];

session_start();
 
// If the test isn't being updated display next test
$xy = $database->get("stoma", ["x", "y", "x2", "y2"], [
		"user_id" => $id
]);
 
// Number of active stoma questions 
$stomacount = $database->count("stoma", [
		"active" => "true"
]);
 
// If the test isn't being updated display next test
$gettest = $database->get("test", ["test_id", "stoma_id", "x", "y", "correct"], [
		"test_id" => $test
]);
 
$testdetails = $database->select("stoma", "*", [
	"AND" => [
		"stoma_id" => $gettest["stoma_id"]
	]
]);

foreach($testdetails as $data)
{
	$type = $data["type"];
	$position = $data["position"];
	$info = $data["info"];
	$image = $data["image"];
	$x = $data["x"];
	$y = $data["y"];
	$x2 = $data["x2"];
	$y2 = $data["y2"];
}

?>
<?php include ("inc/header.php");?>
<?php include ("inc/details-page-image.php");?>
<?php include ("inc/admin-details-page-info.php");?>
<?php include ("inc/footer.php");?>
<script>
$( document ).ready(function() {
	// Pass values to Jquery
	window.xposition = "<?php echo $x; ?>";
	window.yposition = "<?php echo $y; ?>";
	window.globalTestData = <?php echo $thistest['test_id']; ?>;
});
</script>
<script src="js/min/xandy-min.js"></script>