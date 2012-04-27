$ ->
  $("#messages").infinitescroll {
    navSelector: ".pagination",
    nextSelector: "nav.pagination .next a",
    itemSelector: "#messages .message"
  }
