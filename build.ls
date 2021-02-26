require! {
	fs
	\live-server
	\glob-concat
	\./api/middleware.js
}
process.chdir __dirname

paths =
	compsBoth: globConcat.sync \comps/both/*
	compsMain: globConcat.sync \comps/main/*
	apps: globConcat.sync \C/apps/*

text = JSON.stringify paths,, \\t
fs.writeFileSync \paths.json text

liveServer.start do
	host: \localhost
	port: 8080
	open: no
	logLevel: 0
	middleware: [middleware]
