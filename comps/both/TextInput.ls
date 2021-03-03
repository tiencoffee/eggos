TextInput = m.comp do
	oninit: !->
		@value = @attrs.value

	onbeforeupdate: (old) !->
		@attrs.width ?= @attrs.fill and \100% or 200
		unless @attrs.value is old.attrs.value
			@value = @attrs.value

	view: ->
		m \.TextInput,
			class: m.class do
				@attrs.class
			style: m.style do
				width: @attrs.width
				@attrs.style
			type: @attrs.type
			@attrs.element
			if @attrs.icon
				m Icon,
					class: \TextInput_leftIcon
					name: that
			m \input.TextInput_input,
				name: @attrs.name
				type: \text
				value: @value
				oninput: (event) !~>
					@value = event.target.value
					@attrs.oninput? @value, event
				onchange: (event) !~>
					@value = event.target.value
					@attrs.onchange? @value, event
				onfocus: @attrs.onfocus
				onblur: @attrs.onblur
			if @attrs.rightIcon
				m Icon,
					class: \TextInput_rightIcon
					name: that
			@attrs.rightElement
