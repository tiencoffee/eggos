require! {
	fs
	\live-server
	\glob-concat
	\./api/middleware.js
}
process.chdir __dirname

globSync = (glob) ->
	globConcat.sync glob .map (path) ~> \/ + path

paths =
	compsBoth: globSync \comps/both/*
	compsMain: globSync \comps/main/*
	apps: globSync \C/apps/*
	eggos: globSync \C/eggos/**/*.*

text = JSON.stringify paths,, \\t
fs.writeFileSync \paths.json text

liveServer.start do
	host: \localhost
	port: 8080
	open: no
	logLevel: 0
	middleware: [middleware]
