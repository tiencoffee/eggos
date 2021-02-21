os = {}

Object.defineProperties os,
	isMain:
		value: ((isMain))

m <<<
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

	class: (...clses) ->
		res = []
		for cls in clses
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

	bind: (obj, thisArg = obj) ->
		for k, val of obj
			if typeof val is \function and val.name isnt /(bound|class) /
				obj[k] = val.bind thisArg
		obj

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

	comp: (props) ->
		comp = ->
			old = {}
			vdom = {...props}
			vdom <<<
				oninit: (vnode) !->
					{@attrs or {}, @children or []} = vnode
					props.oninit?call @
					old :=
						attrs: {...@attrs}
						children: [...@children]
					props.onbeforeupdate?call @, old, yes
				oncreate: (vnode) !->
					{@dom} = vnode
					props.oncreate?call @
					props.onupdate?call @, yes
				onbeforeupdate: (vnode) ->
					{@attrs or {}, @children or []} = vnode
					props.onbeforeupdate?call @, old
				onupdate: (vnode) !->
					{@dom} = vnode
					props.onupdate?call @
					old :=
						attrs: {...@attrs}
						children: [...@children]
						dom: @dom
			m.bind vdom

((both))
((code))

if os.App
	m.bind os.App
	m.mount appEl, os.App
