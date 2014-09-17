<?php 
$testdetails = $database->select("user", "*");
?>
<div class="container">
  <h1>Stoma Nurse Answers</h1>
  <div class="scroll">
    <table class="admin">
      <?php foreach($testdetails as $data) { ?>
      <tr>
        <td class="name"><?php echo $data["name"]; ?></td>
        <td class="hospital"><?php echo $data["hospital"]; ?></td>
        <td class="submit"><div class="btn"><a href="admin-results-detail.php?id=<?php echo $data["user_id"]; ?>">View</a></div></td>
      </tr>
      <?php } ?>
    </table>
  </div>
</div>
