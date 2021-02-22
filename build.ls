require! {
	fs
	\live-server
	\glob-concat
	\./api/middleware.js
}
process.chdir __dirname

paths =
	comps: globConcat.sync \comps/*
	filesApps: globConcat.sync \files/C/apps/*

text = JSON.stringify paths,, \\t
fs.writeFileSync \paths.json text

liveServer.start do
	host: \localhost
	port: 8080
	open: no
	logLevel: 0
	middleware: [middleware]
