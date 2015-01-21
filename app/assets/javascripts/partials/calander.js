void loadCalander (){
  var mykey = 'your_api_key'; // typically like Gtg-rtZdsreUr_fLfhgPfgff
  var calendarid = 'you_calendar_id'; // will look somewhat like 3ruy234vodf6hf4sdf5sd84f@group.calendar.google.com

  $.ajax({
    type: 'GET',
    url: encodeURI('https://www.googleapis.com/calendar/v3/calendars/' + calendarid+ '/events?key=' + mykey),
    dataType: 'json',
    success: function (response) {
      /*for (var i = response.length - 1; i >= 0; i--) {
        response[i]
      };
    },*/
      console.log(response);
    error: function (response) {
        //tell that an error has occurred
    }
  });
}


var ready;
ready = function() {

  loadCalander ()

};

$(document).ready(ready);
$(document).on('page:load', ready);
