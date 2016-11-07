gulp = require 'gulp'
jade = require 'gulp-jade'
rename = require 'gulp-rename'

# jadeのコンパイル
gulp.task 'jade', ->

  gulp
  .src ['source/*/jade/**/*.jade','!source/*/jade/**/_*.jade']
  .pipe jade()
  .pipe rename((path) ->
    path.dirname = path.dirname.replace('jade', '')
  )
  .pipe gulp.dest('public/')
