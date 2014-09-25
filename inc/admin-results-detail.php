<?php 

$testresults = $database->select("test", "*", [
	"user_id" => $id, 
]);

$userdetails = $database->get("user", [
	"name",
	"hospital",
	"email",
	"type"
], [
	"user_id" => $id
]);

?>
<div class="container results">
  
  
 <?php if ($userdetails["type"] == "nurse") {  ?>
  
  <div class="results-header">Overview for: <span><strong><?php echo $userdetails["name"]; ?></strong>, <?php echo $userdetails["hospital"]; ?></span></div>
  
 <?php } else {?>
  
   <div class="results-header">Overview for: <span><strong><?php echo $userdetails["name"]; ?></strong></span></div>
   
 <?php } ?>
  
  
  
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
	  echo "<span class='tick-cross'><img src='images/svg/tick.svg' height='47px'/></span>";
  }else {
	  echo "<span class='tick-cross'><img src='images/svg/cross.svg' height='47px'/></span>";
  }?><?php echo $stoma["type"];?></div>
    <?php 
		}
      ?>
  </div>
  </a>
  <?php } ?>
  

  <div class="btn" style="left: 20px; top: 40px; position: relative;"><img src="images/svg/button-start.svg" height="59px" style="float: left;" /><a href="admin-results.php?id=<?php echo $id; ?>&type=admin" class="button small">Back</a></div>
  
</div>