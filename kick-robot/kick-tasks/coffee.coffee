'use strict'
gulp          = require 'gulp'
plugins       = require 'gulp-load-plugins'
$             = plugins()


gulp.task 'coffee', ->
	gulp.src './kick-app/**/*.coffee'
	.pipe $.plumber()
	.pipe $.coffee()
	.pipe $.uglify
	.pipe gulp.dest './public/js/'
