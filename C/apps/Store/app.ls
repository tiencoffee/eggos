await os.js do
	\dayjs
	\dayjs/locale/vi.js
	\filesize
	\jszip/dist/jszip.min.js

dayjs.locale \vi

os.App = m.comp do
	oninit: !->
		os.ap = @
		@apps =
			* name: 'Cub n Pup - puzzle game demo'
				author: \desandro
				tags: 'game puzzle'
				zip: \ezNawy/1614112734223/cub-n-puppuzzle-game-demo
				size: 32408
			* name: 'Only CSS: Polygon Fish'
				author: \YusukeNakaya
				tags: 'fish fun pure-css'
				zip: \WNopRwX/1614113286371/only-css-polygon-fish
				size: 7444
			* name: 'Reactive Synth'
				author: \lerida
				tags: 'music synth react'
				zip: \bGwzVvo/1614144788470/reactive-synth
				size: 14853
			* name: 'Animated Candle Toggle w GSAP'
				author: \kdbkapsere
				tags: 'cute fun animation candle'
				zip: \JBqQvp/1614145445520/animated-candle-toggle-w-gsap
				size: 15169
			* name: 'No More Jabber Yabs: The Game'
				author: \kdbkapsere
				tags: 'game fun jabber'
				zip: \BoJRyQ/1614145643457/no-more-jabber-yabs-the-game
				size: 13888
			* name: 'Block Breaking'
				author: \hankuro
				tags: 'game block breaking'
				zip: \qBbeJGE/1614145747496/block-breaking
				size: 8368
			* name: 'Pika Pika!'
				author: \derossi_s
				tags: 'cute pikachu'
				zip: \paVEGR/1614145977607/pika-pika
				size: 12048
			* name: 'Procedural Low Poly Planet'
				author: \soju22
				tags: 'earth planet 3d model'
				zip: \OYvjMp/1614147300510/procedural-low-poly-planet
				size: 9399
			* name: 'The Mine: No JS, CSS only adventure game'
				author: \jcoulterdesign
				tags: 'game adventure mine pure-css'
				zip: \NOMeEb/1614148015568/the-mine-no-js-css-only-adventure-game
				size: 46053
			* name: 'Flip - card memory game.'
				author: \zerospree
				tags: 'game memory card'
				zip: \bNWbvW/1614148337189/flipcard-memory-game
				size: 12360
			* name: 'Platform game engine'
				author: \dissimulate
				tags: 'game physics platform ball'
				zip: \CqIxk/1614148536064/platform-game-engine
				size: 14516
			* name: 'COLORON GAME: inspiring developers to use SVG Animations, ES6 and Flexbox'
				author: \gregh
				tags: 'game color gsap'
				zip: \yVLOyO/1614148909034/coloron-game-inspiring-developers-to-use-svg-animations-es6-and-flexbox
				size: 24829
			* name: 'The frantic run of the valorous rabbit'
				author: \Yakudoo
				tags: 'game 3d rabbit wolf threejs'
				zip: \YGxYZj/1614149255966/the-frantic-run-of-the-valorous-rabbit
				size: 24855
			* name: '[game] Copycat'
				author: \Gthibaud
				tags: 'game cat canvas'
				zip: \ryQRYP/1614149749683/game-copycat
				size: 33909
			* name: 'Space Invaders'
				author: \adelciotto
				tags: 'game arcade canvas'
				zip: \BHuGL/1614149991240/space-invaders
				size: 16872
			* name: 'Dinosaur Game Chrome'
				author: \MysticReborn
				tags: 'game dinosaur chrome'
				zip: \rygqao/1614150194524/dinosaur-game-chrome
				size: 97612
			* name: 'Tilting Maze game'
				author: \HunorMarton
				tags: 'game maze'
				zip: \VwKwgxX/1614150410750/tilting-maze-game
				size: 16837
			* name: 'Maze (Grid) - Pure CSS Game - No JS'
				author: \chaofix
				tags: 'game pure-css'
				zip: \VrWZga/1614150614472/maze-gridpure-css-gameno-js
				size: 10346
			* name: 'Daily Pen #010: A generic Infinite Runner game'
				author: \EduardoLopes
				tags: 'game canvas'
				zip: \IJnAr/1614150726255/daily-pen-010-a-generic-infinite-runner-game
				size: 8871
			* name: 'Daily Pen #021: Match Color Game'
				author: \EduardoLopes
				tags: 'game canvas matching color'
				zip: \bvEFu/1614150816674/daily-pen-021-match-color-game
				size: 10324
			* name: 'Pong game with JavaScript'
				author: \gdube
				tags: 'game pong paddle canvas'
				zip: \JybxxZ/1614151064989/pong-game-with-javascript
				size: 43477
			* name: 'Color Blast!'
				author: \natewiley
				tags: 'game canvas'
				zip: \EGyiF/1614151239187/color-blast
				size: 9572
			* name: 'Pixelizer: A No Div Pixel Art Creator'
				author: \jcoulterdesign
				tags: 'pixel-art paint'
				zip: \oqPNXL/1614151476352/pixelizer-a-no-div-pixel-art-creator
				size: 30663
			* name: 'Snake Game - CSS Renderer'
				author: \jackrugile
				tags: 'game snake css'
				zip: \IHbvh/1614152031303/snake-gamecss-renderer
				size: 16175
			* name: 'Word Guessing Game'
				author: \natewiley
				tags: 'game word guessing'
				zip: \xawFn/1614152066236/word-guessing-game
				size: 10093
			* name: 'Cheap AI Chess!'
				author: \jakealbaugh
				tags: 'game chess ai'
				zip: \JjRGQPY/1614152477304/cheap-ai-chess
				size: 46848
			* name: 'CSS Rock-Paper-Scissors'
				author: \alvaromontoro
				tags: 'game pure-css rock paper scissor'
				zip: \BaaBYyz/1614152627843/css-rock-paper-scissors
				size: 5579
			* name: 'Zombie Mayhem - HTML5, JS and SCSS Game'
				author: \eliortabeka
				tags: 'game zombie shooting'
				zip: \RoNgzR/1614152897257/zombie-mayhemhtml5-js-and-scss-game
				size: 22452
			* name: 'Sweet Memory Game - HTML5, JS and SCSS'
				author: \eliortabeka
				tags: 'game memory'
				zip: \WwzEEg/1614153247775/sweet-memory-gamehtml5-js-and-scss
				size: 7390
			* name: 'Walking Sprites Demo'
				author: \punkydrewster713
				tags: 'sprite pixel-art animation rpg'
				zip: \YooJJj/1614153374042/walking-sprites-demo
				size: 10591
			* name: 'Tic Tac Toe Game :D enjoy'
				author: \erfanabbasi98
				tags: 'game tic-tac-toe'
				zip: \Jjbbqyz/1614153715196/tic-tac-toe-game-d-enjoy
				size: 5449
			* name: 'Snake Blocks'
				author: \NickBell
				tags: 'game snake'
				zip: \poNNdyG/1614153901645/snake-blocks
				size: 10659
			* name: 'The Danger Crew (JavaScript RPG) Demo'
				author: \punkydrewster713
				tags: 'game rpg pixel-art turn-based react'
				zip: \grmZBx/1614155071101/the-danger-crew-javascript-rpg-demo
				size: 16518
			* name: 'Codepen Shortcut List'
				author: \iiCe89
				tags: 'codepen shortcut list design'
				zip: \gMYVYQ/1614155363694/codepen-shortcut-list
				size: 4767
			* name: 'Isometric map editor'
				author: \zerratar
				tags: 'editor map isometric'
				zip: \GMjYyW/1614155423353/isometric-map-editor
				size: 79149
			* name: '2d Rocket Game in only HTML, JS'
				author: \codHUNTer
				tags: 'game rocket gravity'
				zip: \YzpwOPz/1614155554142/2d-rocket-game-in-only-html-js
				size: 6730
			* name: 'Font Awesome Cheetsheet'
				author: \tjoen
				tags: 'font-awesome table'
				zip: \wIoma/1614156080430/font-awesome-cheetsheet
				size: 15848
			* name: 'Image Editor with CSS Filters and jQuery'
				author: \SitePoint
				tags: 'editor image filter'
				zip: \KwmeJZ/1614156188151/image-editor-with-css-filters-and-jquery
				size: 7202
			* name: 'Live Markdown Editor'
				author: \marcobiedermann
				tags: 'editor markdown live compiler'
				zip: \LLGwLb/1614156510757/live-markdown-editor
				size: 7257
			* name: 'Emoji Map Editor'
				author: \Octavector
				tags: 'editor map emoji pixel-art'
				zip: \WgKmOo/1614156650846/emoji-map-editor
				size: 8351
			* name: 'PixelCraft: A Pixel Art Editor'
				author: \theabbie
				tags: 'editor pixel-art'
				zip: \VwKBwyB/1614156761930/pixelcraft-a-pixel-art-editor
				size: 14273
			* name: 'Trumbowyg'
				author: \michael-collins
				tags: 'editor'
				zip: \RWggmr/1614156986561/trumbowyg
				size: 30324
			* name: 'CSS3 Working Clock'
				author: \iliadraznin
				tags: 'clock pure-css'
				zip: \JcqbE/1614157760682/css3-working-clock
				size: 7670
			* name: 'CSS Rotary Clock'
				author: \jakealbaugh
				tags: 'clock pure-css'
				zip: \ZYdYRO/1614157993608/css-rotary-clock
				size: 7276
			* name: 'Neural Drum Machine'
				author: \teropa
				tags: 'music generator audio drum drum-machine'
				zip: \JLjXGK/1614158142989/neural-drum-machine
				size: 18234
			* name: 'Circular Calendar Display'
				author: \mattjuggins
				tags: 'clock circular display'
				zip: \WGRRYx/1614158394067/circular-calendar-display
				size: 14775
			* name: 'Animated clock (Pure CSS)'
				author: \jantm
				tags: 'clock pure-css animation'
				zip: \qrnwF/1614158528382/animated-clock-pure-css
				size: 9912
			* name: 'FCC: Javascript Calculator'
				author: \freeCodeCamp
				tags: 'calculator'
				zip: \wgGVVX/1614158839941/fcc-javascript-calculator
				size: 8777
			* name: 'Javascript Calculator'
				author: \freeCodeCamp
				tags: 'calculator'
				zip: \rLJZrA/1614158880682/javascript-calculator
				size: 7937
			* name: 'Angular.js - Google Map'
				author: \joe-watkins
				tags: 'map google'
				zip: \wBaOMq/1614159290473/angular-jsgoogle-map
				size: 3711
			* name: 'Pea Eating a Cookie'
				author: \chrisgannon
				tags: 'zdog model 3d pea cookie eat'
				zip: \WBmxNr/1614159529875/pea-eating-a-cookie
				size: 6979
			* name: 'Zdog - Celeste snowglobe'
				author: \desandro
				tags: 'zdog model 3d celeste'
				zip: \RQeYYp/1614159727917/zdogceleste-snowglobe
				size: 11043
			* name: 'Zdog - Metafizzy fizzy bear'
				author: \desandro
				tags: 'zdog model 3d metafizzy bear'
				zip: \xYmovW/1614159780852/zdogmetafizzy-fizzy-bear
				size: 9669
			* name: 'MPC Drum Machine'
				author: \mattgreenberg
				tags: 'music drum drum-machine'
				zip: \dObVvw/1614160686067/mpc-drum-machine
				size: 9462
			* name: 'Packery v2 puzzle'
				author: \desandro
				tags: 'game puzzle metafizzy'
				zip: \eJXRbW/1614190139765/packery-v2-puzzle
				size: 6520
			* name: 'Pure CSS crossword - CSS Grid'
				author: \adrianroworth
				tags: 'game word crossword pure-css'
				zip: \OpeyZq/1614190838544/pure-css-crosswordcss-grid
				size: 22694
			* name: 'The Cube'
				author: \bsehovac
				tags: 'game cube rubik threejs'
				zip: \EMyWVv/1614191049479/the-cube
				size: 105694
			* name: 'Train Puzzle'
				author: \johan-tirholm
				tags: 'game puzzle train pathfinding isometric'
				zip: \xoNPzN/1614191384411/train-puzzle
				size: 27538
			* name: 'Sliding Puzzle Game - Animated CSS Grid'
				author: \daviddarnes
				tags: 'game sliding puzzle'
				zip: \EOqZdw/1614192018393/sliding-puzzle-gameanimated-css-grid
				size: 8873
			* name: 'Plankman (a CSS game)'
				author: \alvaromontoro
				tags: 'game word guessing pure-css'
				zip: \XWdrQOg/1614192653986/plankman-a-css-game
				size: 20866
			* name: '15 puzzle'
				author: \johnbgarcia
				tags: 'game puzzle 15'
				zip: \vgdroe/1614192937778/15-puzzle
				size: 6805
			* name: 'Svelte Picross'
				author: \borntofrappe
				tags: 'game puzzle picross'
				zip: \yLLPBMr/1614193632033/svelte-picross
				size: 20721
			* name: 'Nonogram'
				author: \JuanjoVlado
				tags: 'game puzzle nonogram'
				zip: \bmzLpj/1614193731821/nonogram
				size: 14396
			* name: 'Battle Ship'
				author: \redroad
				tags: 'game battle ship'
				zip: \CytaJ/1614194157000/battle-ship
				size: 4080
			* name: 'BattleShip Game'
				author: \wintlu
				tags: 'game battle ship'
				zip: \WXRbdZ/1614194236091/battleship-game
				size: 9583
			* name: 'Old School Racing Game'
				author: \johan-tirholm
				tags: 'game canvas racing'
				zip: \PGYExJ/1614194491577/old-school-racing-game
				size: 10310
			* name: 'Fluid Dynamic Solver'
				author: \mutoo
				tags: 'flame fluid effect'
				zip: \MvLzaO/1614195183928/fluid-dynamic-solver
				size: 8617
			* name: 'Tetris'
				author: \kudchikarsk
				tags: 'game tetris brick puzzle'
				zip: \GYKmdd/1614195269470/tetris
				size: 10798
			* name: 'Play Pong!'
				author: \simone
				tags: 'game pong ball canvas'
				zip: \GgqdLv/1614195604888/play-pong
				size: 10801
			* name: '2d, Aventura'
				author: \nivus12
				tags: 'game adventure pixel-art'
				zip: \dyOodRj/1614195879115/2d-aventura
				size: 25010
			* name: 'Rabbit Garden'
				author: \Gthibaud
				tags: 'rabbit pixel-art'
				zip: \NjVWvg/1614196364279/rabbit-garden
				size: 15777
			* name: 'Curtain creeper'
				author: \Gthibaud
				tags: 'background'
				zip: \WNNozaB/1614196474124/curtain-creeper
				size: 10044
			* name: 'Unruly Tower'
				author: \johan-tirholm
				tags: 'game platform canvas'
				zip: \jZorRd/1614196759468/unruly-tower
				size: 15178
			* name: 'CSS Conf EU 2017 High Five Game!'
				author: \una
				tags: 'game pure-css fun'
				zip: \RVZvOy/1614197003190/css-conf-eu-2017-high-five-game
				size: 927049
			* name: 'Top Down 2D Game Camera'
				author: \punkydrewster713
				tags: 'game rpg movement'
				zip: \WNrXPrb/1614197302796/top-down-2d-game-camera
				size: 11048
			* name: 'CSS Only Tennis Game'
				author: \jonslater204
				tags: 'game tennis pure-css'
				zip: \xmXeMx/1614197516600/css-only-tennis-game
				size: 19950
			* name: 'Highway Race'
				author: \jkantner
				tags: 'game racing threejs'
				zip: \dxOjXm/1614197687057/highway-race
				size: 23439
			* name: 'An Exciting HTML Game'
				author: \allanpooley
				tags: 'game tic-tac-toe'
				zip: \qrrmoR/1614197880824/an-exciting-html-game
				size: 15403
			* name: 'DeveloPong Basic'
				author: \jackrugile
				tags: 'game pong'
				zip: \akaBKL/1614197984976/developong-basic
				size: 7007
			* name: '🎯 🔫 Shoot the target!! HTML/CSS only game - Codepen Meetup 2017 - Alicante Frontend'
				author: \aarongarciah
				tags: 'game shooting pure-css'
				zip: \ypBoVm/1614198088520/shoot-the-target-html-css-only-gamecodepen-meetup-2017alicante-frontend
				size: 7188
			* name: 'Pokedex - #006 of #100Days100Projects'
				author: \FlorinPop17
				tags: 'pokedex pokemon'
				zip: \gOYZxyE/1614198522268/pokedex006-of-100days100projects
				size: 8191
			* name: 'Random Meal Generator - #001 of #100Days100Projects'
				author: \FlorinPop17
				tags: 'meal recipe random generator'
				zip: \WNeggor/1614198757818/random-meal-generator001-of-100days100projects
				size: 8041
			* name: 'Catch the insect - #004 of #100Days100Projects'
				author: \FlorinPop17
				tags: 'game catch insect'
				zip: \NWKELoq/1614198856506/catch-the-insect004-of-100days100projects
				size: 9475
			* name: 'Password Generator - #013 of #100Days100Projects'
				author: \FlorinPop17
				tags: 'password generator'
				zip: \BaBePej/1614198987662/password-generator013-of-100days100projects
				size: 8896
			* name: 'Low-poly image generator'
				author: \Sphinxxxx
				tags: 'low-poly polygon generator image'
				zip: \mdOddRw/1614199135327/low-poly-image-generator
				size: 32095
			* name: 'Clock - #016 of #100Days100Projects'
				author: \FlorinPop17
				tags: 'clock'
				zip: \eYOqQLz/1614199201959/clock016-of-100days100projects
				size: 8624
			* name: 'Digital Block Clock - #056 of #100Days100Projects'
				author: \FlorinPop17
				tags: 'clock digital block'
				zip: \jOOpQYG/1614199312355/digital-block-clock056-of-100days100projects
				size: 7892
			* name: 'Random Picker Visualizer - #082 of #100Days100Projects'
				author: \FlorinPop17
				tags: 'random picker'
				zip: \zYxvJmP/1614199494530/random-picker-visualizer082-of-100days100projects
				size: 8116
			* name: 'Color Matching Game - #078 of #100Days100Projects'
				author: \FlorinPop17
				tags: 'game color matching'
				zip: \zYxxGzO/1614199600791/color-matching-game078-of-100days100projects
				size: 8083
			* name: 'Pokemon Go - ZingTouch x Anime.js'
				author: \zingchart
				tags: 'game pokemon touch animejs'
				zip: \BzmdwQ/1614199796266/pokemon-gozingtouch-x-anime-js
				size: 14080
			* name: 'Memory'
				author: \beumsk
				tags: 'game memory'
				zip: \xdoKjX/1614199888928/memory
				size: 10022
			* name: 'Pokemon Let\'s Go! (ui)'
				author: \simeydotme
				tags: 'pokemon ui team vue'
				zip: \moPdGa/1614199991577/pokemon-let-s-go-ui
				size: 19820
			* name: 'Who\'s that Pokémon?'
				author: \tiffachoo
				tags: 'game pokemon question vue'
				zip: \KGJEba/1614200076943/who-s-that-pok-mon
				size: 12488
			* name: 'Not A Gengar'
				author: \oliviale
				tags: 'pokemon fun pure-css'
				zip: \PoovZQy/1614200469287/not-a-gengar
				size: 5622
			* name: 'Vue.js Pizza Maker'
				author: \mikemang
				tags: 'pizza vue'
				zip: \egPZmp/1614200663264/vue-js-pizza-maker
				size: 7277
			* name: 'React Pokedex'
				author: \siliconunicorn
				tags: 'pokedex pokemon react'
				zip: \VqoxXP/1614200849994/react-pokedex
				size: 20328
			* name: 'Pokédex using the PokéAPI + GSAP 😎'
				author: \jh3y
				tags: 'pokedex pokemon api'
				zip: \eYpGQxr/1614200995850/pok-dex-using-the-pok-api-gsap
				size: 15829
			* name: 'Write a message in Unown (single div project)'
				author: \wendko
				tags: 'pokemon pixel-art typing'
				zip: \GRovBGQ/1614201375671/write-a-message-in-unown-single-div-project
				size: 63599
			* name: 'PokéAPI and NES.css (ReactJS)'
				author: \_Common
				tags: 'pokedex pokemon api pixel-art react'
				zip: \gJVvGL/1614201526060/pok-api-and-nes-css-reactjs
				size: 13683
		# text = ''
		# for let app in @apps
		# 	baseUrl = \https://codepen-api-export-production.s3.us-west-2.amazonaws.com/zip/PEN/
		# 	if app.zip.startsWith baseUrl
		# 		app.zip = app.zip
		# 			.replace baseUrl, ''
		# 			.replace /\.zip$/ ''
		# 	unless app.size
		# 		url = "api/middleware.js?url=//codepen-api-export-production.s3.us-west-2.amazonaws.com/zip/PEN/#{app.zip}.zip"
		# 		app.size = (await (await fetch url)arrayBuffer!)byteLength
		# 	app.name .= replace /'/g \\\'
		# 	subtext = """\
		# 		\t\t\t* name: '#{app.name}'
		# 		\t\t\t\tauthor: \\#{app.author}
		# 		\t\t\t\ttags: '#{app.tags}'
		# 		\t\t\t\tzip: \\#{app.zip}
		# 		\t\t\t\tsize: #{app.size}
		# 	"""
		# 	text += subtext
		# 	console.log subtext
		# console.log text
		# navigator.clipboard.writeText text
		for app in @apps
			[app.id, app.ctime] = app.zip.split \/
			+= app.ctime
			app.tags /= ' '
			app.zip = "//codepen-api-export-production.s3.us-west-2.amazonaws.com/zip/PEN/#{app.zip}.zip"
			app.img = "//codepen.io/#{app.author}/pen/#{app.id}/image/small.png"
		@apps.sort (a, b) ~> b.ctime - a.ctime
		@suggestApps = _.sampleSize @apps, 5
		@gameApps = _.sampleSize @apps.filter((.tags.includes \game)), 5
		@newestApps = @apps.slice 0 5
		@app = \home

	download: (app) !->
		os.installApp app.zip, \/C/apps

	view: ->
		m \.Full.Scroll,
			switch @app
			| \home
				m \.P4,
					m \h2 'Ứng dụng đề xuất'
					m \.Row5,
						@suggestApps.map (app) ~>
							m _Card,
								app: app
					m \h2 'Mới nhất'
					m \.Row5,
						@newestApps.map (app) ~>
							m _Card,
								app: app
					m \h2 'Trò chơi'
					m \.Row5,
						@gameApps.map (app) ~>
							m _Card,
								app: app
			else
				m \.P4,
					m \.Row,
						m \img.ImgContrast.ImgCover.Ratio43.Gray1,
							style: m.style do
								width: 256
							src: @app.img
						m \.Col.Pl4,
							m \h2.TextTruncate2 @app.name
							m \.Row.Wrap.GapY3,
								m \.Col4 "Tác giả:"
								m \.Col4.Offset4 @app.author
								m \.Col4 "Kích thước:"
								m \.Col4.Offset4 filesize @app.size
								m \.Col4 "Ngày tải lên:"
								m \.Col4.Offset4 dayjs(@app.ctime)format 'DD/MM/YYYY, HH:mm'
								m \.Col4 "Thể loại:"
								m \.Col8 @app.tags.join ', '
					m \.Row.Center.Mt4,
						m Button,
							color: \blue
							icon: \download
							onclick: !~>
								@download @app
							"Tải về và cài đặt"

_Card = m.comp do
	view: ->
		m \.Column.P3._Card,
			onclick: !~>
				os.ap.app = @attrs.app
			m \img.W100.Gray1.ImgCover.Ratio43,
				src: @attrs.app.img
			m \.Pt3.TextTruncate2 @attrs.app.name
