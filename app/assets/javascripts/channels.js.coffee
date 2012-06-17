$ ->
  messageColorize = ->
    $('.user_message').each -> 
      username = $(this).find('.username').text().trim()
      $(this).css 'color', username.toRGBCode()

  messageColorize()

  $("#messages").infinitescroll {
    navSelector: ".pagination",
    nextSelector: "nav.pagination .next a",
    itemSelector: "#messages .message"
  }, messageColorize


 

