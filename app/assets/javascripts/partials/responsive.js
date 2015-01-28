var mobileWidth = 560;
var animationspeed = 500;

function navBar () {
  //hide navbar
  if ($(document).width() > mobileWidth) {
    $('.responsivenavbar ul').show();
  } else {
    $('.responsivenavbar ul').hide();
  }

  // open and close navbar
  $('.navbarexpander').click(function(e){
    $('.responsivenavbar ul').slideToggle(animationspeed);
  });

  // show navbar if not mobile
  $(window).resize(function() {
    if ($(document).width() > mobileWidth) {
        $('.responsivenavbar ul').show();
      } else {
        $('.responsivenavbar ul').hide();
      }
  });
}

var ready;
ready = function() {
  navBar();
};

$(document).ready(ready);
$(document).on('page:load', ready);
