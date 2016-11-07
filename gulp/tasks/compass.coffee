gulp = require 'gulp'
sass = require 'gulp-sass'
handleErrors = require '../utils/handle_errors'
rename = require 'gulp-rename'

# Sass(compass)のコンパイルとminify
gulp.task 'compass', ->
  compassOption =
    css: 'public/'
    sass: 'source/sass'
    image: 'source/image'
    import_path: 'source/sass/modules'

  gulp
  .src ['source/*/sass/**/*.sass']
  .pipe sass({
    includePaths: ['./node_modules'],
  })
  .on 'error', handleErrors
  .pipe rename((path) ->
    path.dirname = path.dirname.replace('sass', 'asset/css')
  )
  .pipe gulp.dest('.build/')
