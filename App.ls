os.App = m.comp do
	oninit: !->
		@textEncoder = new TextEncoder

	readFile: (path, type) ->
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

	oncreate: !->
		await fs.init bytes: 104857600

	view: ->
		m \.App,
			"ilI'|0OoQag,."
