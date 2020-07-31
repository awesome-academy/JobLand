$(document).ready(function() {
  $(".form_language form").on('submit',function(event) {
    event.preventDefault();
    var formHTML = event.target;
    $.ajax({
      url: formHTML.action,
      method: 'POST',
      data: $(this).serialize(),
      success: function(data){
        $('#cv_language').html(data);
      }
    });
  });
});