$ ->

  blur = ->
    $('.person.active').removeClass 'active'
    $('.people').removeClass 'focus'

  focus = (name) ->
    $('.people').addClass 'focus'
    $('.person.active').removeClass 'active'
    $('#' + name).addClass 'active'

  $('.people').on 'click', (e) ->
    e and e.preventDefault()
    blur()

  $('.person').on 'click', (e) ->
    e and e.stopPropagation()

  $('.people-anchor').on 'click', (e) ->
    m = $(this).prop('href').match(/#([a-zA-Z0-9_\-]+)/)
    if m and m.length > 1
      focus m[1]
    e and e.preventDefault()

  itzzoom = ->
    $('.itz-zoom').map ->
      factor = $(this).width() / 1070
      $(this).find('.itz-zoom-content').css 'zoom', factor

  $(window).on 'resize', itzzoom
  itzzoom()

  preinit = ->
    $('#loader-bg').css 'display', 'block'

  inited = false
  init = ->
    return if inited
    $('#loader-bg').delay(900).fadeOut 800
    $('#loader').delay(600).fadeOut 300

  # 初期化
  preinit()

  # 全ての読み込みが完了したら実行
  # OR loadきてなくても4秒後に実行
  if document.readyState == 'complete'
    init()
  else
    $(window).on 'load', init
    setTimeout init, 4000