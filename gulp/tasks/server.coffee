gulp = require 'gulp'
runSequence = require 'run-sequence'


# サーバを立ち上げて、ビルドと監視を行う
gulp.task 'server', ->
  runSequence 'build', 'connect', 'watch', 'liveReload'
