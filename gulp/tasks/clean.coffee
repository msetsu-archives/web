gulp = require 'gulp'
clean = require 'gulp-clean'


gulp.task 'clean', ->

  gulp
  .src ['public', 'vendor_bower', 'dist'], {read: false}
  .pipe clean()
