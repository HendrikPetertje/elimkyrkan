
var ready;
ready = function() {
  $('#my-slideshow').bjqs({
  responsive : true
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
