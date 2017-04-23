# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  endDate = "June 7, 2087 15:03:25"
  $('.countdown-container').countdown
    date: endDate
    render: (data) ->
      $(@el).html '<div>' + @leadingZeros(data.days, 3) + ' <span>days</span></div><div>' + @leadingZeros(data.hours, 2) + ' <span>hrs</span></div><div>' + @leadingZeros(data.min, 2) + ' <span>min</span></div><div>' + @leadingZeros(data.sec, 2) + ' <span>sec</span></div>'
      return
  return
