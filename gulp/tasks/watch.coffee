gulp = require 'gulp'


# ファイルの監視
gulp.task 'watch', ->

  # Coffeeの監視
  gulp.watch 'source/coffee/**', ['browserify']

  # Jadeの監視
  gulp.watch 'source/jade/**', ['jade']

  # Sassの監視
  gulp.watch 'source/sass/**', ['compass']

  # 画像の監視
  gulp.watch 'source/image/**', ['imagemin']
