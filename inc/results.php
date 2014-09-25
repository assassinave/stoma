<div class="container">

<div class="center">

<?php 
if ($correct > 7) {
	echo "<h1>Congratulations!</h1>";
	echo "<p>You correctly sited</p>";
} else {
	echo "<h1>Hard Luck</h1>";
	echo "<p>You only correctly sited</p>";
}
?>
  
<h3><?php echo $correct; ?> of <?php echo $stomacount; ?> Stomas</h3>

</div>

<div class="center-buttons">
  
<div class="btn"><a href="admin-results-detail.php?id=<?php echo $id; ?>&type=user" class="button med">Review Answers</a><img src="images/svg/button-end.svg" height="59px" style="float: left;"/></div>
  
  
<div class="btn"><img src="images/svg/button-start.svg" height="59px" style="float: left;" /><a href="welcome.php" class="button med">Try Again</a></div>

</div>
  
</div>