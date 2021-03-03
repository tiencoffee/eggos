await os.js do
	\dayjs
	\dayjs/locale/vi.js
	\filesize

os.App = m.comp do
	oninit: !->
		@path = void
		@dir = null
		@entries = []
		@selEntries = []
		@hist = os.createHist!

	oncreate: !->
		await @goDir \/

	goDir: (path, noPush) !->
		if typeof path is \string
			@path = os.resolvePath path
			m.redraw!
			@dir = await os.statEntry @path
		else
			@path = path.path
			@dir = path
		@entries = await os.readDir @path
		unless noPush
			@hist.push @dir
		m.redraw!

	onclickBack: (event) !->
		@goDir @hist.undo!, yes

	onclickForward: (event) !->
		@goDir @hist.redo!, yes

	onclickParent: (event) !->
		dirname = os.dirnamePath @path
		@goDir dirname

	onsubmitPath: (event) !->
		@goDir @path

	onclickEntry: (entry, event) !->
		if event.detail is 1
			@selEntries = [entry]
		else
			if entry.isDir
				@goDir entry

	view: ->
		m \.column.gap-y-3.p-3,
			m \.row.gap-x-3,
				m ControlGroup,
					m Button,
						icon: \arrow-left
						onclick: @onclickBack
					m Button,
						icon: \arrow-right
						onclick: @onclickForward
					m Button,
						icon: \arrow-up
						onclick: @onclickParent
				m ControlGroup,
					class: \col
					onsubmit: @onsubmitPath
					m TextInput,
						fill: yes
						value: @path
						oninput: (@path) !~>
					m Button,
						type: \submit
						icon: \level-down-alt:90
			m \.col,
				m Table,
					interactive: yes
					header:
						m \tr,
							m \th 'Tên'
							m \th 'Kích thước'
					@entries.map (entry) ~>
						m \tr,
							class: m.class do
								'hover-bg-blue-2': @selEntries.includes entry
							onclick: !~>
								@onclickEntry entry, event
							m \td entry.name
							m \td filesize entry.size
