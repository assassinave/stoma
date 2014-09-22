<div class="question-image">

<div class="counter"><p><?php echo $_SESSION['count']; ?> / <?php echo $stomacount; ?></p></div>

<div class="orange-home"><img src="images/svg/orange-home.svg" height="55px"/></div>

<div class="image" style="height: 1500px; clear: both; overflow: hidden;">
  <img src="images/<?php echo $image; ?>" width="1080" />
</div>

<?php if ($gettest["correct"] == "false") {  ?>
<div class="target" style="top: <?php echo $y; ?>px; left: <?php echo $x; ?>px;"><img src="images/svg/target-white.svg" height="100px"/></div>
<?php }  ?>


<div class="target" style="top: <?php echo $gettest["y"]; ?>px; left: <?php echo $gettest["x"]; ?>px;"><img src="images/svg/target-green.svg" height="100px"/></div>

</div>