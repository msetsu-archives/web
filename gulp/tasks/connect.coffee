gulp = require 'gulp'
connect = require 'gulp-connect'


# localサーバの立ち上げ
gulp.task 'connect', ->

  connectOption =
    root: 'public'
    livereload: true

  connect.server(connectOption)

  return


gulp.task 'liveReload', ->

  # publicの監視
  gulp.watch 'public/**/*', ['reload']


# LiveReload
gulp.task 'reload', ->

  gulp
  .src('public/**/*.html', {read: false})
  .pipe(connect.reload())

