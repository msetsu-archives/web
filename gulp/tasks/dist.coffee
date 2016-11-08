gulp = require 'gulp'
rev = require 'gulp-rev'
revReplace = require 'gulp-rev-replace'

gulp.task 'dist', ['dist:rev'], ->
  gulp
  .src ['public/**/*.html']
  .pipe revReplace({manifest: gulp.src('dist/rev-manifest.json')})
  .pipe gulp.dest('dist/')

gulp.task 'dist:rev', ->
  gulp
  .src ['public/**/*.+(css|js|png|jpg|svg|mp4)']
  .pipe rev()
  .pipe gulp.dest('dist/')
  .pipe rev.manifest()
  .pipe gulp.dest('dist/')