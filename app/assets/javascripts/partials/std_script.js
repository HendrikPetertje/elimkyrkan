var ready;
ready = function() {
  $('#my-slideshow').bjqs({
  });
  loadFacebookSDK();
  loadCalendar();
};

$(document).ready(ready);
$(document).on('page:load', ready);
