Select = m.comp do
	oninit: !->
		@popper = null
		@list = null
		@updateItems!

	onbeforeupdate: !->
		@attrs.width ?= @attrs.fill and \100% or 200

	updateItems: !->
		@items = _.castArray @attrs.items .map (item) ~>
			if typeof! item is \Object => {item.text ? item.value, item.value}
			else if item? => text: item, value: item
		@updateItem!
		@hoverItem = @item

	updateItem: (item) !->
		@item = item or @items.find ~>
			it? and it.value is @attrs.value

	onclick: (event) !->
		if @popper
			@close!
		else
			@updateItems!
			comp =
				view: ~>
					@items.map (item) ~>
						if item?
							m \.Select_item,
								class: m.class do
									'Select_item-hover': @hoverItem is item
								onmouseenter: !~>
									@hoverItem = item
								onclick: !~>
									unless @item is item
										@attrs.oninput? item.value, it
										@updateItem item
								m \.Select_itemText,
									item.text + ''
						else
							m \.Select_divider
			@list.dom.style
				..width = @dom.offsetWidth + \px
				..maxHeight = Math.floor(innerHeight / 2 - @dom.offsetHeight * 2) + \px
			m.mount @list.dom, comp
			@popper = m.popper @dom, @list.dom,
				placement: \bottom
				allowedFlips: [\bottom \top]
			index = @items.indexOf @item
			@list.dom.children[index]?scrollIntoView block: \nearest
			addEventListener \mousedown @onmousedownWindow, yes

	onmousedownWindow: (event) !->
		unless @dom.contains event.target
			@close!

	close: !->
		if @popper
			@popper.destroy!
			@popper = null
			@hoverItem = void
			m.mount @list.dom
			removeEventListener \mousedown @onmousedownWindow, yes

	onremove: !->
		@close!

	view: ->
		m \.Select,
			style: m.style do
				width: @attrs.width
				@attrs.style
			onclick: @onclick
			m \.Select_text,
				@item and @item.text + ''
			m Icon,
				name: \caret-down
			@list =
				m \.Select_list
