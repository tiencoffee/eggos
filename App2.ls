os.App =
	oninit: !->
		@val = 'lI1|oO0ag3 ~@$%^&*()[]{}-=/,.'
		@pwd = 'Cái gì :)'
		@radio = \gaMongHoangDa
		@check = yes
		@options =
			* text: 'Đối tượng'
				value: t: 100
			* text: 'Mảng'
				value: [1 2 3]
			* text: 'Số dấu chấm động'
				value: Math.PI
			,,
			* text: 'Văn bản'
				value: \van-ban
			* text: void
				value: void
			,,
			2021
			no
			'Ngày xửa ngày xưa, có một cô bé ngoan ngoãn nghe lời mẹ rồi cầm giỏ bánh đi sang nhà bà ngoại.'
			[4 \ok,, no, [0 1]]
			* value: \only-value
			* text: "Biến: #@val"
				value: @val
		@select = \only-value
		@menuItems =
			* text: 'Chọn'
				color: \blue
				icon: \check-circle
			,,
			* text: 'Sắp xếp theo'
				icon: \sort-amount-down
				items:
					* text: 'Tên'
						onclick: !~>
							console.log 4
					* text: 'Ngày'
					* text: 'Loại'
					,,
					* text: 'Tùy chỉnh...'
			* text: 'Làm mới'
				color: \green
			,,
			* text: 'Xóa'
				color: \red
				icon: \trash-alt
				label: \Delete
			* text: 'Ngôn ngữ'
				color: \yellow
				items:
					* text: 'Việt Nam'
						icon: 197473
					* text: 'Anh'
						icon: 197374
						items:
							* text: 'Anh'
								icon: 197374
							* text: 'Mỹ'
								icon: 197484
							* text: 'Canada'
								icon: 197430
							* text: 'Úc'
								icon: 197507
					* text: 'Nhật Bản'
						icon: 197604
					* text: 'Trung Quốc'
						icon: 197375
					* text: 'Các tiểu vương quốc Ả Rập thống nhất'
						icon: 197569
					* text: 'Tây Ban Nha'
						icon: 197593
						items:
							* text: 'Tây Ban Nha'
								icon: 197593
							* text: 'Mexico'
								icon: 197397
					* text: 'Bồ Đào Nha'
						icon: 197463
						items:
							* text: 'Bồ Đào Nha'
								icon: 197463
							* text: 'Brazil'
								icon: 197386
			* text: 'Tìm kiếm trên Google'
				disabled: yes
				icon: \fab:google
			* text: 'Thông tin...'
				icon: \info

	view: ->
		m \.p-3,
			m \style,
				'#appEl > div > * {margin: 4px}'
			m \p Date.now!
			m Button,
				'Nút bấm'
			<[light blue red]>map (color) ~>
				[
					m Button,
						color: color
						color
					m Button,
						minimal: yes
						color: color
						color
				]
			m Button,
				icon: \download
				'Tải xuống'
			m TextInput,
				value: @val
				oninput: (@val) ~>
			m TextInput,
				icon: \user
				value: @val
				oninput: (@val) ~>
			m PasswordInput,
				value: @pwd
				oninput: (@pwd) ~>
			m Icon,
				name: \fad:snake
			m Icon,
				name: \far:wheat
			m Icon,
				name: 752326
			m Radio,
				checked: @radio
				value: \gaMongHoangDa
				label: 'Gà móng hoang dã'
				oninput: (@radio) ~>
			m Radio,
				checked: @radio
				value: \sam
				label: 'Sam'
				oninput: (@radio) ~>
			m Checkbox,
				checked: @check
				label: "check: #@check"
				oninput: (@check) ~>
			m Select,
				items: @options
				value: @select
				oninput: (@select) ~>
			<[light blue red]>map (color) ~>
				m ".bg-#color.p-3.inline-block",
					color
			m Menu,
				items: @menuItems
