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
		@nodes = null
		@hist = os.createHist!

	oncreate: !->
		await @goDir \/
		@nodes = @entriesToNodes @entries

	entriesToNodes: (entries) ->
		nodes = []
		for entry in entries
			if entry.isDir
				node =
					name: entry.name
					icon: \folder:#394b59
					path: entry.path
					isOpen: no
				nodes.push node
		nodes

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

	goNode: (node) !->
		not= node.isOpen
		if node.isOpen
			entries =
				if node.path is @dir.path => @entries
				else await os.readDir node.path
			node.icon = \folder-open:#394b59
			node.nodes = @entriesToNodes entries
		else
			node.icon = \folder:#394b59
			node.nodes = null

	onclickBack: (event) !->
		@goDir @hist.undo!, yes

	onclickForward: (event) !->
		@goDir @hist.redo!, yes

	onclickParent: (event) !->
		dirname = os.dirnamePath @path
		@goDir dirname

	onsubmitPath: (event) !->
		@goDir @path

	onNodeNameClick: (node, event) !->
		switch event.which
		| 1
			switch event.detail
			| 1
				await @goDir node
			| 2
				await @goNode node
		m.redraw!

	onNodeIconClick: (node, event) !->
		switch event.which
		| 1
			await @goNode node
		m.redraw!

	onclickEntry: (entry, event) !->
		if event.detail is 1
			@selEntries = [entry]
		else
			if entry.isDir
				@goDir entry

	view: ->
		m \.column.gap-y-3.h-100.p-3,
			m \.row.gap-x-3,
				m ControlGroup,
					m Button,
						disabled: not @hist.canUndo
						icon: \arrow-left
						onclick: @onclickBack
					m Button,
						disabled: not @hist.canRedo
						icon: \arrow-right
						onclick: @onclickForward
					m Button,
						disabled: @dir?path is \/
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
			m \.col.row.gap-x-3,
				m \.scroll,
					style: m.style do
						minWidth: 240
					m TreeView,
						nodes: @nodes
						onnodenameclick: @onNodeNameClick
						onnodeiconclick: @onNodeIconClick
				m \.col,
					m Table,
						class: 'h-100 text-nowrap'
						interactive: yes
						header:
							m \tr,
								m \th.col-6 'Tên'
								m \th 'Kích thước'
								m \th 'Ngày sửa đổi'
						@entries.map (entry) ~>
							m \tr,
								class: m.class do
									'hover-bg-blue-2': @selEntries.includes entry
								onclick: !~>
									@onclickEntry entry, event
								m \td.col-6.text-wrap entry.name
								m \td filesize entry.size
								m \td (dayjs entry.mtime)format 'DD/MM/YYYY HH:mm'
			m \.col-0,
				"Thanh trạng thái"
