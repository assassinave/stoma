$( document ).ready(function() {

$("#myform").validate({
  submitHandler: function(form) {
    $(form).submit();
  }
 });

});