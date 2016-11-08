gulp = require 'gulp'
inlineSource = require 'gulp-inline-source'

# HTMLを最適化, 挙動がそこまで変更にならないもののみ(非同期化とかはassetsで行う)
gulp.task 'optimize', ['assets'], ->
  gulp
  .src ['public/**/*.html']
  .pipe inlineSource()
  .pipe gulp.dest('public/')