
var ready;
ready = function() {
  var showslideshow = $("#showslideshow").content();

  alert(showslideshow);
};

$(document).ready(ready);
$(document).on('page:load', ready);
