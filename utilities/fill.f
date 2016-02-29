
0 value window
0 value surface
0 value color
sdl_rect rect

ICODE ~!- ( n add -- a-4 )
	0 [EBP] EAX MOV
	EAX 0 [EBX] MOV
	4 # EBP ADD
	4 # EBX SUB
	RET END-CODE

: by ( w h -- ) rect sdl_rect:h ~!- ~!- drop ;
: at ( x y -- ) rect sdl_rect:y ~!- ~!- drop ;

: rect!  rect sdl_rect:h ~!- ~!- ~!- ~!- drop ;

: surface:fill ( -- )
	surface sdl_surface:pixels @  
	surface sdl_surface:h @ surface sdl_surface:w @ * 0 do
		color !+
	loop drop ;


: rect:fill ( -- )
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


: window:update ( -- ) window sdl_updatewindowsurface drop ;

: window:create ( title x y w h -- ) 
	sdl_window_shown sdl_createwindow to window 
	window sdl_getwindowsurface to surface ;

: window:destroy
	window sdl_destroywindow ;

: test-window
	sdl_init_everything sdl_init drop
	z" test" 0 0 400 400 window:create ;
	
