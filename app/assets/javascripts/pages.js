$(document).ready(function() {
  $('.radio-sidebar-item').click(function() {
    if($('#interview-audio')[0].paused == false) {
      $('#interview-audio')[0].pause();
    } else {
      $('#interview-audio')[0].play();
    }
  });
});
