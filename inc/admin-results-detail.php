<?php 
$id = $_GET['id'];
$testresults = $database->select("test", "*", [
	"user_id" => $id, 
]);

$userdetails = $database->get("user", [
	"name",
	"hospital",
	"email"
], [
	"user_id" => $id
]);

?>
<div class="container">
  <div class="results-header">Overview for: <span><strong><?php echo $userdetails["name"]; ?></strong>, <?php echo $userdetails["hospital"]; ?></span></div>
  <?php foreach($testresults as $data) { ?>
  <div class="results-pod <?php if ($data["correct"] == "yes") {
	  echo "correct";
  }else {
	  echo "false";
  }?>">
    <?php 
        $stomaresults = $database->select("stoma", "*", [
            "stoma_id" => $data["stoma_id"], 
        ]);
		foreach($stomaresults as $stoma) {
		?>
    <div class="image" style="background-image: url(images/<?php echo $stoma["image"];?>); background-size:cover; background-position: bottom;"></div>
    <div class="title"><?php echo $stoma["type"];?></div>
    <?php 
		}
      ?>
  </div>
  <?php } ?>
</div>