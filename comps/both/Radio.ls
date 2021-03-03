Radio = m.comp do
	view: ->
		m \label.Radio,
			m \input.Radio_input,
				type: \radio
				name: @attrs.name
				checked: @attrs.checked is @attrs.value
				oninput: !~>
					@attrs.oninput? @attrs.value, it
			if @attrs.label?
				m \.Radio_label that
