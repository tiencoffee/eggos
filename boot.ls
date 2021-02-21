boot =
	paths: await(await fetch \paths.json)json!
	styl: await(await fetch \index.styl)text!
	code: await(await fetch \index.ls)text!

styl = boot.styl.replace '((styl))' ''
styl = stylus.render styl
stylEl.textContent = styl

both = ''
for path in boot.paths.comps
	both += await(await fetch path)text!
boot.code .= replace '((both))' both

main = await(await fetch \App.ls)text!
code = boot.code
	.replace '((isMain))' \yes
	.replace '((code))' main

livescript.run code

window.boot = boot
