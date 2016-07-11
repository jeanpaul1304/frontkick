'use strict'
gulp          = require 'gulp'
plugins       = require('gulp-load-plugins')
$             = plugins
	pattern: '*'

gulp.task 'coffee', ->
	gulp.src './kick-app/**/*.coffee'
	.pipe $.plumber()
	.pipe $.coffee()
	.pipe gulp.dest '/public/js/'
