'use strict'
gulp          = require 'gulp'
onError       = require './error'
plugins       = require 'gulp-load-plugins'
$             = plugins()
config        = require './config'


gulp.task 'jade', ->
  gulp.src './src/jade/**/!(_)*.jade' #compita todos los jade menos los que tengan guion bajo adelante
  .pipe $.plumber(errorHandler: onError)
  .pipe $.accord 'jade',
    pretty : true
    basedir : './src/jade'
  .pipe gulp.dest config.exportPath + '/'

# ## PRODUCTION  ##
# gulp.task 'production:jade', ->
#   gulp.src './src/jade/**/!(_)*.jade'
#   .pipe $.accord 'jade',
#     basedir : './src/jade'
#   .pipe gulp.dest config.exportPath + '/'
