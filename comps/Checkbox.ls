Checkbox = m.comp do
	view: ->
		m \label.Checkbox,
			m \input.Checkbox_input,
				type: \checkbox
				checked: @attrs.checked
				oninput: !~>
					@attrs.oninput? not @attrs.checked, it
			if @attrs.label?
				m \.Checkbox_label,
					that + ''
