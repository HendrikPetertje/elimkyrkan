

var ready;
ready = function() {
  $('#my-slideshow').bjqs({
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
