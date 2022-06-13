$(document).on('turbolinks:load', function() {
  $("input[type=checkbox]").click(function(){
    $.post('/list/' + $(this).data('id') + '/toggle');
  });
});