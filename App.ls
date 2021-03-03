os.App = m.comp do
	oninit: !->
		for k, prop of os
			@[k] = typeof prop is \function and prop.bind @ or prop
		window.os = os := @
		@textEncoder = new TextEncoder
		@apps = []
		@tasks = []
		@screen = {}
		@onresize!

	normalizePath: (path, returnArr) ->
		nodes = []
		unless Array.isArray path
			path .= split /\/+/
		abs = if path.0 => '' else \/
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

	dirnamePath: (path) ->
		[abs, nodes] = @normalizePath path, yes
		abs + nodes.slice 0 -1 .join \/

	basenamePath: (path) ->
		@normalizePath path, yes .1[* - 1]

	filenamePath: (path) ->
		basename = @basenamePath path
		extname = @extnamePath basename
		basename.replace extname, ''

	extnamePath: (path) ->
		path = @basenamePath path if path.includes \/
		matched = /(?<!^)\.[^.]*$/exec basename
		if matched => matched.0 else ''

	joinPath: (...paths) ->
		@normalizePath paths.join \/

	resolvePath: (...paths) ->
		for i from paths.length - 1 to 0 by -1
			break if paths[i]0 is \/
		path = @normalizePath (paths.slice i .join \/)
		path = \/ + path unless path.0 is \/
		path

	readFile: (path, type) ->
		path = @pathEntry path
		type = type? and type.0.toUpperCase! + type.substring 1 or \Text
		await fs.readFile path, {type}

	writeFile: (path, data, isAppend) ->
		path = @pathEntry path
		unless _.isArrayBuffer data
			data = @textEncoder.encode data .buffer
		file = await fs[isAppend and \appendFile or \writeFile] path, data
		fs.stat file

	appendFile: (path, data) ->
		@writeFile path, data, yes

	removeFile: (path) ->
		path = @pathEntry path
		result = await fs.unlink path
		result isnt no

	createDir: (path) ->
		path = @pathEntry path
		dir = await fs.mkdir path
		fs.stat dir

	readDir: (path, isDeep) ->
		path = @pathEntry path
		entries = await fs.readdir path, deep: isDeep
		Promise.all entries.map (entry) ~>
			fs.stat entry

	removeDir: (path) ->
		path = @pathEntry path
		dir = await fs.rmdir path
		fs.stat dir

	moveEntry: (path, newPath, isCreate) ->
		path = @pathEntry path
		newPath = @pathEntry newPath
		entry = await fs.rename path, newPath, create: isCreate
		fs.stat entry

	copyEntry: (path, newPath, isCreate) ->
		path = @pathEntry path
		newPath = @pathEntry newPath
		entry = await fs.copy path, newPath, create: isCreate
		fs.stat entry

	existsEntry: (path) ->
		path = @pathEntry path
		fs.exists path

	statEntry: (path) ->
		if path.path => path else fs.stat path

	pathEntry: (path) ->
		path?path or path

	installApp: (meta, dist) !->
		if typeof meta is \string
			meta =
				type: \boot
				src: meta
		switch meta.type
		| \boot
			app = await m.fetch "#{meta.src}/app.yml"
			app = jsyaml.safeLoad app
			code = await m.fetch "#{meta.src}/app.ls"
			app.codePath = \app.ls
			try
				styl = await m.fetch "#{meta.src}/app.styl"
				app.stylPath = \app.styl
		| \codepen
			app =
				name: meta.name
			app.icon? = meta.icon
			app.title? = meta.title
			await @js \jszip/dist/jszip.min.js
			buf = m.fetch "api/middleware.js?url=#{meta.src}" \arrayBuffer
			zip = new JSZip
			paths = (await zip.loadAsync buf)files
			code = await paths"#{meta.zip}/dist/script.js"async \arrayBuffer
			app.codePath = \app.js
			styl = await paths"#{meta.zip}/dist/style.css"async \arrayBuffer
			app.stylPath = \app.css
			tmpl = await paths"#{meta.zip}/dist/index.html"async \text
			tmpl = new DOMParser!parseFromString tmpl, \text/html
			els = tmpl.querySelectorAll '
				meta[charset], title, link[href="./style.css"], script[src="./script.js"]'
			for el in els
				el.remove!
			tmpl = tmpl.head.innerHTML + tmpl.body.innerHTML
			app.tmplPath = \app.html
		await @writeFile "#dist/#{app.codePath}" code
		await @writeFile "#dist/#{app.stylPath}" styl if styl
		await @writeFile "#dist/#{app.tmplPath}" tmpl if tmpl
		app.path = dist
		app.type ?= \boot
		info = jsyaml.safeDump app
		await @writeFile "#dist/app.yml" info
		db = await @openDb \apps
		unless db.data.includes dist
			db.data.push dist
			await db.save!
		@apps.push app

	loadApps: !->
		db = (await @openDb \apps)data
		for path in db
			unless boot.paths.apps.includes path
				app = await @readFile "#path/app.yml"
				app = jsyaml.safeLoad app
				@apps.push app

	runTask: (path, env = {}) !->
		if app = @apps.find (.path is path)
			env = Object.assign {} app, env
			tid = m.uuid!
			code = await @readFile "#path/#{app.codePath}"
			styl = if app.stylPath => await @readFile "#path/#that" else ''
			tmpl = if app.tmplPath => await @readFile "#path/#that" else ''
			task =
				tid: tid
				app: app
				env: env
				code: code
				styl: styl
				tmpl: tmpl
			@tasks.push task
			m.redraw!

	openDb: (name) ->
		if name in <[apps]>
			path = "/C/eggos/db/#name.json"
			db =
				data: JSON.parse await @readFile path
				save: ~>
					@writeFile path, JSON.stringify db.data

	writeDb: (name) ->
		if name in <[apps]>
			@writeFile "/C/eggos/db/#name.json"

	onresize: !->
		@screen.x = 0
		@screen.y = 0
		@screen.width = innerWidth
		@screen.height = innerHeight

	onmessage: (event) !->
		{tid, mid, prop, params = []} = event.data
		task = @tasks.find (.tid is tid)
		if task
			message =
				mid: mid
			try
				result =
					switch prop
					| \readFile
						[path, type] = params
						@readFile path, type

					| \writeFile
						[path, data] = params
						@writeFile path, data

					| \appendFile
						[path, data] = params
						@appendFile path, data

					| \removeFile
						[path] = params
						@removeFile path

					| \createDir
						[path] = params
						@createDir path

					| \_getEnv
						task.env

					else throw Error "Không có hàm #prop"
				message.result = await result
			catch message.err
			task.ui.ifrm.contentWindow.postMessage message, \*

	oncreate: !->
		addEventListener \resize @onresize
		addEventListener \message @onmessage
		await fs.init bytes: 104857600
		for path in boot.paths.eggos
			unless await @existsEntry path
				buf = await m.fetch path, \arrayBuffer
				@writeFile path, buf
		for path in boot.paths.apps
			await @installApp path, path
		await @loadApps!
		@runTask \/C/apps/FileManager

	view: ->
		m \._main,
			m \._tasks,
				@tasks.map (task) ~>
					m Dialog,
						task: task
