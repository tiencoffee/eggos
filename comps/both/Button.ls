Button = m.comp do
	onbeforeupdate: !->
		@attrs.type ?= \button
		@attrs.color ?= \light

	view: ->
		m \button.Button,
			class: m.class do
				"Button-minimal": @attrs.minimal
				"Button-#{@attrs.color}": @attrs.color
				"disabled": @attrs.disabled
				@attrs.class
			type: @attrs.type
			onclick: @attrs.onclick
			if @attrs.icon
				m Icon,
					class: 'Button_icon Button_leftIcon'
					name: that
			if @children.length
				m \.Button_text,
					@children
			if @attrs.rightIcon
				m Icon,
					class: 'Button_icon Button_rightIcon'
					name: that
