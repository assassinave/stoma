<div class="padding question-info">
  <div class="stoma-info">
    <div class="stoma-type">
      <h3>Stoma Type <span><?php echo $type; ?></span></h3>
    </div>
    <div class="stoma-text">
      <p> 
		<?php 
        if ($gettest["correct"] == "true") {
            echo "<h1>Correct</h1>";
        } else {
            echo "<h1>Incorrect</h1>";
        }
        ?>
      </p> 
    </div>
  </div>
  <div class="stoma-next">
    <div class="target-area">&nbsp;</div>
    <div class="btn"><a href="#" class="button small">Continue</a><img src="images/svg/button-end.svg" height="55px"/></div>
  </div>
</div>