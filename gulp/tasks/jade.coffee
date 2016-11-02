gulp = require 'gulp'
jade = require 'gulp-jade'

# jadeのコンパイル
gulp.task 'jade', ->

  gulp
  .src ['source/jade/**/*.jade','!source/jade/**/_*.jade'], base:'source/jade'
  .pipe jade()
  .pipe gulp.dest('public/')