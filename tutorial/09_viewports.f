requires sdl

sdl_window window
sdl_renderer renderer
sdl_rect viewport

320 viewport sdl_rect:w !
240 viewport sdl_rect:h !

: red		renderer $ff $00 $00 $0 sdl_setrenderdrawcolor drop ;
: yellow	renderer $ff $ff $00 $0 sdl_setrenderdrawcolor drop ;
: green		renderer $00 $ff $00 $0 sdl_setrenderdrawcolor drop ;
: blue		renderer $00 $00 $ff $0 sdl_setrenderdrawcolor drop ;

: init 
	sdl_init_video sdl_init 
	if ." failed to initialize video" cr then
	sdl_hint_render_scale_quality z" 1" sdl_sethint
	0= if ." linear filters not enabled " cr then
	z" viewport tutorial" 100 100 640 480 sdl_window_shown 
	sdl_createwindow to window 
	window 0= if ." failed to create window" cr then
	window -1 sdl_renderer_accelerated 
	sdl_createrenderer to renderer
	renderer 0= if ." failed to create renderer" cr then 
	0 sdl_showcursor drop ;

: set-viewport 
	viewport sdl_rect:y ! 
	viewport sdl_rect:x !
	renderer viewport sdl_rendersetviewport drop ;

: top-left	  0   0 set-viewport ; 
: top-right	320   0 set-viewport ;
: bottom-left	  0 240 set-viewport ;
: bottom-right	320 240 set-viewport ;

: fill-viewport 
	renderer 0 sdl_renderfillrect drop	\ fill the whole screen
	renderer sdl_renderpresent ;

: go
	init
	top-left red fill-viewport
	top-right yellow fill-viewport
	bottom-right green fill-viewport
	bottom-left blue fill-viewport ;

go
