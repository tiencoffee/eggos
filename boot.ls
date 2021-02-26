boot =
	paths: await(await fetch \paths.json)json!
	styl: await(await fetch \styl.styl)text!
	code: await(await fetch \code.ls)text!
	tmpl: await(await fetch \tmpl.html)text!

styl = boot.styl.replace '((styl))' ''
styl = stylus.render styl
stylEl.textContent = styl

both = ''
for path in boot.paths.compsBoth
	both += await(await fetch path)text!
boot.code .= replace '((both))' both

main = ''
for path in boot.paths.compsMain
	main += await(await fetch path)text!
main += await(await fetch \app.ls)text!
code = boot.code
	.replace '((tid))' ''
	.replace '((code))' main

livescript.run code

window.boot = boot
