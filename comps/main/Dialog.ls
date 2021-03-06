Dialog = m.comp do
	oninit: !->
		{task} = @attrs
		{env} = task
		@isMinimize = Boolean env.isMinimize
		@isMaximize = Boolean env.isMaximize
		@icon = env.icon ? \fad:window
		@title = env.title ? env.name
		@width = _.clamp env.width, 0 os.screen.width or 800
		@height = _.clamp env.height, 0 os.screen.height or 600
		@x = env.x ? Math.floor os.screen.width / 2 - @width / 2
		@y = env.y ? Math.floor os.screen.height / 2 - @height / 2
		@minimizable = Boolean env.minimizable ? yes
		@maximizable = Boolean env.maximizable ? yes
		@resizable = Boolean env.resizable ? yes
		@moving = null
		@dx = 0
		@dy = 0
		@minimizeAnim = null
		@hasMaximize = no
		@sandbox = '''
			allow-downloads
			allow-forms
			allow-modals
			allow-orientation-lock
			allow-pointer-lock
			allow-popups
			allow-popups-to-escape-sandbox
			allow-presentation
			allow-scripts
			allow-storage-access-by-user-activation
			allow-top-navigation
			allow-top-navigation-by-user-activation
		'''
		if env.isSystem
			@sandbox += ' allow-same-origin'
		task.ui = @

	oncreate: !->
		{task} = @attrs
		{env} = task
		@ifrm = @dom.querySelector \.Dialog_body
		regex = /\(\((\w+)\)\)/g
		code = boot.code.replace regex, (, name) ~>
			switch name
			| \tid
				task.tid
			| \code
				text = task.code
				if env.codePath.endsWith \.js
					text .= replace /`/g \\\`
					"`` #text ``"
				else
					text.replace /\n(?!\n|$)/g \\n\t
		code = livescript.compile code
		code .= replace /\\`/g \`
		styl = boot.styl.replace regex, (, name) ~>
			switch name
			| \styl =>
				text = task.styl
				if env.stylPath?endsWith \.css
					"@css { #{task.styl} }"
				else task.styl
		styl = stylus.render styl, compress: yes
		tmpl = task.tmpl
		srcdoc = boot.tmpl.replace regex, (, name) ~>
			switch name
			| \styl => styl
			| \tmpl => tmpl
			| \code => code
		delete task.code
		delete task.styl
		delete task.tmpl
		@ifrm.srcdoc = srcdoc
		@dom.animate do
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
						left: x + \px
						top: y + \px
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
					rect = @dom.getBoundingClientRect!
					@dom.animate do
						* left: [rect.x + \px, 0]
							top: [rect.y + \px, 0]
						* duration: 250
							easing: \ease

	close: !->
		_.pull os.tasks, @attrs.task

	onpointerdownTitle: (event) !->
		if event.which is 1
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
			@dom.animate do
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
				left: @x
				top: @y
				transform: "translate(#{@dx}px,#{@dy}px)"
			m \.Dialog_header,
				m Button,
					class: \Dialog_icon
					minimal: yes
					icon: @icon
				m \.Dialog_title,
					onpointerdown: @onpointerdownTitle
					onpointermove: @onpointermoveTitle
					onlostpointercapture: @onlostpointercaptureTitle
					m \.text-truncate @title
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
			m \iframe.Dialog_body,
				sandbox: @sandbox
