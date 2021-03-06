Icon = m.comp do
	onbeforeupdate: (old, first) !->
		if first or @attrs.name isnt old.attrs.name
			name = @attrs.name + ''
			@isFa = no
			if /^\d+$/test name
				@name = "//flaticon.com/svg/static/icons/svg/#{name.slice 0 -3}/#name.svg"
			else if /^(https?:)?\/\//test name =>
			else
				vals = name.split \:
				vals.unshift \fa if vals.0 isnt /^fa[srldb]?$/
				@name = "#{vals.0} fa-#{vals.1}"
				for val in vals
					switch val.0
					| \#
						@color = val
					| \v \h \b
						@name += " fa-flip-#{Icon.flips[val]}"
					else
						@name += " fa-rotate-#val"
				@isFa = yes

	view: ->
		if @isFa
			m \.Icon-fa,
				class: m.class do
					@name
					@attrs.class
				style: m.style do
					color: @color
				onclick: @attrs.onclick
		else
			m \img.Icon-img,
				class: m.class do
					@attrs.class
				src: @name
				onclick: @attrs.onclick
	,,
		flips:
			h: \horizontal
			v: \vertical
			b: \both
