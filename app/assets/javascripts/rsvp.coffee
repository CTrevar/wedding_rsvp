# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  @addGuestForm = ->
    event.preventDefault()
    elem = $( "#guest-fields" ).clone()
    elem.removeClass('hidden')
    elem.find("input[type=text]").val("")
    elem.append("<a onclick='removeGuestForm(this)'>Remove</a>")
    elem.appendTo( "#more-guests" )
    return
  @removeGuestForm = (elem)->
    event.preventDefault()
    console.log elem
    elem.closest('.guest-fields').remove()
    return