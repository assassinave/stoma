<?php 
$testdetails = $database->select("user", "*");
?>

<div class="container results">
  <h1>Stoma Nurse Answers</h1>
  


   
   

    
    

    

   <div class="search-form"> 
    <form action="admin-results.php">
  <table>
  <tr>
  <td> <div class="input">
    <input name="search" type="text" id="search" placeholder="Search" value="">
    </div>
    </td>
    <td style="padding-top: 13px;">
    <div class="btn"><a href="admin-results.php?id=<?php echo $data["user_id"]; ?>&type=admin" class="admin">Search </a><img src="images/svg/button-end.svg" height="58px"/></div>
    
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
    if (0 == $i % 2) {
		?>
      <tr class="odd">
        <td class="name"><?php echo $data["name"]; ?></td>
        <td class="hospital"><?php echo $data["hospital"]; ?></td>
        <td class="points">1 / 12</td>
        <td class="submit" style=" background-color: transparent; padding-top: 2px;"><div class="btn"><a href="admin-results-detail.php?id=<?php echo $data["user_id"]; ?>&type=admin" class="admin">View</a><img src="images/svg/button-end.svg" height="58px"/></div></td>
      </tr>
      <?php 
    }
    else {
		
		?>
      <tr class="even">
        <td class="name"><?php echo $data["name"]; ?></td>
        <td class="hospital"><?php echo $data["hospital"]; ?></td>
        <td class="points">1 / 12</td>
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
