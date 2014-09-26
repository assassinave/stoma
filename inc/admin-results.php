<?php 

?>

<div class="container results">
  <h1>Stoma Nurse Answers</h1>
  
   <div class="search-form"> 
    <form action="admin-results.php" id="search" method="post">
  <table>
  <tr>
  <td> <div class="input">
    <input name="search" type="text" id="search" placeholder="Search" value="">
    </div>
    </td>
    <td style="padding-top: 13px;">
    <div class="btn"><a href="#" class="admin" id="submit-search">Search </a><img src="images/svg/button-end.svg" height="58px"/></div>
    
    </td>
  </tr>

  </table>
      </form>
    </div>
  
  
  <div class="scroll">
    <table class="admin">
      <?php 
      
      $i = 0;
foreach ($testdetails as $data) {
	
	$correct = $database->count("test", [
    "AND" => [
		"user_id" => $data["user_id"],
		"correct" => "true"
	]
]);
	
	
    if (0 == $i % 2) {
		?>
      <tr class="odd <?php if ($data["type"] == "nurse") { } else { echo "white-text"; }?>">
        <td class="name"><?php echo $data["name"]; ?></td>
        <td class="hospital"><?php if ($data["type"] == "nurse") { echo $data["hospital"]; } else { echo $data["name_1"].", ".$data["name_2"].", ".$data["name_3"].", ".$data["name_4"];  } ?></td>
        <td class="points"><?php echo $correct; ?> / 12</td>
        <td class="submit" style=" background-color: transparent; padding-top: 2px;"><div class="btn"><a href="admin-results-detail.php?id=<?php echo $data["user_id"]; ?>&type=admin" class="admin">View</a><img src="images/svg/button-end.svg" height="58px"/></div></td>
      </tr>
      <?php 
    }
    else {
		
		?>
      <tr class="even <?php if ($data["type"] == "nurse") { } else {  echo "white-text"; }?>">
        <td class="name"><?php echo $data["name"]; ?></td>
        <td class="hospital"><?php if ($data["type"] == "nurse") { echo $data["hospital"]; } else { echo $data["name_1"].", ".$data["name_2"].", ".$data["name_3"].", ".$data["name_4"];  } ?></td>
        <td class="points"><?php echo $correct; ?> / 12</td>
        <td class="submit" style=" background-color: transparent; padding-top: 2px;"><div class="btn"><a href="admin-results-detail.php?id=<?php echo $data["user_id"]; ?>&type=admin" class="admin">View</a><img src="images/svg/button-end.svg" height="58px"/></div></td>
      </tr>
      <?php
    }
    $i++;
}
     
	 ?>
      <?php  ?>
    </table>
  </div>
</div>
