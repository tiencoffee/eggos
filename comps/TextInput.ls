TextInput = m.comp do
	onbeforeupdate: !->
		@attrs.width ?= @attrs.fill and \100% or 200

	view: ->
		m \.TextInput,
			class: m.class do
				@attrs.class
			style: m.style do
				width: @attrs.width
				@attrs.style
			@attrs.element
			if @attrs.icon
				m Icon,
					class: \TextInput_leftIcon
					name: that
			m \input.TextInput_input,
				type: \text
				value: @attrs.value
				oninput: (event) !~>
					@attrs.oninput? event.target.value, event
				onfocus: @attrs.onfocus
				onblur: @attrs.onblur
			if @attrs.rightIcon
				m Icon,
					class: \TextInput_rightIcon
					name: that
			@attrs.rightElement
