
: surface:fill ( -- )


: rect:fill ( -- )


: window:update ( -- ) window sdl_updatewindowsurface drop ;

: window:create ( title x y w h -- ) 
	sdl_window_shown sdl_createwindow to window 
	window sdl_getwindowsurface to surface ;

: window:destroy
	window sdl_destroywindow ;

: test-window
	sdl_init_everything sdl_init drop
	z" test" 0 0 400 400 window:create ;
	
