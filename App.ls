os.App = m.comp do
	oninit: !->
		os := @
		@textEncoder = new TextEncoder
		@apps = []
		@tasks = []
		@screen = {}
		@onresize!
		window.ap = @

	readFile: (path, type) ->
		type = type? and type.0.toUpperCase! + type.substring 1 or \Text
		fs.readFile path, {type}

	writeFile: (path, data, isAppend) ->
		unless _.isArrayBuffer data
			data = @textEncoder.encode data .buffer
		fs[isAppend and \appendFile or \writeFile] path, data

	appendFile: (path, data) ->
		@writeFile path, data, yes

	removeFile: (path) ->
		fs.unlink path

	createDir: (path) ->
		fs.mkdir path

	readDir: (path, isDeep) ->
		fs.readdir path, deep: isDeep

	removeDir: (path) ->
		fs.rmdir path

	moveEntry: (path, newPath, isCreate) ->
		fs.rename path, newPath, create: isCreate

	copyEntry: (path, newPath, isCreate) ->
		fs.copy path, newPath, create: isCreate

	existsEntry: (path) ->
		fs.exists path

	statsEntry: (path) ->
		fs.stat path

	normalizePath: (path, returnArr) ->
		nodes = []
		if path.0 is \/
			abs = \/
			path .= substring 1
		else
			abs = ''
		path .= split /\/+/
		for node in path
			if node = node.trim!
				switch node
				| \. =>
				| \.. => nodes.pop!
				else nodes.push node
		if returnArr
			[abs, nodes]
		else
			abs + nodes.join \/

	basenamePath: (path) ->
		@normalizePath path, yes .1[* - 1]

	dirnamePath: (path) ->
		[abs, nodes] = @normalizePath path, yes
		abs + nodes.slice 0 -1 .join \/

	extnamePath: (path) ->
		path = @basenamePath path if path.includes \/
		matched = /(?<!^)\.[^.]*$/exec basename
		if matched => matched.0 else ''

	filenamePath: (path) ->
		basename = @basenamePath path
		extname = @extnamePath basename
		basename.replace extname, ''

	installApp: (url, dist, type) !->
		info = await m.fetch "#url/app.yml"
		app = jsyaml.safeLoad info
		await @writeFile "#dist/app.yml" info
		code = await m.fetch "#url/app.ls"
		await @writeFile "#dist/app.ls" code
		try
			styl = await m.fetch "#url/app.styl"
			await @writeFile "#dist/app.styl" styl
			app.hasStyl = yes
		app.path = dist
		@apps.push app

	runTask: (path) !->
		if app = @apps.find (.path is path)
			code = await @readFile "#path/app.ls"
			styl = if app.hasStyl => await @readFile "#path/app.styl" else ''
			task =
				app: app
				code: code
				styl: styl
			@tasks.push task
			m.redraw!

	onresize: !->
		@screen.x = 0
		@screen.y = 0
		@screen.width = innerWidth
		@screen.height = innerHeight

	onmessage: (event) !->
		{type, tid, mid, prop, params} = event.data
		if type is \imi
			switch \code

	oncreate: !->
		addEventListener \resize @onresize
		addEventListener \message @onmessage
		await fs.init bytes: 104857600
		for path in boot.paths.apps
			await @installApp path, "/#path" \boot
		@runTask \/C/apps/Store

	view: ->
		m \._main,
			m \._tasks,
				@tasks.map (task) ~>
					m Dialog,
						task: task
