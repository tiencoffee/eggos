TreeView = m.comp do
	onbeforeupdate: !->
		@root = @attrs.root or @

	view: ->
		m \.TreeView,
			class: m.class do
				'TreeView-subtree': @root isnt @
			if @attrs.nodes
				@attrs.nodes.map (node) ~>
					m \.TreeView_node,
						m \.TreeView_nodeBody,
							if node.icon
								m Icon,
									class: \TreeView_nodeIcon
									name: node.icon
									onclick: (event) !~>
										@root.attrs.onnodeiconclick? node, event
							m \.TreeView_nodeName,
								onclick: (event) !~>
									@root.attrs.onnodenameclick? node, event
								m \.text-truncate node.name
						if node.nodes?length
							m TreeView,
								nodes: node.nodes
								root: @root
