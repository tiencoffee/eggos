Button = m.comp do
	view: ->
		m \button.Button,
			class: m.class do
				"Button-#that" if @attrs.color
			type: \button
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
