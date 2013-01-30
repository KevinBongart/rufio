$ ->
  getCustomerId = (object) ->
    $(object).data("customerid")

  highlightRelatedCustomerEvents = (object) ->
    customerid = getCustomerId(object)
    $(".event[data-customerid=#{customerid}]").addClass("selected")
    $(".event:not([data-customerid=#{customerid}])").addClass("faded").fadeTo('fast', 0.2)

  resetHighlightedEvents = (object) ->
    customerid = getCustomerId(object)
    $(".event.selected").removeClass("selected")
    $(".event.faded").removeClass("faded").fadeTo('fast', 1)

  $(".event").on "click", ->
    unless event.target.nodeName == 'A'
      if $(this).hasClass("selected") || $(this).hasClass("faded")
        resetHighlightedEvents($(this))
      else
        highlightRelatedCustomerEvents($(this))
