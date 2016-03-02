requires sdl

0 value window
0 value renderer

: init
	sdl_init_video sdl_init
	if ." failed to initalize sdl video" cr then ;

: set_hints
	sdl_hint_render_scale_quality z" 1" sdl_sethint
	0= if ." linear filters not enabled" cr then ;

: create_window
	z" renderer tutorial" 100 100 640 480 sdl_window_shown 
	sdl_createwindow to window
	window 0= if ." failed to create window" cr then ;

: create_renderer
	window -1 SDL_RENDERER_ACCELERATED sdl_createrenderer
	to renderer
	renderer 0= if ." failed to create renderer" cr then ; 

: white
	renderer $ff $ff $ff $ff sdl_setrenderdrawcolor
	if ." failed to set draw color to white" cr then ;

: red
	renderer $ff $00 $00 $ff sdl_setrenderdrawcolor
	if ." failed to set draw color to red" cr then ;

: datapoints
	\ points and lines
	100 100 100 400 400 100 400 400
	pad ~!+ ~!+ ~!+ ~!+ ~!+ ~!+ ~!+ ~!+ drop ;

: points 
	renderer pad 4 sdl_renderdrawpoints . ;

sdl_rect r 
10 r sdl_rect:w ! 10 r sdl_rect:h !

: rect 
	r sdl_rect:y ! r sdl_rect:x !
	renderer r sdl_renderdrawrect . ;

: lines
	renderer pad 4 sdl_Renderdrawlines . ;

: show
	renderer sdl_renderpresent ;

: go
	init set_hints create_window create_renderer
	renderer sdl_renderclear
	datapoints white points show 2000 sdl_delay
	95 95 rect show 1000 sdl_delay 
	395 95 rect show 1000 sdl_delay
	95 395 rect show 1000 sdl_delay
	395 395 rect show 1000 sdl_delay
	red lines show 
	2000 sdl_delay sdl_quit ;

go
