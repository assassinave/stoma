<div class="container">
  <form id="nurse-form" action="nurse-registration.php" method="post">
  
  <input name="start" type="hidden" id="start" form="nurse-form" value="true">
  <table>
    <tr>
      <td></td>
      <td><h1>Nurse Registration</h1></td>
    </tr>
    <tr>
      <td class="title">Name</td>
      <td><input name="name" type="text" id="name"></td>
    </tr>
    <tr>
      <td class="title">Hospital</td>
      <td><input name="hospital" type="text" id="hospital"></td>
    </tr>
    <tr>
      <td class="title">Email</td>
      <td><input name="email" type="text" id="email" data-validation="email"></td>
    </tr>
     <tr>
      <td></td>
      <td>
      <div class="btn"><a href="#" class="button med" id="submit-nurse">Start Stoma Siting</a><img src="images/svg/button-end.svg" height="59px"/></div>
      </td>
    </tr>
  </table>
  </form>
  
</div>
