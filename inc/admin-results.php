<?php 
$testdetails = $database->select("user", "*");
?>
<div class="container results">
  <h1>Stoma Nurse Answers</h1>
  <div class="scroll">
    <table class="admin">
      <?php 
      
      $i = 0;
foreach ($testdetails as $data) {
    if (0 == $i % 2) {
		?>
      <tr class="odd">
        <td class="name"><?php echo $data["name"]; ?></td>
        <td class="hospital"><?php echo $data["hospital"]; ?></td>
        <td class="submit"><div class="btn"><a href="admin-results-detail.php?id=<?php echo $data["user_id"]; ?>&type=admin" class="admin">View</a><img src="images/svg/button-end.svg" height="59px"/></div></td>
      </tr>
      
       <?php 
    }
    else {
		
		?>
        
        <tr class="even">
        <td class="name"><?php echo $data["name"]; ?></td>
        <td class="hospital"><?php echo $data["hospital"]; ?></td>
        <td class="submit"><div class="btn"><a href="admin-results-detail.php?id=<?php echo $data["user_id"]; ?>&type=admin" class="admin">View</a><img src="images/svg/button-end.svg" height="59px"/></div></td>
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