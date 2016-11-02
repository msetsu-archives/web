gulp = require 'gulp'


# オプション無しのgulpタスク
# ビルドと監視を行う
gulp.task 'default', ['build', 'watch']
