'use strict'

class JSTimeLinter
	constructor: ->
		@col = ""
		@step = 1
		@code = ""
		
		@cols = [ 
	      'yellow' 
	      'green' 
	      'red'
	      'blue'
	    ]
		
		@spanned_code = false

	run: ->

	stop: ->

	pause: ->

	reset: ->

	getJs: (js_code) ->
		console.log js_code