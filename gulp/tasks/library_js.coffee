gulp = require 'gulp'
concat = require 'gulp-concat'


# JavaScriptライブラリのconcat
gulp.task 'library_js', ->

  libraryUsedList = [
    'vendor/jquery.enllax.min.js'
  ]

  gulp
  .src libraryUsedList
  .pipe concat('lib.js')
  .pipe gulp.dest('public/company/asset/js/')