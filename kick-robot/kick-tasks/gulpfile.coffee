# Main config file
'use strict'
gulp              = require 'gulp'
requireDir        = require 'require-dir'

# Require all tasks in gulp/tasks, including subfolders
requireDir './',
	recurse: true

# Simple Watch Command
gulp.task 'watch', ->
	gulp.watch '../kick-app/coffee/*.coffee', ['coffee']
	# gulp.watch 'src/bower/**', ['scripts']
