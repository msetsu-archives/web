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
