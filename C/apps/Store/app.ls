await os.js do
	\dayjs
	\dayjs/locale/vi.js
	\filesize
	\marked

dayjs.locale \vi

os.App = m.comp do
	oninit: !->
		os.ap = @
		@apps =
			* name: \cub-n-puppuzzle-game-demo
				title: 'Cub n Pup - puzzle game demo'
				author: \desandro
				tags: <[game puzzle]>
				ctime: 1614112734223
				size: 32408
				pen: \ezNawy
				description: 'How to play: Drag cub to star, Drag grid to rotate.\n\nAlso available at [cubnpup.com](http://cubnpup.com)\n\nThis is a proof-of-concept for a game. Basic art, no sound, no options, no polish. But the core game-play is there. It\'s more of a mobile game, focused on dragging — inspired by Threes. I\'m looking to see if its any fun. Let me know!\n\nI\'ve always wanted to make a video game. This could be the one. My previous attempts never got past isolated demos because they were aiming for bigger ideas. They grew complex and unwieldy. So this game is designed to be simple. A game that I can actually make.'
			* name: \only-css-polygon-fish
				title: 'Only CSS: Polygon Fish'
				author: \YusukeNakaya
				tags: <[fish fun pure-css]>
				ctime: 1614113286371
				size: 7444
				pen: \WNopRwX
			* name: \reactive-synth
				title: 'Reactive Synth'
				author: \lerida
				tags: <[music synth react]>
				ctime: 1614144788470
				size: 14853
				pen: \bGwzVvo
			* name: \animated-candle-toggle-w-gsap
				title: 'Animated Candle Toggle w GSAP'
				author: \kdbkapsere
				tags: <[cute fun animation candle]>
				ctime: 1614145445520
				size: 15169
				pen: \JBqQvp
				description: 'inspired by https://dribbble.com/shots/4303477-Candles'
			* name: \no-more-jabber-yabs-the-game
				title: 'No More Jabber Yabs: The Game'
				author: \SeanMcBeth
				tags: <[game fun jabber]>
				ctime: 1614145643457
				size: 13888
				pen: \BoJRyQ
				description: 'These guys just sort of bounce around when you try to touch them. It\'s like they\'re ticklish, or perhaps unaccustomed to public displays of affection.\n\nHang around, watch them, maybe do something to t hem.'
			* name: \block-breaking
				title: 'Block Breaking'
				author: \hankuro
				tags: <[game block breaking]>
				ctime: 1614145747496
				size: 8368
				pen: \qBbeJGE
			* name: \pika-pika
				title: 'Pika Pika!'
				author: \derossi_s
				tags: <[cute pikachu]>
				ctime: 1614145977607
				size: 12048
				pen: \paVEGR
				description: 'Using CreateJS and CSS transforms to make Pikachu POP! Go ahead and press down on his face and hear what he has to say :D\n\nFor more information visit www.createjs.com'
			* name: \procedural-low-poly-planet
				title: 'Procedural Low Poly Planet'
				author: \soju22
				tags: <[earth planet 3d model]>
				ctime: 1614147300510
				size: 9399
				pen: \OYvjMp
				description: 'My first test of creating a procedural low poly planet.\n\n_Created for the [May 2019 CodePen Challenge](https://codepen.io/challenges/2019/May)_'
			* name: \the-mine-no-js-css-only-adventure-game
				title: 'The Mine: No JS, CSS only adventure game'
				author: \jcoulterdesign
				tags: <[game adventure mine pure-css]>
				ctime: 1614148015568
				size: 46053
				pen: \NOMeEb
				description: 'My contribution to the Codepen Halloween challenge. Lot\'s of stuff going on here. The concept initially started off as a simple \'Walk down a corridor and avoid traps\' game, but it just kinda escalated from there. I decided i wanted to go up and down, solve puzzles etc.\n\nThe logic behind it is actually relatively simple and uses a 7+ year old technique. By clicking on an arrow (in this case a label), it checks the relevant input and then using the : checked pseudo selector, we can traverse down the DOM the correct amount of iterations and shift the entire viewport a whole \'segment\' over. The lifts work entirely the same way except instead when we click down, we are actually checking the segment below.\n\nAs for game logic, we use the same concept again. The pickaxe for example is a label for a checkbox. When we click it, the checkbox is checked, then, when we click the boulder, we tell css to see if *both* the boulder and pickaxe inputs are checked. If it is, display it none, otherwise show a message.\n\nDon\'t ask how i did the lock mechanism....i kinda fluked it somehow. Just a bunch of check boxes overlayed on top of each other. They hide when clicked to show the one underneath. As for how the code is checked, take a look at the checkCode mixin.\n\nEverything else is pretty standard. Bunch of animations, a circular clipping mask for the game viewport etc.\n\nI added a bunch of mixins to help add animated sprites, object comparisons and interactive items into the grid. Things like makeInteractiveObjectAt($objectID, $Segment, $Tile)\n\nThe sprites were drawn by me in Pyxel (would not have been able to do this if i hadnt bought it). Unfortunately i\'m not a pixel artist, i really wish i was because this would really have the quality feel i wanted. If you\'re a pixel artist and would like to contribute though.... :)\n\nI had some potential pitfalls along the way. One of them being an intermittent 413 error from Codepen. I think this had something to do with the compiled SASS being too large. It forced me to rethink some of the ways things were written. It is however, still very very un-optimised. It started off being extremely versatile, change a few numbers here and boom different sized level, all inputs and label generated for you. But now if i change a digit somewhere it will more than likely destroy the massive chain of interactions.'
			* name: \flipcard-memory-game
				title: 'Flip - card memory game.'
				author: \zerospree
				tags: <[game memory card]>
				ctime: 1614148337189
				size: 12360
				pen: \bNWbvW
				description: 'Super old project I remembered about. Just thought I\'d share it with you awesome CodePen people. Have some fun :)\n\nThe game will save your stats locally, via localStorage.\n\nFeatured on CSS Design Awards: http://www.cssdesignawards.com/articles/design-dev-feed-6/194/'
			* name: \platform-game-engine
				title: 'Platform game engine'
				author: \dissimulate
				tags: <[game physics platform ball]>
				ctime: 1614148536064
				size: 14516
				pen: \CqIxk
				description: 'A simple platform game engine, the map is customisable and scriptable. Refer to the comments in the "map" variable for instructions.\n\nI plan to expand the engine in the future, the ability to use images for tiles and the player is one thing that I have in mind. Any suggestions are welcome.'
			* name: \coloron-game-inspiring-developers-to-use-svg-animations-es6-and-flexbox
				title: 'COLORON GAME: inspiring developers to use SVG Animations, ES6 and Flexbox'
				author: \gregh
				tags: <[game color gsap]>
				ctime: 1614148909034
				size: 24829
				pen: \yVLOyO
				description: 'A game made to inspire developers to use GSAP, ES6 and Flexbox'
			* name: \the-frantic-run-of-the-valorous-rabbit
				title: 'The frantic run of the valorous rabbit'
				author: \Yakudoo
				tags: <[game 3d rabbit wolf threejs]>
				ctime: 1614149255966
				size: 24855
				pen: \YGxYZj
				description: 'Save this little guy from this (not so evil) wolf. It starts very slowly, but don\'t be fooled, you probably can\'t stand the speed.'
			* name: \game-copycat
				title: '[game] Copycat'
				author: \Gthibaud
				tags: <[game cat canvas]>
				ctime: 1614149749683
				size: 33909
				pen: \ryQRYP
				description: 'Little update,\n\nI\'ve updated the visuals during the translation and cleaning of the code :) \n\nMade with [Diorama](https://gitlab.com/teabo/Diorama)'
			* name: \space-invaders
				title: 'Space Invaders'
				author: \adelciotto
				tags: <[game arcade canvas]>
				ctime: 1614149991240
				size: 16872
				pen: \BHuGL
				description: 'A simple space invaders game that I wrote during my early university years.  I apologise for the quality of the code and missing gameplay features. Press left and right arrow keys to move and the X key to fire.'
			* name: \dinosaur-game-chrome
				title: 'Dinosaur Game Chrome'
				author: \MysticReborn
				tags: <[game dinosaur chrome]>
				ctime: 1614150194524
				size: 97612
				pen: \rygqao
			* name: \tilting-maze-game
				title: 'Tilting Maze game'
				author: \HunorMarton
				tags: <[game maze]>
				ctime: 1614150410750
				size: 16837
				pen: \VwKwgxX
				description: 'If you want to know how this game works, you can find a source code walkthrough video here: https://youtu.be/bTk6dcAckuI\n\nFollow me on [twitter](https://twitter.com/HunorBorbely)'
			* name: \maze-gridpure-css-gameno-js
				title: 'Maze (Grid) - Pure CSS Game - No JS'
				author: \chaofix
				tags: <[game pure-css]>
				ctime: 1614150614472
				size: 10346
				pen: \VrWZga
				description: 'A little game to demonstrate how can create a game without Java Script at all and using only pure CSS'
			* name: \daily-pen-010-a-generic-infinite-runner-game
				title: 'Daily Pen #010: A generic Infinite Runner game'
				author: \EduardoLopes
				tags: <[game canvas]>
				ctime: 1614150726255
				size: 8871
				pen: \IJnAr
				description: 'I made this game in less than 24 working hours, it\'s to celebrate 10 days making daily pens.\n\nI used sketch.js to work with canvas.'
			* name: \daily-pen-021-match-color-game
				title: 'Daily Pen #021: Match Color Game'
				author: \EduardoLopes
				tags: <[game canvas matching color]>
				ctime: 1614150816674
				size: 10324
				pen: \bvEFu
				description: '- Click in the colors that match\n\n- lose -200 if don\'t match\n\n- win (matching blocks * 10) if match\n\n- The game it\'s infinite, have no end.\n\nI\'m very happy with this game, i learned a lot of news things. I want to make more simples games like this to learn more. \n\nI spend some more time making this game than the [another one](http://codepen.io/EduardoLopes/pen/IJnAr), i needed to figure out how to make a pathfinder, and before i spent a lot of time trying to do by \'brutal force\'. I think was 3 days making this game.\n\nEnjoy. :D\n\nUpdate: Clean up the code a little bit and add some comments.\n\nUpdate 2: Fix a bug'
			* name: \pong-game-with-javascript
				title: 'Pong game with JavaScript'
				author: \gdube
				tags: <[game pong paddle canvas]>
				ctime: 1614151064989
				size: 43477
				pen: \JybxxZ
				description: 'Pong game implemented with javascript. Edit\n\nAdd topics'
			* name: \color-blast
				title: 'Color Blast!'
				author: \natewiley
				tags: <[game canvas]>
				ctime: 1614151239187
				size: 9572
				pen: \EGyiF
				description: 'Use the `Left` and `Right` Arrows or `A` and `D` keys to move, `Spacebar` to shoot.\n\nGame starts right away, looks best in [full mode.](http://codepen.io/natewiley/full/EGyiF) \n\nHope you like it! ;)'
			* name: \pixelizer-a-no-div-pixel-art-creator
				title: 'Pixelizer: A No Div Pixel Art Creator'
				author: \jcoulterdesign
				tags: <[pixel-art paint]>
				ctime: 1614151476352
				size: 30663
				pen: \oqPNXL
				description: 'Make your own pixel art by drawing onto the screen. Instantly export your art to a new pen, already coded for you in pure CSS without the use of any elements'
			* name: \snake-gamecss-renderer
				title: 'Snake Game - CSS Renderer'
				author: \jackrugile
				tags: <[game snake css]>
				ctime: 1614152031303
				size: 16175
				pen: \IHbvh
				description: 'This is a basic snake game made with JavaScript for logic and CSS for rendering. Use the arrow keys or WASD to control the snake. You can loop through walls.\n\nGood luck! Post your high score in the comments.'
			* name: \word-guessing-game
				title: 'Word Guessing Game'
				author: \natewiley
				tags: <[game word guessing]>
				ctime: 1614152066236
				size: 10093
				pen: \xawFn
				description: 'My first attempt at a game in JS.. Guess from over 70 web related words! Hope you like it :)'
			* name: \cheap-ai-chess
				title: 'Cheap AI Chess!'
				author: \jakealbaugh
				tags: <[game chess ai]>
				ctime: 1614152477304
				size: 46848
				pen: \JjRGQPY
				description: 'A wonderful opportunity to beat a computer at chess!\n\nPlay against a friend, a totally random AI, or wager money as it plays against itself. I\'m sure there are still bugs in here but hey, happy new year.'
			* name: \css-rock-paper-scissors
				title: 'CSS Rock-Paper-Scissors'
				author: \alvaromontoro
				tags: <[game pure-css rock paper scissor]>
				ctime: 1614152627843
				size: 5579
				pen: \BaaBYyz
				description: 'A Rock-Paper-Scissor game developed in HTML+CSS without any JavaScript.'
			* name: \zombie-mayhemhtml5-js-and-scss-game
				title: 'Zombie Mayhem - HTML5, JS and SCSS Game'
				author: \eliortabeka
				tags: <[game zombie shooting]>
				ctime: 1614152897257
				size: 22452
				pen: \RoNgzR
				description: '#####Kill or be eaten in the Zombie Mayhem'
			* name: \sweet-memory-gamehtml5-js-and-scss
				title: 'Sweet Memory Game - HTML5, JS and SCSS'
				author: \eliortabeka
				tags: <[game memory]>
				ctime: 1614153247775
				size: 7390
				pen: \WwzEEg
				description: '#####Sweet Animated Memory Game'
			* name: \walking-sprites-demo
				title: 'Walking Sprites Demo'
				author: \punkydrewster713
				tags: <[sprite pixel-art animation rpg]>
				ctime: 1614153374042
				size: 10591
				pen: \YooJJj
				description: 'This Pen attempts to explains how CSS spritesheet animations are implemented in my RPG game, Danger Crew.'
			* name: \tic-tac-toe-game-d-enjoy
				title: 'Tic Tac Toe Game :D enjoy'
				author: \erfanabbasi98
				tags: <[game tic-tac-toe]>
				ctime: 1614153715196
				size: 5449
				pen: \Jjbbqyz
			* name: \snake-blocks
				title: 'Snake Blocks'
				author: \NickBell
				tags: <[game snake]>
				ctime: 1614153901645
				size: 10659
				pen: \poNNdyG
				description: 'This is my first game I\'ve tried to program so do not exspect to much I am still working on it and adding details it is th egame snake just like demo not as great.'
			* name: \the-danger-crew-javascript-rpg-demo
				title: 'The Danger Crew (JavaScript RPG) Demo'
				author: \punkydrewster713
				tags: <[game rpg pixel-art turn-based react]>
				ctime: 1614155071101
				size: 16518
				pen: \grmZBx
				description: 'Some friends and I are building an RPG using React. CodePen has been incredibly helpful in the development process. This Pen is a demo of our game.'
			* name: \codepen-shortcut-list
				title: 'Codepen Shortcut List'
				author: \iiCe89
				tags: <[codepen shortcut list design]>
				ctime: 1614155363694
				size: 4767
				pen: \gMYVYQ
				description: 'Never really noticed the short-cut  button at the bottom of the pens page. i\'m glad i found it though and its really worth reading over if you haven\'t already it really does help !!'
			* name: \isometric-map-editor
				title: 'Isometric map editor'
				author: \zerratar
				tags: <[editor map isometric]>
				ctime: 1614155423353
				size: 79149
				pen: \GMjYyW
				description: 'A simple isometric tile  map editor where you can go crazy and create a tiny piece of art'
			* name: \2d-rocket-game-in-only-html-js
				title: '2d Rocket Game in only HTML, JS'
				author: \codHUNTer
				tags: <[game rocket gravity]>
				ctime: 1614155554142
				size: 6730
				pen: \YzpwOPz
				description: '2d Rocket Game in only HTML, JS'
			* name: \font-awesome-cheetsheet
				title: 'Font Awesome Cheetsheet'
				author: \tjoen
				tags: <[font-awesome table]>
				ctime: 1614156080430
				size: 15848
				pen: \wIoma
				description: 'Forked from [Rob G](http://codepen.io/Mottie/)\'s Pen [Font Awesome Cheetsheet](http://codepen.io/Mottie/pen/GFjfK/).\n\nForked from [Guilherme Aguiar](http://codepen.io/guiguetz/)\'s Pen [Font Awesome Cheetsheet](http://codepen.io/guiguetz/pen/gbwAa/).'
			* name: \image-editor-with-css-filters-and-jquery
				title: 'Image Editor with CSS Filters and jQuery'
				author: \SitePoint
				tags: <[editor image filter]>
				ctime: 1614156188151
				size: 7202
				pen: \KwmeJZ
			* name: \live-markdown-editor
				title: 'Live Markdown Editor'
				author: \marcobiedermann
				tags: <[editor markdown live compiler]>
				ctime: 1614156510757
				size: 7257
				pen: \LLGwLb
				description: 'Markdown editor with live preview and compiled HTML code'
			* name: \emoji-map-editor
				title: 'Emoji Map Editor'
				author: \Octavector
				tags: <[editor map emoji pixel-art]>
				ctime: 1614156650846
				size: 8351
				pen: \WgKmOo
				description: 'Create maps or artwork with emoji and save as an image.  Easily customisable, simply edit the STATE object and add the emoji and colours you wish to use in the app.'
			* name: \pixelcraft-a-pixel-art-editor
				title: 'PixelCraft: A Pixel Art Editor'
				author: \theabbie
				tags: <[editor pixel-art]>
				ctime: 1614156761930
				size: 14273
				pen: \VwKBwyB
				description: 'A pixel Art & Animation Creation Tool Built using HTML5 Canvas.\n\nIt is a Progressive Web App (PWA) with offline compatibility.\n\nIt is mobile-friendly and is very easy to use.'
			* name: \trumbowyg
				title: 'Trumbowyg'
				author: \michael-collins
				tags: <[editor]>
				ctime: 1614156986561
				size: 30324
				pen: \RWggmr
				description: 'Forked from [Matt Cholawo](http://codepen.io/cholawo/)\'s Pen [MYPVJE](http://codepen.io/cholawo/pen/MYPVJE/).'
			* name: \css3-working-clock
				title: 'CSS3 Working Clock'
				author: \iliadraznin
				tags: <[clock pure-css]>
				ctime: 1614157760682
				size: 7670
				pen: \JcqbE
				description: 'Working CSS3 analog clock, using CSS animations and shapes, without any images or JavaScript.\n\nThis is now available on GitHub @ https://github.com/iliadraznin/CSS3clock'
			* name: \css-rotary-clock
				title: 'CSS Rotary Clock'
				author: \jakealbaugh
				tags: <[clock pure-css]>
				ctime: 1614157993608
				size: 7276
				pen: \ZYdYRO
				description: 'recreating the function of [this watch](http://www.dewitt.ch/en/collections/academia/1543-mathematical.html)\n\ndoesn\'t work on FF'
			* name: \neural-drum-machine
				title: 'Neural Drum Machine'
				author: \teropa
				tags: <[music generator audio drum drum-machine]>
				ctime: 1614158142989
				size: 18234
				pen: \JLjXGK
				description: 'An experimental drum machine powered by a deep neural network. \n\nTo use it, define a seed pattern on the left, and use the "generate" button. A neural network will dream up a continuation to your seed pattern.\n\nUses the "Drums RNN" pretrained model from Google Magenta https://github.com/tensorflow/magenta/tree/master/magenta/models/drums_rnn\n\nRunning on Magenta.js, TensorFlow.js and Tone.js'
			* name: \circular-calendar-display
				title: 'Circular Calendar Display'
				author: \mattjuggins
				tags: <[clock circular display]>
				ctime: 1614158394067
				size: 14775
				pen: \WGRRYx
				description: 'A circular calendar and clock display, with and added weather and daily activity widget mock-ups.'
			* name: \animated-clock-pure-css
				title: 'Animated clock (Pure CSS)'
				author: \jantm
				tags: <[clock pure-css animation]>
				ctime: 1614158528382
				size: 9912
				pen: \qrnwF
				description: 'CSS-only animated clock inspired by this Dribbble: http://dribbble.com/shots/1257248-Clock-gif. \n\n \n\nNo JavaScript, canvas, SVG, images etc.'
			* name: \fcc-javascript-calculator
				title: 'FCC: Javascript Calculator'
				author: \freeCodeCamp
				tags: <[calculator]>
				ctime: 1614158839941
				size: 8777
				pen: \wgGVVX
			* name: \javascript-calculator
				title: 'Javascript Calculator'
				author: \freeCodeCamp
				tags: <[calculator]>
				ctime: 1614158880682
				size: 7937
				pen: \rLJZrA
				description: 'Built using HTML5, CC3, JavaScript, jQuery, & Bootstrap.'
			* name: \angular-jsgoogle-map
				title: 'Angular.js - Google Map'
				author: \joe-watkins
				tags: <[map google]>
				ctime: 1614159290473
				size: 3711
				pen: \wBaOMq
				description: 'Angular UI Google maps - https://angular-ui.github.io/angular-google-maps'
			* name: \pea-eating-a-cookie
				title: 'Pea Eating a Cookie'
				author: \chrisgannon
				tags: <[zdog model 3d pea cookie eat]>
				ctime: 1614159529875
				size: 6979
				pen: \WBmxNr
				description: 'I\'m working on a straight 2D SVG animation for [peapods.com](https://peapods.com) at the moment and I thought I\'d try and recreate it in Zdog. \n\nMixed results!'
			* name: \zdogceleste-snowglobe
				title: 'Zdog - Celeste snowglobe'
				author: \desandro
				tags: <[zdog model 3d celeste]>
				ctime: 1614159727917
				size: 11043
				pen: \RQeYYp
				description: '[Made with Zdog](https://zzz.dog)\n\nBeen playing a lot of Celeste. In the eye of the storm with Madeline.\n\nSpecial sauce  includes bokeh shapes for the snowflakes and light rods, which grow & fade out as the move further from the scene center.\n\n[View more round 3D Pens](https://codepen.io/desandro/pens/tags/?selected_tag=round3d)\n\n---\n\nBuilt with my own vanilla JS (still rocking that ES5) using the &lt;canvas&gt; drawing API. No WebGL. Shapes are rendered with thick lineWidth, giving the illusion of 3D form. A sphere has the same 2D contour as a flat circle. A 3D pill has the same contour of a 2D pill. That\'s the trick. This is the best engine to render hot dogs and burger patties.\n\n[3D code comes from this Khan Academy lesson](https://www.khanacademy.org/computing/computer-programming/programming-games-visualizations/programming-3d-shapes/a/rotating-3d-shapes). It\'s great because it only uses simple trig, and no matrix mindbenders.\n\nYeah it\'s buggy as heck, but that\'s the _charm_. It has no concept of intersecting or clipping. Shapes are either rendered before or after one another. Two shapes that occupy the same space will pop over one another when rotated.'
			* name: \zdogmetafizzy-fizzy-bear
				title: 'Zdog - Metafizzy fizzy bear'
				author: \desandro
				tags: <[zdog model 3d metafizzy bear logo]>
				ctime: 1614159780852
				size: 9669
				pen: \xYmovW
				description: 'Hey, it\'s the [Metafizzy](https://metafizzy.co) fizzy bear logo & mascot in 3D.\n\nSpecial sauce for this one: the body colors are rendered by separate ring shapes. Those shapes are then composited on to the body shape. The rings are bigger than the body. You can detect a mismatch as you rotate up & down.\n\nBlack outlines are rendered by duplicating all shapes & rendering them before the \'positive\' shapes. Cut-in strokes are extra shapes that rotate with the camera. Not quite Dragon Ball FighterZ.\n\n[View more round 3D pens](https://codepen.io/desandro/pens/tags/?selected_tag=round3d)\n\nRendered with &lt;canvas&gt; & mostly lineWidth. [Read about how I\'m making these in the description here](https://codepen.io/desandro/details/RQeYYp/)'
			* name: \mpc-drum-machine
				title: 'MPC Drum Machine'
				author: \mattgreenberg
				tags: <[music drum drum-machine]>
				ctime: 1614160686067
				size: 9462
				pen: \dObVvw
				description: 'MPC Drum Machine'
			* name: \packery-v2-puzzle
				title: 'Packery v2 puzzle'
				author: \desandro
				tags: <[game puzzle metafizzy]>
				ctime: 1614190139765
				size: 6520
				pen: \eJXRbW
				description: 'Broken in Firefox as Firefox does not support [background-position-x/y](http://caniuse.com/#feat=background-position-x-y)'
			* name: \pure-css-crosswordcss-grid
				title: 'Pure CSS crossword - CSS Grid'
				author: \adrianroworth
				tags: <[game word crossword pure-css]>
				ctime: 1614190838544
				size: 22694
				pen: \OpeyZq
				description: 'A working crossword puzzle implemented using only HTML and CSS'
			* name: \the-cube
				title: 'The Cube'
				author: \bsehovac
				tags: <[game cube rubik threejs]>
				ctime: 1614191049479
				size: 105694
				pen: \EMyWVv
				description: 'See if you can solve this classic Rubik\'s puzzle game made in three.js.'
			* name: \train-puzzle
				title: 'Train Puzzle'
				author: \johan-tirholm
				tags: <[game puzzle train pathfinding isometric]>
				ctime: 1614191384411
				size: 27538
				pen: \xoNPzN
				description: 'UPDATE: Now works on touch devices also 🎉\n\nClick on the rail tiles to swap tiles to create a path from the start (tunnel) to the end (arrow shaped  tile). When the train enters a new tile that tile is no longer movable.\n\nClick the tile you want to move, then where you want to place it.\n\nLevels are randomly generated but should always be solvable.\n\nInspired by the hacking minigame in Bioshock 1\n\nI hope you like it :)'
			* name: \sliding-puzzle-gameanimated-css-grid
				title: 'Sliding Puzzle Game - Animated CSS Grid'
				author: \daviddarnes
				tags: <[game sliding puzzle]>
				ctime: 1614192018393
				size: 8873
				pen: \EOqZdw
				description: 'Holiday season challenge to build a sliding puzzle game, check out the write-up https://simpleweb.co.uk/coding-a-festive-puzzle-game-with-modern-front-end-techniques/'
			* name: \plankman-a-css-game
				title: 'Plankman (a CSS game)'
				author: \alvaromontoro
				tags: <[game word guessing pure-css]>
				ctime: 1614192653986
				size: 20866
				pen: \XWdrQOg
				description: 'Plankman is a pirate-themed version of the classic hangman game. It is developed using HTML and CSS without a single line of code.\n\nThe topic of all the sentences is: "Movie titles"'
			* name: \15-puzzle
				title: '15 puzzle'
				author: \johnbgarcia
				tags: <[game puzzle 15]>
				ctime: 1614192937778
				size: 6805
				pen: \vgdroe
				description: 'The Puzzle_15 game. Made with 100% vanilla JS, canvas and organic non-gmo Sass.'
			* name: \svelte-picross
				title: 'Svelte Picross'
				author: \borntofrappe
				tags: <[game puzzle picross]>
				ctime: 1614193632033
				size: 20721
				pen: \yLLPBMr
				description: 'Recreate the basic structure of the popular puzzle game which allows to draw stylized figures with a pixelated look.\n\n## Instructions\n\nIn the picross series you need to fill in the grid following the hints displayed on each side. These describe the number of _contiguous_ blocks which describe the actual graphic.\n\nSelect the pen tool to fill in the squares, select the eraser to annotate which blocks do not describe the graphic, but relate to empty spaces instead.\n\n## Links\n\n- [Github repo with the source code](https://github.com/borntofrappe/svelte-tutorial/tree/master/Picross).\n\n- [Previous effort inspiring the project](https://codepen.io/borntofrappe/full/MWgEbPz)'
			* name: \nonogram
				title: 'Nonogram'
				author: \JuanjoVlado
				tags: <[game puzzle nonogram]>
				ctime: 1614193731821
				size: 14396
				pen: \bmzLpj
			* name: \battle-ship
				title: 'Battle Ship'
				author: \redroad
				tags: <[game battle ship]>
				ctime: 1614194157000
				size: 4080
				pen: \CytaJ
				description: 'Bin'
			* name: \battleship-game
				title: 'BattleShip Game'
				author: \wintlu
				tags: <[game battle ship]>
				ctime: 1614194236091
				size: 9583
				pen: \WXRbdZ
			* name: \old-school-racing-game
				title: 'Old School Racing Game'
				author: \johan-tirholm
				tags: <[game canvas racing]>
				ctime: 1614194491577
				size: 10310
				pen: \PGYExJ
				description: 'Use  arrow keys to drive. The basics of a classic style racing game. Inspired by games like "Out Run"  and "F1 Race".'
			* name: \fluid-dynamic-solver
				title: 'Fluid Dynamic Solver'
				author: \mutoo
				tags: <[flame fluid effect]>
				ctime: 1614195183928
				size: 8617
				pen: \MvLzaO
				description: 'A javascript implementation of Real-Time Fluid Dynamics for Games [Jos Stam, 2003]'
			* name: \tetris
				title: 'Tetris'
				author: \kudchikarsk
				tags: <[game tetris brick puzzle]>
				ctime: 1614195269470
				size: 10798
				pen: \GYKmdd
				description: 'Tetris is one of the best games from the most popular console of the 1990s. Do you feel tired of with complicated and difficult games? Did you miss the favorite classic games? Let\'s play this game to feel nostalgic!\n\nHow to play: Move and rotate the falling blocks. Lines are cleared when they are filled with blocks and have no empty spaces'
			* name: \play-pong
				title: 'Play Pong!'
				author: \simone
				tags: <[game pong ball canvas]>
				ctime: 1614195604888
				size: 10801
				pen: \GgqdLv
				description: 'Repository: https://github.com/dudeOMG/pong\n\nTutorial: http://www.simonewebdesign.it/making-a-game-from-scratch-in-html5/'
			* name: \2d-aventura
				title: '2d, Aventura'
				author: \nivus12
				tags: <[game adventure pixel-art]>
				ctime: 1614195879115
				size: 25010
				pen: \dyOodRj
				description: 'Ainda esta em level beta.'
			* name: \rabbit-garden
				title: 'Rabbit Garden'
				author: \Gthibaud
				tags: <[rabbit pixel-art]>
				ctime: 1614196364279
				size: 15777
				pen: \NjVWvg
				description: 'Wanted to make a farm simulator games'
			* name: \curtain-creeper
				title: 'Curtain creeper'
				author: \Gthibaud
				tags: <[background]>
				ctime: 1614196474124
				size: 10044
				pen: \WNNozaB
			* name: \unruly-tower
				title: 'Unruly Tower'
				author: \johan-tirholm
				tags: <[game platform canvas]>
				ctime: 1614196759468
				size: 15178
				pen: \jZorRd
				description: 'LEFT and RIGHT arrow keys to run, SPACEBAR to jump. Inspired by a bunch of SNES/Mega Drive/Genesis games. Levels similar to this was pretty common in platformers from that era to mix up the gameplay from the usual horizontal scrolling. Good luck! :)'
			* name: \css-conf-eu-2017-high-five-game
				title: 'CSS Conf EU 2017 High Five Game!'
				author: \una
				tags: <[game pure-css fun]>
				ctime: 1614197003190
				size: 927049
				pen: \RVZvOy
			* name: \top-down-2d-game-camera
				title: 'Top Down 2D Game Camera'
				author: \punkydrewster713
				tags: <[game rpg movement]>
				ctime: 1614197302796
				size: 11048
				pen: \WNrXPrb
				description: 'Here\'s a method for creating a camera illusion for top down web games. This Pen covers arrow key movement and camera following.\n\nVideo Tutorial here:\n\nhttps://youtu.be/H3Fn33lYuE0'
			* name: \css-only-tennis-game
				title: 'CSS Only Tennis Game'
				author: \jonslater204
				tags: <[game tennis pure-css]>
				ctime: 1614197516600
				size: 19950
				pen: \xmXeMx
				description: 'Fully playable tennis game using pure CSS.\n\nHovering a mouse moves the player. Clicking/tapping plays a shot.\n\nA single click should be enough to play a shot when the ball comes near. Feel free to click/tap as many times as you need as it approaches.\n\nThe shot direction is determined by where you click.\n\nYou could increase the number of sets, but you\'ve probably had enough after one. If I was going to add anything though it would be better ball "physics".'
			* name: \highway-race
				title: 'Highway Race'
				author: \jkantner
				tags: <[game racing threejs]>
				ctime: 1614197687057
				size: 23439
				pen: \dxOjXm
				description: 'It’s all fun ’n games until some cop shows up! Pass other cars and trucks to score. Using either shoulder of the road to pass won’t count. This little game is like Smashy Road but the car accelerates on its own. (Note: Not playable in iOS due to some flickering glitch)\n\nUpdate 8/3/19: Slight adjustment to vertical camera angle'
			* name: \an-exciting-html-game
				title: 'An Exciting HTML Game'
				author: \allanpooley
				tags: <[game tic-tac-toe]>
				ctime: 1614197880824
				size: 15403
				pen: \qrrmoR
				description: 'Inspired by Telltale Games + Sam & Max (https://en.wikipedia.org/wiki/Sam_%26_Max)'
			* name: \developong-basic
				title: 'DeveloPong Basic'
				author: \jackrugile
				tags: <[game pong]>
				ctime: 1614197984976
				size: 7007
				pen: \akaBKL
				description: 'Companion to https://jackrugile.com/start-making-games'
			* name: \shoot-the-target-html-css-only-gamecodepen-meetup-2017alicante-frontend
				title: '🎯 🔫   Shoot the target!! HTML/CSS only game - Codepen Meetup 2017 - Alicante Frontend'
				author: \aarongarciah
				tags: <[game shooting pure-css]>
				ctime: 1614198088520
				size: 7188
				pen: \ypBoVm
				description: 'Shoot as many bullseyes as you can.\n\nSome links to dive deep into CSS counters:\n\nhttps://una.im/css-games/#💁\n\nhttps://youtu.be/WmVH85G59Lk\n\nhttp://codersblock.com/blog/fun-times-with-css-counters/'
			* name: \pokedex006-of-100days100projects
				title: 'Pokedex - #006 of #100Days100Projects'
				author: \FlorinPop17
				tags: <[pokedex pokemon]>
				ctime: 1614198522268
				size: 8191
				pen: \gOYZxyE
				description: 'This project is part of the #100Days100Projects challenge.\n\nCheck it out here: https://www.florin-pop.com/blog/2019/09/100-days-100-projects'
			* name: \random-meal-generator001-of-100days100projects
				title: 'Random Meal Generator - #001 of #100Days100Projects'
				author: \FlorinPop17
				tags: <[meal recipe random generator]>
				ctime: 1614198757818
				size: 8041
				pen: \WNeggor
				description: 'This project is part of the #100Days100Projects challenge.\n\nCheck it out here: https://www.florin-pop.com/blog/2019/09/100-days-100-projects'
			* name: \catch-the-insect004-of-100days100projects
				title: 'Catch the insect - #004 of #100Days100Projects'
				author: \FlorinPop17
				tags: <[game catch insect]>
				ctime: 1614198856506
				size: 9475
				pen: \NWKELoq
				description: 'This project is part of the #100Days100Projects challenge.\n\nCheck it out here: https://www.florin-pop.com/blog/2019/09/100-days-100-projects'
			* name: \password-generator013-of-100days100projects
				title: 'Password Generator - #013 of #100Days100Projects'
				author: \FlorinPop17
				tags: <[password generator]>
				ctime: 1614198987662
				size: 8896
				pen: \BaBePej
				description: 'This project is part of the #100Days100Projects challenge.\n\nCheck it out here: https://www.florin-pop.com/blog/2019/09/100-days-100-projects'
			* name: \low-poly-image-generator
				title: 'Low-poly image generator'
				author: \Sphinxxxx
				tags: <[low-poly polygon generator image]>
				ctime: 1614199135327
				size: 32095
				pen: \mdOddRw
			* name: \clock016-of-100days100projects
				title: 'Clock - #016 of #100Days100Projects'
				author: \FlorinPop17
				tags: <[clock]>
				ctime: 1614199201959
				size: 8624
				pen: \eYOqQLz
				description: 'This project is part of the #100Days100Projects challenge.\n\nCheck it out here: https://www.florin-pop.com/blog/2019/09/100-days-100-projects'
			* name: \digital-block-clock056-of-100days100projects
				title: 'Digital Block Clock - #056 of #100Days100Projects'
				author: \FlorinPop17
				tags: <[clock digital block]>
				ctime: 1614199312355
				size: 7892
				pen: \jOOpQYG
			* name: \random-picker-visualizer082-of-100days100projects
				title: 'Random Picker Visualizer - #082 of #100Days100Projects'
				author: \FlorinPop17
				tags: <[random picker]>
				ctime: 1614199494530
				size: 8116
				pen: \zYxvJmP
			* name: \color-matching-game078-of-100days100projects
				title: 'Color Matching Game - #078 of #100Days100Projects'
				author: \FlorinPop17
				tags: <[game color matching]>
				ctime: 1614199600791
				size: 8083
				pen: \zYxxGzO
			* name: \pokemon-gozingtouch-x-anime-js
				title: 'Pokemon Go - ZingTouch x Anime.js'
				author: \zingchart
				tags: <[game pokemon touch animejs]>
				ctime: 1614199796266
				size: 14080
				pen: \BzmdwQ
				description: 'A fun replication of Pokemon Go using ZingTouch for the touch gestures, and Anime.js for the animations'
			* name: \memory
				title: 'Memory'
				author: \beumsk
				tags: <[game memory]>
				ctime: 1614199888928
				size: 10022
				pen: \xdoKjX
				description: 'The classic memory game created with HTML, CSS and Javascript.\n\nChoose between different themes.\n\nBe as fast as possible and spare your clicks !'
			* name: \pokemon-let-s-go-ui
				title: 'Pokemon Let\'s Go! (ui)'
				author: \simeydotme
				tags: <[pokemon ui team vue]>
				ctime: 1614199991577
				size: 19820
				pen: \moPdGa
				description: 'I played Let\'s Go (Eevee) over Christmas.\n\nAt first I thought the UI was really childish and silly, and didn\'t have a coherent message except "colors!!" ... but after playing it for a while I began to love the bouncy, bright UI and all of the subtle interactions. Some of the IA is a bit weird, but the widgets and interactions are joyful!\n\nI wanted to re-create some of the elements in HTML.\n\nI found quickly, though, that there\'s like no standard shapes/outlines and so I had to do a bit of illustrator/svg work to get some of them.\n\nLuckily VueJS is pretty good with SVGs.'
			* name: \who-s-that-pok-mon
				title: 'Who\'s that Pokémon?'
				author: \tiffachoo
				tags: <[game pokemon question vue]>
				ctime: 1614200076943
				size: 12488
				pen: \KGJEba
				description: 'Guess the name of the Pokemon using Vue and the PokeAPI!'
			* name: \not-a-gengar
				title: 'Not A Gengar'
				author: \oliviale
				tags: <[pokemon fun pure-css]>
				ctime: 1614200469287
				size: 5622
				pen: \PoovZQy
				description: 'Oh no, it\'s a ditto'
			* name: \vue-js-pizza-maker
				title: 'Vue.js Pizza Maker'
				author: \mikemang
				tags: <[pizza vue]>
				ctime: 1614200663264
				size: 7277
				pen: \egPZmp
				description: 'Tutorial to make this now live via Medium: https://medium.com/@michaelmangial1/vue-js-pizza-maker-2f707254385c#.gbe7vjlde\n\nFun mini application highlighting the use of conditional rendering, transition effects, and class binding with Vue.js.\n\nIf you enjoyed this, you might also like my Vue.js Pokemon Battle Tutorial:\n\nhttps://medium.com/@michaelmangial1/vue-js-pokemon-battle-tutorial-380cd72eb681'
			* name: \react-pokedex
				title: 'React Pokedex'
				author: \siliconunicorn
				tags: <[pokedex pokemon react]>
				ctime: 1614200849994
				size: 20328
				pen: \VqoxXP
				description: 'Made a Pokedex in React!'
			* name: \pok-dex-using-the-pok-api-gsap
				title: 'Pokédex using the PokéAPI + GSAP 😎'
				author: \jh3y
				tags: <[pokedex pokemon api]>
				ctime: 1614200995850
				size: 15829
				pen: \eYpGQxr
				description: 'A semi-working Pokédex using the PokéAPI 😅\n\nTap the Pokédex to open it. Tap the left side to see a new Pokémon. Tap the right side to close the Pokédex back up.\n\nEnjoy! \n\n- Pokemon sound courtesy of [arithni](https://freesound.org/people/arithni/) on [freesound.org](https://freesound.org/s/83630/)\n\n- Opening sound courtesy of [JamesOC](https://freesound.org/people/JamesOC/) on [freesound.org](https://freesound.org/s/69586/)'
			* name: \write-a-message-in-unown-single-div-project
				title: 'Write a message in Unown (single div project)'
				author: \wendko
				tags: <[pokemon pixel-art typing]>
				ctime: 1614201375671
				size: 63599
				pen: \GRovBGQ
				description: 'Turn your text into Pokemon Unown! Each Unown is a single div, made with box-shadow.'
			* name: \pok-api-and-nes-css-reactjs
				title: 'PokéAPI and NES.css (ReactJS)'
				author: \_Common
				tags: <[pokedex pokemon api pixel-art react]>
				ctime: 1614201526060
				size: 13683
				pen: \gJVvGL
			* name: \bowie-ipsuma-glam-dummy-text-generator
				title: 'Bowie Ipsum - A Glam Dummy Text Generator'
				author: \mariemosley
				tags: <[lorem-ipsum generator text]>
				ctime: 1614528144800
				size: 11365
				pen: \GIFul
				description: 'Just another lorem ipsum generator, but with 100% more glitter eye makeup. Blog post at: http://codepen.io/mariemosley/blog/bowie-ipsum'
			* name: \astronomical-tide-calendar-2021
				title: 'Astronomical & Tide Calendar 2021'
				author: \niallains
				tags: <[graph astronomy tides animation]>
				ctime: 1614529557803
				size: 9696
				pen: \JjKwJLa
				description: 'Visualisation of how the moon and sun affect the tides.'
			* name: \cpctinypainter
				title: 'CPC - TinyPainter'
				author: \niallains
				tags: <[paint art tiny canvas]>
				ctime: 1614529785699
				size: 8885
				pen: \LYPzbVv
				description: 'A painting and drawing application confined within a 100px*50px screen.\n\nContains tools for changing brush colour and size,  and options for saving and downloading drawings.'
			* name: \circles-on-circles
				title: 'Circles on circles'
				author: \niallains
				tags: <[circle geometry trigonometry animation canvas]>
				ctime: 1614530040336
				size: 4318
				pen: \bGBrKbj
				description: 'Shows the paths traced by points on circles who are rotating inside a parent circle.'
			* name: \magnificent-trigonometry-3d
				title: 'Magnificent Trigonometry (3D)'
				author: \ninivert
				tags: <[trigonometry math 3d]>
				ctime: 1614530284280
				size: 22591
				pen: \rYaoRK
				description: 'Feel free to mess around with the settings! Gives some neat effets'
			* name: \random-quote-generator
				title: 'Random Quote Generator'
				author: \kkoutoup
				tags: <[generator random qoute]>
				ctime: 1614530686695
				size: 7410
				pen: \zxmGLE
				description: 'This random quote generator is a short snippet that can be added to any blog or website. Visitors click on the button and get the quote of the day. Then click again for more quotes. HTML,CSS and jQuery.'
			* name: \freecodecamp-build-a-wikipedia-viewer
				title: 'freeCodeCamp : Build a Wikipedia Viewer'
				author: \freeCodeCamp
				tags: <[search wikipedia]>
				ctime: 1614530807851
				size: 7826
				pen: \wGqEga
				description: 'Search wikipedia by clicking on the search icon, providing your search and press return.\n\nForked from [Geoff Storbeck](http://codepen.io/GeoffStorbeck/)\'s Pen [Wikipedia Search](http://codepen.io/GeoffStorbeck/pen/MwgQea/).\n\nForked from [Free Code Camp](http://codepen.io/FreeCodeCamp/)\'s Pen [Wikipedia Search](http://codepen.io/FreeCodeCamp/pen/pgNRvJ/).'
			* name: \musical-chord-progression-arpeggiator
				title: 'Musical Chord Progression Arpeggiator'
				author: \jakealbaugh
				tags: <[music generator]>
				ctime: 1614530884468
				size: 20038
				pen: \qNrZyw
				description: 'A quick way to sketch out musical chord progressions.\n\nuses my [Scale Generator](http://codepen.io/jakealbaugh/pen/NrdEYL/) and [Arpeggio Pattern Generator](http://codepen.io/jakealbaugh/pen/PzpzEO/) and the lovely [Tone.js](https://github.com/Tonejs/Tone.js).\n\nI\'ve started collecting my musical composition stuff in [this collection](http://codepen.io/collection/DBMpBQ/).\n\nI also made a few videos as an intro to using Tone.js on CodePen and put them on [YouTube](https://www.youtube.com/watch?v=0uXDdTyYBYQ&list=PLTujTdKucISz9rx7gGqei3fAGrtA97uY0).'
			* name: \chill-the-lion
				title: 'Chill the lion'
				author: \Yakudoo
				tags: <[fun 3d animation interactive webgl threejs]>
				ctime: 1614531070454
				size: 14516
				pen: \YXxmYR
				description: 'WebGL experiment using ThreeJS. Move the fan and press to make wind, the lion will surely appreciate.'
			* name: \codezoo-kid-s-game-concept-level-1
				title: 'CodeZoo | Kid\'s Game Concept | Level 1'
				author: \mikemang
				tags: <[game animal]>
				ctime: 1614531178307
				size: 8641
				pen: \zoLEpq
				description: 'A kid\'s game concept to teach how to draw through progressively more challenging levels.\n\nComment with suggesstions and ideas.\n\nIf you like this, you might be interested in my tutorials on making fun applications with Vue.js:\n\nhttps://medium.com/@michaelmangial1/vue-js-pizza-maker-2f707254385c#.4x16r1rx3\n\nhttps://medium.com/@michaelmangial1/vue-js-pokemon-battle-tutorial-380cd72eb681#.dfjr8yezu'
			* name: \countdownnew-year-snow
				title: 'Countdown - New Year Snow!'
				author: \maxim-petukhov
				tags: <[countdown year]>
				ctime: 1614531475523
				size: 6820
				pen: \abBzXwY
			* name: \ok-i-cant-this-year
				title: '{OK, I cant\' this year}'
				author: \toastercoder
				tags: <[countdown year]>
				ctime: 1614531531323
				size: 9290
				pen: \LYRbdVq
				description: 'I made it just for fun. I don\'t want to join the challenge, because i have no Wordpress.'
		# await @dev!
		for app in @apps
			app.type ?= \codepen
			app.zip ?= app.name
			app.icon = "//codepen.io/#{app.author}/pen/#{app.pen}/image/small.png"
			app.src =
				"//codepen-api-export-production.s3.us-west-2.amazonaws.com/zip/PEN/
				#{app.pen}/#{app.ctime}/#{app.zip}.zip"
		@apps.sort (a, b) ~> b.ctime - a.ctime
		@suggestApps = _.sampleSize @apps, 5
		@gameApps = _.sampleSize @apps.filter((.tags.includes \game)), 5
		@newestApps = @apps.slice 0 5
		@app = \home

	download: (app) !->
		name = app.name
		await os.installApp app, "/C/apps/#name"

	dev: !->
		await os.js \jszip/dist/jszip.min.js
		text = ''
		names = {}
		for let app in @apps
			unless app.type
				baseUrl = \https://codepen-api-export-production.s3.us-west-2.amazonaws.com/zip/PEN/
				isZipUrl = app.pen.startsWith baseUrl
				if isZipUrl
					app.pen = app.pen
						.replace baseUrl, ''
						.replace /\.zip$/ ''
						.split \/
					app.ctime = app.pen.1
					unless app.name
						app.name = app.pen.2
						while names[app.name]
							app.name = "#{app.pen.2}-#{m.uuid!}"
						unless app.name is app.pen.2
							app.zip = app.pen.2
					app.pen .= 0
				names[app.name] = yes
				if typeof app.tags is \string
					app.tags .= split ' '
				if isZipUrl or not app.author or not app.size
					name = app.zip ? app.name
					url =
						"api/middleware.js?url=//codepen-api-export-production.s3.
						us-west-2.amazonaws.com/zip/PEN/#{app.pen}/#{app.ctime}/#name.zip"
					buf = await m.fetch url, \arrayBuffer
					app.size = buf.byteLength
					zip = new JSZip
					paths = (await zip.loadAsync buf)files
					readme = await paths"#name/README.markdown"async \text
					readme = readme.split /\n+/
					if title = readme.0.slice 2 .trim!
						app.title = title
					[, app.author, app.pen] = /\[https:\/\/codepen\.io\/(.+?)\/pen\/(.+?)\]/exec readme.1
					if readme.2
						if description = readme.slice 2 .join \\n\n .trim!
							app.description = description
				if app.title
					app.title .= replace /'/g \\\'
				if app.description
					app.description = app.description
						.replace /'/g \\\'
						.replace /\n/g \\\n
				subtext = "\n\t\t\t* name: \\#{app.name}"
				if app.title
					subtext += "\n\t\t\t\ttitle: '#{app.title}'"
				subtext += """\
					\t\t\t\tauthor: \\#{app.author}
					\t\t\t\ttags: <[#{app.tags.join ' '}]>
					\t\t\t\tctime: #{app.ctime}
					\t\t\t\tsize: #{app.size}
					\t\t\t\tpen: \\#{app.pen}
				"""
				if app.description
					subtext += "\n\t\t\t\tdescription: '#{app.description}'"
				if app.zip
					subtext += "\n\t\t\t\tzip: \\#{app.zip}"
			text += subtext
			console.log subtext
		console.log text
		navigator.clipboard.writeText text

	view: ->
		m \.full.scroll,
			switch @app
			| \home
				m \.p-4,
					m \h2 'Ứng dụng đề xuất'
					m \.row-5,
						@suggestApps.map (app) ~>
							m _Card,
								app: app
					m \h2 'Mới nhất'
					m \.row-5,
						@newestApps.map (app) ~>
							m _Card,
								app: app
					m \h2 'Trò chơi'
					m \.row-5,
						@gameApps.map (app) ~>
							m _Card,
								app: app
			else
				m \.p-4,
					m \.row,
						m \img.img-contrast.img-cover.ratio-4x3.bg-gray-1,
							style: m.style do
								width: 256
							src: @app.icon
						m \.col.pl-4,
							m \h2.text-truncate-2 @app.title
							m \.row.wrap.gap-y-3,
								m \.col-4 "Tác giả:"
								m \.col-4.offset-4 @app.author
								m \.col-4 "Kích thước:"
								m \.col-4.offset-4 filesize @app.size
								m \.col-4 "Ngày tải lên:"
								m \.col-4.offset-4 dayjs(@app.ctime)format 'DD/MM/YYYY, HH:mm'
								m \.col-4 "Thể loại:"
								m \.col-8 @app.tags.join ', '
					m \.mt-4.text-center,
						m Button,
							color: \blue
							icon: \download
							onclick: !~>
								@download @app
							"Tải xuống và cài đặt"
					if @app.description
						m \.mt-4,
							m.trust marked that

_Card = m.comp do
	view: ->
		m \.column.p-3._Card,
			onclick: !~>
				os.ap.app = @attrs.app
			m \img.w-100.bg-gray-1.img-cover.ratio-4x3,
				src: @attrs.app.icon
			m \.pt-3.text-truncate-2 @attrs.app.title
