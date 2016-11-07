gulp = require 'gulp'
browserify = require 'gulp-browserify'
rename = require 'gulp-rename'
uglify = require 'gulp-uglify'
handleErrors = require '../utils/handle_errors'


# require('modules') in the browser
gulp.task 'browserify', ->

  orderOptions =
    transform: ['coffeeify']
    extensions: ['.coffee']
    insertGlobals : false
    debug : false

  # Single entry point to browserify
  gulp
  .src 'source/company/coffee/index.coffee', {read: false}
  .pipe browserify(orderOptions)
  .on 'error', handleErrors
  .pipe rename('index.js')
  .pipe uglify(mangle: false)
  .pipe gulp.dest('.build/company/asset/js')

  gulp
  .src 'source/company/coffee/common.coffee', {read: false}
  .pipe browserify(orderOptions)
  .on 'error', handleErrors
  .pipe rename('common.js')
  .pipe uglify(mangle: false)
  .pipe gulp.dest('.build/company/asset/js')

