<?php 
$id = $_GET['id'];
require_once 'inc/medoo.min.php';
$database = new medoo();
$datas = $database->select("stoma", "stoma_id",[
	"active" => "true"
]);
foreach($datas as $data)
{
$database->insert('test', [
	'user_id' => $id,
	'stoma_id' => $data["stoma_id"],
	'taken' => "no"
]);
}

	
header( 'Location: questions.php?id='.$id.'' );	
?>