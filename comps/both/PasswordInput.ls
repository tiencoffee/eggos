PasswordInput = m.comp do
	oninit: !->
		@isHidePassword = yes

	view: ->
		m TextInput,
			class:
				'PasswordInput-hidePassword': @isHidePassword
				\PasswordInput
			name: @attrs.name
			value: @attrs.value
			oninput: @attrs.oninput
			onblur: (event) !~>
				if @dom.contains event.relatedTarget
					event.target.focus!
				else
					@attrs.onblur? event
			rightElement:
				m Button,
					class: \PasswordInput_toggle
					icon: @isHidePassword and \eye or \eye-slash
					onclick: !~>
						not= @isHidePassword
