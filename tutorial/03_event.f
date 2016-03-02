requires sdl

0 value window
0 value surface

: init
	sdl_init_everything sdl_init
	if ." Failed to initialize video" cr then
	z" Hello Events" 100 100 640 480 sdl_window_shown
	sdl_createwindow to window
	window 0= if ." Failed to create window" cr then 
	window sdl_getwindowsurface to surface 
	surface 0= if ." Failed to get window surface" cr then 
	window sdl_updatewindowsurface drop ;

sdl_event e

: go
	init
	begin
	e sdl_pollevent 0= if 0 else 
		e SDL_CommonEvent:type dup . cr
		sdl_quitevent =	\ until we get a quit event
	then until 
	sdl_quit ;

go


