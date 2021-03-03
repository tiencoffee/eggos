boot =
	paths: await(await fetch \paths.json)json!
	styl: await(await fetch \tmpls/styl.styl)text!
	code: await(await fetch \tmpls/code.ls)text!
	tmpl: await(await fetch \tmpls/tmpl.html)text!

styl = boot.styl.replace '((styl))' ''
styl = stylus.render styl, compress: yes
stylEl.textContent = styl

both = ''
for path in boot.paths.compsBoth
	both += await(await fetch path)text!
boot.code .= replace '((both))' both

main = ''
for path in boot.paths.compsMain
	main += await(await fetch path)text!
main += await(await fetch \app.ls)text!
main .= replace /\n(?!\n|$)/g \\n\t
code = boot.code
	.replace '((tid))' ''
	.replace '((code))' main

livescript.run code

window.boot = boot
