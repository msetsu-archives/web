gulp = require 'gulp'
purify = require 'gulp-purifycss'
deferSource = require 'gulp-defer'
runSequence = require 'run-sequence'

# HTML, JS, CSSを生成して不要なCSSを削除
gulp.task 'assets', ['assets:css', 'assets:html'], ->
  gulp
  .src ['.build/**/*']
  .pipe gulp.dest('public/')

gulp.task 'assets:css', ['jade', 'compass', 'browserify'], ->
  gulp
  .src ['.build/**/*.css']
  .pipe purify(['.build/**/*.js', '.build/**/*.html'])
  .pipe gulp.dest('.build/')

gulp.task 'assets:html', ['assets:css'], ->
    gulp
    .src ['.build/**/*.html']
    .pipe deferSource()
    .pipe gulp.dest('.build/')