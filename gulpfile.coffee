# Load all required libraries.
coffee     = require 'gulp-coffee'
coffeelint = require 'gulp-coffeelint'
cssmin     = require 'gulp-cssmin'
gulp       = require 'gulp'
imagemin   = require 'gulp-imagemin'
prefix     = require 'gulp-autoprefixer'
sass       = require 'gulp-ruby-sass' 
stylish    = require 'coffeelint-stylish'
uglify     = require 'gulp-uglify'
watch      = require 'gulp-watch'

# Compile Sass, autoprefix, and minify.
gulp.task 'css', ->
  return sass 'assets/css/index.scss'
    .pipe prefix "> 1%"
    .pipe cssmin keepSpecialComments: 0
    .pipe gulp.dest 'assets/build'

# Lint our CoffeeScript with stylish.
gulp.task 'lint', ->
  return gulp.src 'assets/js/index.coffee'
    .pipe coffeelint()
    .pipe coffeelint.reporter stylish
    .pipe coffeelint.reporter 'fail'

# Compile CoffeeScript and minify.
gulp.task 'js', ['lint'], ->
  return gulp.src 'assets/js/index.coffee'
    .pipe coffee bare: true
    .pipe uglify()
    .pipe gulp.dest 'assets/build'

# Compress images.
gulp.task 'img', ->
  return gulp.src 'assets/img/**/*'
    .pipe imagemin progressive: true
    .pipe gulp.dest 'assets/build/img'

# Watch for changes.
gulp.task 'watch', ->
  gulp.watch [ 'assets/js/*.coffee' ], [ 'js' ]
  gulp.watch [ 'assets/css/*.scss' ], [ 'css' ]
