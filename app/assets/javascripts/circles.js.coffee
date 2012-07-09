jQuery ->
  $('#circle_user_tokens').tokenInput '/contacts.json'
    theme: 'facebook'
    prePopulate: $('#circle_user_tokens').data('load')
  $(".draggable").draggable({ revert: true })