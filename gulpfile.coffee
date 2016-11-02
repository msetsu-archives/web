fs      = require 'fs'
scripts = require './gulp/utils/script_filter'


tasks = fs.readdirSync('./gulp/tasks/').filter(scripts)

tasks.forEach (task)->
  require './gulp/tasks/' + task

