<?php 
$id = $_GET['id'];
$testresults = $database->select("test", "*", [
	"user_id" => $id, 
]);
?>

<div class="container">
  <?php foreach($testresults as $data) { ?>
  <div class="results-pod">
	  <?php 
        $stomaresults = $database->select("stoma", "*", [
            "stoma_id" => $data["stoma_id"], 
        ]);
		foreach($stomaresults as $stoma) {
		?>
		
		<div class="image"></div>
        <div class="title"></div>
		
      <?php 
		}
      ?>
  </div>
  <?php } ?>
</div>
