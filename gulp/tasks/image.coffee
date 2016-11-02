gulp = require 'gulp'

gulp.task 'image', ->

  gulp
  .src 'source/image/**/*'
  .pipe gulp.dest('public/asset/image/')