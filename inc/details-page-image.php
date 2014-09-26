<div class="question-image">

<div class="counter"><p><?php echo $gettest["stoma_id"]; ?> / <?php echo $stomacount; ?></p></div>

<div class="orange-home"><a href="index.php"><img src="images/svg/orange-home.svg" height="55px"/></a></div>

<div class="image" style="height: 1470px; clear: both; overflow: hidden;">
  <img src="images/<?php echo $image; ?>" width="1080" />
</div>




<?php 

if ($x2 > 0) { 
?>


<div class="target-green" style="top: <?php echo $y; ?>px; left: <?php echo $x; ?>px;">
<span style="padding: 0.5em; color: #FFFFFF; background-color: #ff5e15; position: absolute; top: -60px; left: -16px;">Colostomy</span>
<img src="images/svg/target-green.svg" height="100px"/>
<img src="images/svg/p-tick.svg" height="70px" style="top: -34px; left: 80px; position: absolute;" />
</div>

<div class="target-green" style="top: <?php echo $y2; ?>px; left: <?php echo $x2; ?>px;">
<span style="padding: 0.5em; color: #FFFFFF; background-color: #ff5e15; position: absolute; top: -60px; left: -16px;">Urostomy</span>
<img src="images/svg/target-green.svg" height="100px"/>
<img src="images/svg/p-tick.svg" height="70px" style="top: -34px; left: 80px; position: absolute;" />
</div>


<?php if ($gettest["correct"] == "false") {  ?>


<div class="target-white" style="top: <?php echo $gettest["y2"]; ?>px; left: <?php echo $gettest["x2"]; ?>px;">
<span style="padding: 0.5em; color: #FFFFFF; background-color: #ff5e15; position: absolute; top: -60px; left: -16px;">Urostomy</span>
<img src="images/svg/target-white.svg" height="100px"/><img src="images/svg/p-cross.svg" height="70px" style="top: -34px; left: 80px; position: absolute;" /></div>

<div class="target-white" style="top: <?php echo $gettest["y"]; ?>px; left: <?php echo $gettest["x"]; ?>px;">
<span style="padding: 0.5em; color: #FFFFFF; background-color: #ff5e15; position: absolute; top: -60px; left: -16px;">Colostomy</span>
<img src="images/svg/target-white.svg" height="100px"/><img src="images/svg/p-cross.svg" height="70px" style="top: -34px; left: 80px; position: absolute;" /></div>


<?php }  ?>


<?php 
} else {
	?>
	
	<div class="target-green" style="top: <?php echo $y; ?>px; left: <?php echo $x; ?>px;"><img src="images/svg/target-green.svg" height="100px"/><img src="images/svg/p-tick.svg" height="70px" style="top: -34px; left: 80px; position: absolute;" /></div>


<?php if ($gettest["correct"] == "false") {  ?>


<div class="target-white" style="top: <?php echo $gettest["y"]; ?>px; left: <?php echo $gettest["x"]; ?>px;"><img src="images/svg/target-white.svg" height="100px"/><img src="images/svg/p-cross.svg" height="70px" style="top: -34px; left: 80px; position: absolute;" /></div>


<?php }  ?>
	
	<?php 
}
?>







</div>