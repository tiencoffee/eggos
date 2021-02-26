Dialog = m.comp do
	oninit: !->
		{task} = @attrs
		{app} = task
		@isMinimize = Boolean app.isMinimize
		@isMaximize = Boolean app.isMaximize
		@icon = app.icon ? \fad:window
		@title = app.title ? app.name
		@width = _.clamp app.width, 0 os.screen.width or 800
		@height = _.clamp app.height, 0 os.screen.height or 600
		@x = app.x ? Math.floor os.screen.width / 2 - @width / 2
		@y = app.y ? Math.floor os.screen.height / 2 - @height / 2
		@minimizable = Boolean app.minimizable ? yes
		@maximizable = Boolean app.maximizable ? yes
		@resizable = Boolean app.resizable ? yes
		@moving = null
		@dx = 0
		@dy = 0
		@minimizeAnim = null
		@hasMaximize = no
		task.ui = @

	oncreate: !->
		{task} = @attrs
		{app} = task
		el = @dom.querySelector \.Dialog_body
		regex = /\(\((\w+)\)\)/g
		code = boot.code.replace regex, (, name) ~>
			switch name
			| \tid => m.uuid!
			| \code => task.code
		code = livescript.compile code
		styl = boot.styl.replace regex, (, name) ~>
			switch name
			| \styl => task.styl
		styl = stylus.render styl, compress: yes
		tmpl = boot.tmpl.replace regex, (, name) ~>
			switch name
			| \code => code
			| \styl => styl
		delete task.code
		delete task.styl
		el.srcdoc = tmpl
		@dom.querySelector \.Dialog_content .animate do
			* transform: ['scale(.95)' 'scale(1)']
				opacity: [0 1]
			* duration: 400
				easing: 'cubic-bezier(.75,-.5,0,1.75)'

	minimize: (val) !->
		val = if val? => !!val else not @isMinimize
		unless val is @isMinimize
			@isMinimize = val
			if val
				width = 200
				height = 40
				x = 10
				y = 728
				@minimizeAnim = @dom.animate do
					* width: width + \px
						height: height + \px
						transform: "translate(#{x}px,#{y}px)"
					* duration: 300
						easing: \ease
						fill: \forwards
			else
				if @minimizeAnim
					@minimizeAnim.reverse!
					@minimizeAnim = null

	maximize: (val) !->
		unless @isMinimize
			val = if val? => !!val else not @isMaximize
			!!= val
			unless val is @isMaximize
				@isMaximize = val
				@hasMaximize = yes
				if val
					style = getComputedStyle @dom
					@dom.animate do
						* width: [style.width, \100%]
							height: [style.height, \100%]
							transform: [style.transform, 'translate(0,0)']
						* duration: 250
							easing: \ease

	close: !->
		_.pull os.tasks, @attrs.task

	onpointerdownTitle: (event) !->
		event.target.setPointerCapture event.pointerId
		@moving = {event.x, event.y}

	onpointermoveTitle: (event) !->
		event.redraw = no
		if @moving
			@dx = event.x - @moving.x
			@dy = event.y - @moving.y
			if @isMaximize
				@maximize no
				@x = event.x - Math.floor @width / 2
				@y = 0
			event.redraw = yes

	onlostpointercaptureTitle: (event) !->
		if @moving
			@moving = null
			if event.y <= os.screen.y
				@maximize yes
			else
				@x += @dx
				@y += @dy
			@dx = @dy = 0

	onbeforeremove: ->
		new Promise (resolve) !~>
			@dom.querySelector \.Dialog_content .animate do
				* transform: 'scale(.95)'
					opacity: 0
				* duration: 200
					easing: 'cubic-bezier(.33,1,.68,1)'
			.onfinish = resolve

	view: ->
		m \.Dialog,
			class: m.class do
				'Dialog-minimize': @isMinimize
				'Dialog-maximize': @isMaximize
				'Dialog-unmaximize': @hasMaximize and not @isMaximize
			style: m.style do
				width: @width
				height: @height
				transform: "translate(#{@x + @dx}px,#{@y + @dy}px)"
			m \.Dialog_content,
				m \.Dialog_header,
					m Button,
						class: \Dialog_icon
						minimal: yes
						icon: @icon
					m \.Dialog_title,
						onpointerdown: @onpointerdownTitle
						onpointermove: @onpointermoveTitle
						onlostpointercapture: @onlostpointercaptureTitle
						m \.TextTruncate @title
					m Button,
						class: \Dialog_button
						minimal: yes
						icon: \far:minus
						onclick: !~>
							@minimize!
					m Button,
						class: \Dialog_button
						minimal: yes
						icon: \far:plus
						onclick: !~>
							@maximize!
					m Button,
						class: \Dialog_button
						minimal: yes
						color: \red
						icon: \far:times
						onclick: !~>
							@close!
				m \iframe.Dialog_body
