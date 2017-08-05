###
HTML要素の取得方法
$('要素名') 例：div,p,li
$('.class名')   divなどについたクラス名の要素を取得
$('#id名')  divなどについたid名の要素を取得
###

ready = ->
  $(window).scroll ->
    element = $('#page-top-btn')
    visible = element.is(':visible')
    height = $(window).scrollTop();
    if height > 400
      element.fadeIn() if !visible
    else
      element.fadeOut()
  $(document).on 'click', '#move-page-top', ->
    $('html, body').animate({ scrollTop: 0 }, 'slow')

$(document).ready(ready)
$(document).on('page:load', ready)

