require! {
	fs
	\live-server
	\glob-concat
}
process.chdir __dirname

paths =
	comps: globConcat.sync \comps/*

text = JSON.stringify paths,, \\t
fs.writeFileSync \paths.json text

liveServer.start do
	host: \localhost
	port: 8080
	open: no
	logLevel: 0
