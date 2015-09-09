// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation

$(function(){ $(document).foundation(); });

$(document).ready(function() {
  hide_flash_messages();
  $('.radio-sidebar-item').click(function() {
    if($('#interview-audio')[0].paused == false) {
      $('#interview-audio')[0].pause();
    } else {
      $('#interview-audio')[0].play();
    }
  });

  setTimeout(function(){ adjustNavWidth(); }, 100);

  $('#main-content').scroll(function(data) {
    adjustNavTop();
  });
});

var adjustNavWidth = function() {
  var scrollDiv = document.getElementById("main-content");
  var scrollbarWidth = scrollDiv.offsetWidth - scrollDiv.clientWidth;
  $('#main-nav').width($(this).width() - scrollbarWidth);
};

var adjustNavTop = function() {
  var headerHeight = $('#main-header').outerHeight();
  var newTop = headerHeight - $('#main-content').scrollTop();
  if(newTop < 0) {
    newTop = 0;
  }
  $('#main-nav').css('top', newTop + 'px')
};

var hide_flash_messages = function() {
  if($(".flash_messages").length && $(".flash_messages").html() != '') {
    $(".flash_messages").delay(3000).fadeOut(200);
  }
};
