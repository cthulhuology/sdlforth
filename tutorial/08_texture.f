requires sdl

0 value window
0 value renderer
0 value bmp
0 value texture

: init 
	sdl_init_video sdl_init 
	if ." failed to initialize video" cr then
	sdl_hint_render_scale_quality z" 1" sdl_sethint
	0= if ." linear filters not enabled " cr then
	z" texture tutorial" 100 100 640 480 sdl_window_shown 
	sdl_createwindow to window 
	window 0= if ." failed to create window" cr then
	window -1 sdl_renderer_accelerated 
	sdl_createrenderer to renderer
	renderer 0= if ." failed to create renderer" cr then 
	0 sdl_showcursor drop ;

sdl_rect rect
100 rect sdl_rect:x !
100 rect sdl_rect:y !

: load_sprite
	z" tutorial/sprite.bmp" sdl_loadbmp to bmp
	renderer bmp sdl_createtexturefromsurface to texture
	texture 0= if ." failed to create texture" cr then
	bmp sdl_freesurface 
	texture pad pad 1 cells + rect sdl_rect:w rect sdl_rect:h
	sdl_querytexture drop ;

sdl_event e

0 value done
: isdone 1 to done ; 

: blitsprite
	renderer sdl_renderclear drop
	e sdl_mousemotionevent:x 20 - rect sdl_rect:x !
	e sdl_mousemotionevent:y 20 - rect sdl_rect:y !
	renderer texture 0 rect sdl_rendercopy drop 
	renderer sdl_renderpresent ;

: go
	init
	load_sprite
	begin
	e sdl_pollevent 0<> if 
	e sdl_commonevent:type case
		sdl_quitevent of isdone endof
		sdl_mousemotion of blitsprite endof
	endcase	then 
	done until 
	sdl_quit ;
	
go
