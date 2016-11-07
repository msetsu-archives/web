gulp = require 'gulp'


# ファイルの監視
gulp.task 'watch', ->

  # Coffeeの監視
  gulp.watch 'source/**/coffee/**', ['browserify', 'optimize']

  # Jadeの監視
  gulp.watch 'source/**/jade/**', ['jade', 'optimize']

  # Sassの監視
  gulp.watch 'source/**/sass/**', ['compass', 'optimize']
