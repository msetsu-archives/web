gulp = require 'gulp'
concat = require 'gulp-concat'


# JavaScriptライブラリのconcat
gulp.task 'library_css', ->

  dirPath = 'vendor_bower/**/'

  libraryUsedList = [
    #dirPath + 'material.min.css'
  ]

  gulp
  .src libraryUsedList
  .pipe concat('lib.css')
  .pipe gulp.dest('public/static/')