Icon = m.comp do
	onbeforeupdate: !->
		{name} = @attrs
		@isFa = no
		if /^\d+$/test name
			name = "//flaticon.com/svg/static/icons/svg/#{name.slice 0 -3}/#name.svg"
		else if matched = /^(?:(fa[srldb]?):)?([-a-z\d]+)(?::(\d*)([hvb]?))?$/exec name
			name = "#{matched.1 or \fa} fa-#{matched.2}"
			if matched.3
				name += " fa-rotate-#{matched.3}"
			if matched.4
				name += " fa-flip-#{Icon.flips[matched.4]}"
			@isFa = yes
		@name = name

	view: ->
		if @isFa
			m \.Icon-fa,
				class: m.class do
					@name
					@attrs.class
		else
			m \img.Icon-img,
				class: m.class do
					@attrs.class
				src: @name
	,,
		flips:
			h: \horizontal
			v: \vertical
			b: \both
