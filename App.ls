os.App =
	oninit: ->
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

	view: ->
		m \.P3,
			m \p Date.now!
			m Button,
				'Nút bấm'
			m Button,
				color: \blue
				'Nút bấm'
			m Button,
				color: \red
				'Nút bấm'
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
