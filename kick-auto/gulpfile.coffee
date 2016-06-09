'use strict'
gulp              = require 'gulp'
runSequence       = require('run-sequence').use(gulp) #Package para ejecutar tareas en secuencia
requireDir        = require 'require-dir'

# Jala todas las tareas de kick-auto/tareas, incluyendo subfolders
requireDir './tareas',
  recurse: true

# Escuchador simple
gulp.task 'watch', ['browsersync'], ->
  gulp.watch 'kick-app/jade/**'  , ['jade']
  # gulp.watch 'src/stylus/**'  , ['stylus']
  # gulp.watch 'src/coffee/**', ['coffee']