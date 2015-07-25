$(document).ready(function() {
  $(".donation-options .donation-option").click(function() {
    if($(this).hasClass('donate-25-option')) {
      donate(25);
    } else if($(this).hasClass('donate-50-option')) {
      donate(50);
    } else if($(this).hasClass('donate-100-option')) {
      donate(100);
    } else if($(this).hasClass('donate-250-option')) {
      donate(250);
    } else if($(this).hasClass('donate-500-option')) {
      donate(500);
    } else if($(this).hasClass('donate-1000-option')) {
      donate(1000);
    } else if($(this).hasClass('donate-2700-option')) {
      donate(2700);
    }
  });
});

var donate = function(amount) {
  $('.donation-option, .donate-form').removeClass('active');
  $('.donate-' + amount + '-option, .donate-' + amount + '-form').addClass('active');
};
