# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

get_colour = ->
  setInterval (->
    # $.ajax
    #   dataType: 'json',
    #   url: '/colour.json',
    #   success: (data) ->
    #     $('body').css('background-color', data.colour);
    #     return
    return
  ), 3000


$(document).ready ->
  get_colour()
  return

$(document).on 'ajax:complete ajaxComplete', ->
  return
