$ ->
  $('select').change ->
    window.location = $(this).find(':selected').val()
