<div class="container">

<?php 
if ($correct > 2) {
	echo "<h1>Congratulations!</h1>";
	echo "<p>You correctly sited</p>";
} else {
	echo "<h1>Hard Luck</h1>";
	echo "<p>You only correctly sited</p>";
}
?>
  
<h3><?php echo $correct; ?> of <?php echo $stomacount; ?> Stomas</h3>
  
<div class="btn"><a href="admin-results-detail.php?id=<?php echo $id; ?>" class="button med">Review Answers</a><img src="images/svg/button-end.svg" height="55px"/></div>
  
  
<div class="btn"><img src="images/svg/button-start.svg" height="55px" style="float: left;" /><a href="index.php" class="button med">Try Again</a></div>
  
</div>