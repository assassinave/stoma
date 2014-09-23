<?php 
$id = $_GET['id'];
require_once 'inc/medoo.min.php';
$database = new medoo();
$datas = $database->select("stoma", "stoma_id",[
	"active" => "true"
]);
$count = 0;
foreach($datas as $data)
{
$count ++;	
$database->insert('test', [
	'user_id' => $id,
	'stoma_id' => $count,
	'taken' => "no"
]);
}

	
header( 'Location: questions.php?id='.$id.'' );	
?>