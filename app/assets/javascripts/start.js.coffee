# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$(document).ready ->
  
  #toggle `popup` / `inline` mode
  $.fn.editable.defaults.mode = "inline"
  
  #make username editable
  $("#username").editable()
  
  #make status editable
  $("#status").editable
    type: "select"
    title: "Select status"
    placement: "right"
    value: 2
    source: [
      value: 1
      text: "status 1"
    ,
      value: 2
      text: "status 2"
    ,
      value: 3
      text: "status 3"
    ]
    