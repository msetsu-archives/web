gulp = require 'gulp'
tar = require 'gulp-tar'
gzip = require 'gulp-gzip'

# publicのgzip
gulp.task 'gzip', ->

  gulp
  .src 'public/*'
  .pipe tar('public.tar')
  .pipe gzip()
  .pipe gulp.dest('.')