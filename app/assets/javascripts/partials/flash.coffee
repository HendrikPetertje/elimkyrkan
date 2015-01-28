# turbolinks-document ready script by Peter van der Meulen
# Feel free to use
# -----------------
# Document ready var and function init
ready = ->
  # Actual code here
  setTimeout (->
    $('.message').addClass('no_message')
    return
  ), 8000


# -----------------
# Document ready var and function call
$(document).ready(ready)
$(document).on('page:load', ready)
