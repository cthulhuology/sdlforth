requires sdl

0 value window
0 value surface
$000000 value color
sdl_rect rect

: init
	SDL_INIT_EVERYTHING SDL_Init
	if ." Failed to initialize video" cr then
	z" SDL2 Hello World" 100 100 640 480 sdl_window_shown
	sdl_createwindow to window
	window 0= if ." Failed to create window" cr then 
	window sdl_getwindowsurface to surface 
	surface 0= if ." Failed to get window surface" cr then ;

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

: surface:fill
	surface sdl_surface:pixels @  
	surface sdl_surface:h @ surface sdl_surface:w @ * 0 do
		color !+
	loop drop ;

: rect:fill
	surface sdl_surface:pixels @
	rect sdl_rect:y @ surface sdl_surface:pitch @ * +
	rect sdl_rect:x @ 4 * +
	rect sdl_rect:h @ 0 do
		rect sdl_rect:w @ 0 do
			color !+
		loop
		surface sdl_surface:pitch @ +
		rect sdl_rect:w @ 4 * -
	loop drop ;

: window:update window sdl_updatewindowsurface ;

: go 
	init
	surface:fill
	$00ff00 to color
	100 100 at 440 280 by 
	rect:fill window:update
	2000 SDL_Delay
	sdl_quit ;

go
