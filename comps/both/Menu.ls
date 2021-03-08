Menu = m.comp do
	oninit: !->
		@item = void
		@popper = null
		@timo = 0
		@root = @attrs.root or @

	onmouseenterItem: (item, event) !->
		unless item is @item
			@close!
			if @root
				addEventListener \mousedown @onmousedownWindow, yes
			@item = item
			if item.items
				@timo = setTimeout !~>
					comp =
						view: ->
							m Menu,
								class: \Menu-submenu
								items: item.items
					el = @dom.lastChild
					m.mount el, comp
					@popper = m.popper event.target, el,
						placement: \right-start
						offsets: [-5 -4]
						allowedFlips: [\right-start \left-start]
					@timo = 0
					m.redraw!
				, 250

	onmouseleaveItem: (item, event) !->
		if @item and not @item.items or @timo
			@close!

	onmousedownWindow: (event) !->
		unless @dom.contains event.target
			@close!
			m.redraw!

	close: !->
		@item = void
		if @root
			removeEventListener \mousedown @onmousedownWindow, yes
		if @timo
			@timo = clearTimeout @timo
		if @popper
			m.mount @popper.state.elements.popper
			@popper.destroy!
			@popper = null

	onremove: !->
		@close!
		@attrs.onclose? null

	view: ->
		m \.Menu,
			class: m.class do
				@attrs.class
			root: @root
			@attrs.items.map (item) ~>
				if item
					m \.Menu_item,
						class: m.class do
							'Menu_item-hover': @item is item
						onmouseenter: (event) !~>
							@onmouseenterItem item, event
						onmouseleave: (event) !~>
							@onmouseleaveItem item, event
						onclick: (event) !~>
							item.onclick? item, event
							@attrs.onitemclick? item
							@attrs.onclose? item
						m \.Menu_itemIcon,
							if item.icon
								m Icon, name: that
						m \.Menu_itemText,
							m \.text-truncate item.text
						if item.items
							m Icon, name: \chevron-right
						else if item.label
							m \.Menu_itemLabel that
				else
					m \.Menu_divider
			m \.Menu-popper
