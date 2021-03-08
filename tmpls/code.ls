os =
	tid: '((tid))'
	env: {}
	App: null
	_imiMessageResolves: {}

	_importedLibs:
		'mithril': yes
		'lodash': yes
		'@popperjs/core': yes

	_lib: (type, libs) ->
		libs .= flat 1
		promises = []
		for lib in libs
			unless @_importedLibs[lib]
				@_importedLibs[lib] = yes
				match lib
				| /^(https?:)?\/\//
					url = lib
				| /^gh:/
					url = "//cdn.jsdelivr.net/gh/#{lib.substring 3}"
				else
					url = "//cdn.jsdelivr.net/npm/#lib"
				if url
					promise = (await fetch url)text!
				promises.push promise
		Promise.all promises

	js: (...libs) !->
		codes = await @_lib \js libs
		for code in codes
			window.eval code

	css: (...libs) !->
		styls = await @_lib \js libs
		for styl in styls
			el = document.createElement \style
			el.textContent = styl
			document.head.appendChild el

	createHist: ({list = [], size = 200}) ->
		index: list.length - 1
		end: list.length - 1
		start: @end - @size + 1 >? 0
		size: size
		list: list
		canUndo: list.length > 1
		canRedo: no
		add: (data) !->
			end = @end % @size
			@end++
			@list[@end % @size] = @list[end]
			@list[end] = @list[@index]
			@index = @end
			@start = @end - @size + 1 >? 0
			@canUndo = yes
			@canRedo = no
		push: (data) !->
			@index++
			@list[@index % @size] = data
			@end = @index
			@start = @end - @size + 1 >? 0
			@canUndo = @list.length > 1
			@canRedo = no
		undo: ->
			if @canUndo
				@index--
				@canUndo = @index > @start
				@canRedo = yes
				@list[@index % @size]
		redo: ->
			if @canRedo
				@index++
				@canRedo = @index < @end
				@canUndo = yes
				@list[@index % @size]

	showContextMenu: (items) !->
		@contextMenuItems = items

m <<<
	uidVal: 0
	cssUnitless:
		animationIterationCount: yes
		borderImageOutset: yes
		borderImageSlice: yes
		borderImageWidth: yes
		boxFlex: yes
		boxFlexGroup: yes
		boxOrdinalGroup: yes
		columnCount: yes
		columns: yes
		flex: yes
		flexGrow: yes
		flexPositive: yes
		flexShrink: yes
		flexNegative: yes
		flexOrder: yes
		gridArea: yes
		gridRow: yes
		gridRowEnd: yes
		gridRowSpan: yes
		gridRowStart: yes
		gridColumn: yes
		gridColumnEnd: yes
		gridColumnSpan: yes
		gridColumnStart: yes
		fontWeight: yes
		lineClamp: yes
		lineHeight: yes
		opacity: yes
		order: yes
		orphans: yes
		tabSize: yes
		widows: yes
		zIndex: yes
		zoom: yes
		fillOpacity: yes
		floodOpacity: yes
		stopOpacity: yes
		strokeDasharray: yes
		strokeDashoffset: yes
		strokeMiterlimit: yes
		strokeOpacity: yes
		strokeWidth: yes

	class: (...classes) ->
		res = []
		for cls in classes
			if Array.isArray cls
				res.push m.class ...cls
			else if cls instanceof Object
				for k, v of cls
					res.push k if v
			else if cls?
				res.push cls
		res * " "

	style: (...styles) ->
		res = {}
		for style in styles
			if Array.isArray style
				style = m.style ...style
			if style instanceof Object
				for k, val of style
					res[k] = val
					res[k] += \px if not m.cssUnitless[k] and +val
		res

	bind: (obj, thisArg = obj, assignObj = obj) ->
		for k, val of obj
			if typeof val is \function and val.name isnt /(bound|class) /
				assignObj[k] = val.bind thisArg
		assignObj

	uid: ->
		++m.uidVal

	uuid: ->
		"u#{Math.random!toString 36}#{m.uid!}#{performance.now!toString 36}"
			.replace /\./g ''

	fetch: (url, opts, type) ->
		if typeof opts is \string
			[opts, type] = [, opts]
		type ?= \text
		(await fetch url, opts)[type]!

	popper: (refEl, popperEl, attrs = {}) ->
		Popper.createPopper refEl, popperEl,
			placement: attrs.placement ? \auto
			strategy: \fixed
			modifiers:
				* name: \offset
					options:
						offset: attrs.offsets
				* name: \preventOverflow
					options:
						padding: attrs.padding
				* name: \flip
					options:
						fallbackPlacements: attrs.flips
						allowedAutoPlacements: attrs.allowedFlips

	comp: (props, ...statics) ->
		comp = ->
			old = {}
			vdom = {...props}
			vdom <<<
				__oninit: vdom.oninit
				__oncreate: vdom.oncreate
				__onbeforeupdate: vdom.onbeforeupdate
				__onupdate: vdom.onupdate
				oninit: (vnode) !->
					{@attrs or {}, @children or []} = vnode
					@__oninit?!
					old :=
						attrs: {...@attrs}
						children: [...@children]
					@__onbeforeupdate? old, yes
				oncreate: (vnode) !->
					{@dom} = vnode
					@__oncreate?!
					@__onupdate? yes
				onbeforeupdate: (vnode) ->
					{@attrs or {}, @children or []} = vnode
					@__onbeforeupdate? old
				onupdate: (vnode) !->
					{@dom} = vnode
					@__onupdate?!
					old :=
						attrs: {...@attrs}
						children: [...@children]
						dom: @dom
			m.bind vdom
		for stt in statics
			if stt
				comp <<< stt
		m.bind comp

((both))

if os.tid
	os = new Proxy os,
		get: (obj, prop) ~>
			if prop of obj
				obj[prop]
			else if os.env.isSystem and window.top.os[prop]
				window.top.os[prop]
			else
				(...params) ~>
					new Promise (resolve, reject) !~>
						mid = m.uuid!
						obj._imiMessageResolves[mid] = [resolve, reject]
						window.top.postMessage do
							tid: os.tid
							mid: mid
							prop: prop
							params: params
							\*

		set: (obj, prop, val) ~>
			obj[prop] = val
			yes

	addEventListener \message (event) !~>
		{mid, result, err} = event.data
		if resolves = os._imiMessageResolves[mid]
			if \err of event.data
				resolves.1 err
			else
				resolves.0 result
	, yes

	os.env = await os._getEnv!

window.addEventListener \contextmenu (.preventDefault!), yes

await do !->>
	unless os.env.isSystem
		localStorage =
			key: (index) ->
				key = Object.keys @ .[+index or 0]
				if key? => key else null
			getItem: (key) ->
				if key of @ => @[key] else null
			setItem: (key, val) !->
				@[key] = val + ''
			removeItem: (key) !->
				delete @[key]
			clear: !->
				for k of @ => delete @[k]
		sessionStorage = {...localStorage}

	((code))

if os.App
	m.mount appEl, os.App
