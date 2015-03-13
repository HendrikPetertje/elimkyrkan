var ready;
ready = function() {
  $('#my-slideshow').bjqs({
  });
  loadCalendar();
};

$(document).ready(ready);
$(document).on('page:load', ready);
