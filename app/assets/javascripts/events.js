$(function($) {
  setInterval(function(){
    $.get(window.location.pathname, function(data) {
      $('#events').html(data);
    });
  }, 3000)
});
