gulp = require 'gulp'
rename = require 'gulp-rename'


gulp.task 'image', ->
  gulp
  .src 'source/*/image/**/*'
  .pipe rename((path) ->
    path.dirname = path.dirname.replace('image', 'asset/image')
  )
  .pipe gulp.dest('public')