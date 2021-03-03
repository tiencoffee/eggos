ControlGroup = m.comp do
	onbeforeupdate: !->
		@attrs.width ?= @attrs.fill and \100%
		@tag = @attrs.onsubmit and \form or \div

	view: ->
		m @tag,
			class: m.class do
				\ControlGroup
				@attrs.class
			onsubmit: (event) !~>
				unless @attrs.onsubmit? event
					event.preventDefault!
			style: m.style do
				width: @attrs.width
				@attrs.style
			@children
