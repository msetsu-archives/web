$ ->
  # PCサイズ
  if parseInt(window.screen.availWidth, 10) > 576
    video = $('.video')
    mp4 = video.attr('data-srcmp4')
    poster = video.attr('data-srcimg')
    $('.video').append("""
  <video id="videoBackground" autoplay="" loop="" poster="#{poster}" muted="">
    <source src="#{mp4}" type="video/mp4">
  </video>
""")

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

  itzzoom_content = null
  itzzoom = ->
    $('.itz-zoom').map ->
      factor = $(this).width() / 1070
      itzzoom_content ||= $(this).find('.itz-zoom-content') 
      itzzoom_content.css 'zoom', factor

  $(window).on 'resize', itzzoom
  itzzoom()