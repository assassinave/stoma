<?php 

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
<div class="container results">
  <div class="results-header">Overview for: <span><strong><?php echo $userdetails["name"]; ?></strong>, <?php echo $userdetails["hospital"]; ?></span></div>
  
  <div class="orange-home-results"><a href="index.php"><img src="images/svg/orange-home.svg" height="61px"/></a></div>
   
  
  <?php foreach($testresults as $data) { ?>
  
  <a href="admin-results-detail-page.php?id=<?php echo $id;?>&test=<?php echo $data["test_id"]; ?>">
  <div class="results-pod <?php if ($data["correct"] == "true") {
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
    <div class="title">
  <?php if ($data["correct"] == "true") {
	  echo "<span class='tick-cross'><img src='images/svg/tick.svg' height='36px'/></span>";
  }else {
	  echo "<span class='tick-cross'><img src='images/svg/cross.svg' height='36px'/></span>";
  }?><?php echo $stoma["type"];?></div>
    <?php 
		}
      ?>
  </div>
  </a>
  <?php } ?>
</div>