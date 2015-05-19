require('coffee-script/register')
gulp = require('gulp')
$ = require('gulp-load-plugins')()
browserSync = require('browser-sync')

gulp.task 'sass', ->
	gulp.src(['css/**/*.sass'])
		.pipe($.sourcemaps.init())
		.pipe($.sass({
			indentedSyntax: true,
			errLogToConsole: true,
			outputStyle: 'compressed'
		}))
		.pipe($.autoprefixer('last 3 version'))
		.pipe($.sourcemaps.write('.'))
		.pipe(gulp.dest('css'))

gulp.task 'stylus', ->
	gulp.src('css/**/*.styl')
		.pipe($.sourcemaps.init())
		.pipe($.stylus())
		.pipe($.autoprefixer('last 3 version'))
		.pipe($.sourcemaps.write('.'))
		.pipe(gulp.dest('css'))

gulp.task 'server', ->
	browserSync({
		server: {
			baseDir: './'
		}
	})

gulp.task 'watch', ->
	gulp.watch(['./css/**/*.sass'], ['sass'])
	gulp.watch(['./css/**/*.styl'], ['stylus'])

gulp.task 'default', ['server', 'sass', 'stylus', 'watch']