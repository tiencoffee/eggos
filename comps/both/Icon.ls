Icon = m.comp do
	onbeforeupdate: !->
		{name} = @attrs
		if /^\d+$/test name
			name = "flaticon:#name"
		else if not name.includes \:
			name = "fa:#name"
		[@type, @name] = name.split \:
		@isFa = /^fa[srldb]?$/test @type
		if @type is \flaticon
			@type = \https
			@name = "//flaticon.com/svg/static/icons/svg/#{@name.slice 0 -3}/#@name.svg"

	view: ->
		if @isFa
			m \.Icon-fa,
				class: m.class do
					"#@type fa-#@name"
					@attrs.class
		else
			m \img.Icon-img,
				class: m.class do
					@attrs.class
				src: @name
