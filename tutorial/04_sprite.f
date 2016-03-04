requires sdl

sdl_window window
sdl_surface surface
sdl_surface bmp
0 sdl_color color
sdl_event e
sdl_rect rect

: init
	sdl_init_everything sdl_init
	if ." Failed to initialize video" cr then
	z" Hello Sprites" 100 100 640 480 sdl_window_shown
	sdl_createwindow to window
	window 0= if ." Failed to create window" cr then 
	window sdl_getwindowsurface to surface 
	surface 0= if ." Failed to get window surface" cr then 
	window sdl_updatewindowsurface drop ;

: loadsprite
	z" tutorial/sprite.bmp" sdl_loadbmp to bmp
	bmp 0= if ." Failed to load bmp" cr then ;

\ we're going to define an auto decrement operator
ICODE ~!- ( n add -- a-4 )
	0 [EBP] EAX MOV
	EAX 0 [EBX] MOV
	4 # EBP ADD
	4 # EBX SUB
	RET END-CODE

: by ( w h -- ) rect sdl_rect:h ~!- ~!- drop ;
: at ( x y -- ) rect sdl_rect:y ~!- ~!- drop ;
: rect!  rect sdl_rect:h ~!- ~!- ~!- ~!- drop ;

: rect:fill
	surface sdl_surface:pixels @
	rect sdl_rect:y @ surface sdl_surface:pitch @ * +
	rect sdl_rect:x @ 4 * +
	rect sdl_rect:h @ 0 do
		rect sdl_rect:w @ 0 do color !+ loop
		surface sdl_surface:pitch @ +
		rect sdl_rect:w @ 4 * -
	loop drop ;

: animate
	10
	40 0 do
		10 + dup dup at	
		bmp 0 surface rect sdl_blitsurface drop
		window sdl_updatewindowsurface drop
		1000 30 / sdl_delay
		rect:fill
	loop ;

: go
	init loadsprite
	10 10 20 20 rect!
	animate
	sdl_quit ;

go
