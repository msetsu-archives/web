gulp = require 'gulp'
purify = require 'gulp-purifycss'
deferSource = require 'gulp-defer'
runSequence = require 'run-sequence'

# HTML, JS, CSSを生成して不要なCSSを削除
gulp.task 'assets', ['assets:optimize-css', 'assets:defer-assets']

gulp.task 'assets:optimize-css', ['jade', 'compass', 'browserify'], ->
  gulp
  .src ['public/**/*.css']
  .pipe purify(['public/**/*.js', 'public/**/*.html'])
  .pipe gulp.dest('public/')

gulp.task 'assets:defer-assets', ['assets:optimize-css'], ->
    gulp
    .src ['public/**/*.html']
    .pipe deferSource()
    .pipe gulp.dest('public/')