<div class="padding question-info admin">
  <div class="stoma-info">
    <div class="stoma-type">
      <h3>Stoma Type <span><?php echo $type; ?></span></h3>
    </div>
    <div class="stoma-text">
    
      <p> 
		<?php 
		
		
			
			
			if ($gettest["correct"] == "true") {
			echo "<span class='large-target'><img src='images/svg/target-green.svg' height='120px'/></span>";
            echo "<div class='header correct-header'>Correct</div>";
        } else {
			echo "<span class='large-target'><img src='images/svg/target-white.svg' height='120px'/></span>";
            echo "<div class='header correct-header'>Incorrect</div>";
        }
			
			
		
		
		
		
		
        
        ?>
      </p> 
    </div>
  </div>
  <div class="stoma-next">
    <div class="target-area">&nbsp;</div>
    
    <?php if ($_GET['type'] == "user") { ?>
		<?php if ( $gettest["stoma_id"] == 12) {  
        }else {
        ?>
        <div class="btn"><a href="admin-results-detail-page.php?id=<?php echo $id; ?>&test=<?php echo $test + 1;?>&type=user" class="button small">Continue</a><img src="images/svg/button-end.svg" height="59px"/></div>
        <?php } ?>
    
    <?php } else { ?>
    
    <div class="btn"><img src="images/svg/button-start.svg" height="59px" style="float: left;" /><a href="admin-results-detail.php?id=<?php echo $id; ?>&type=admin" class="button small">Back</a></div>
    
    
    <?php } ?>
    
    
  </div>
</div>