//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree ./admin

$(function(){ $(document).foundation(); });

$(document).ready(function() {
  hide_flash_messages();
});

var hide_flash_messages = function() {
  if($(".flash_messages").length) {
    $(".flash_messages").delay(3000).fadeOut(200);
  }
};