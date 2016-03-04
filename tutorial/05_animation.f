requires sdl

sdl_window window
sdl_surface surface
sdl_surface bmp
0 sdl_color color
sdl_event e
sdl_rect rect
sdl_rect dst

0 value done

\ this rect draws to the surface
300 dst sdl_rect:x !
220 dst sdl_rect:y !
40 dst sdl_rect:w !
40 dst sdl_rect:h !

\ this is the frame rect
0 rect sdl_rect:x !
0 rect sdl_rect:y !
40 rect sdl_rect:w !
40 rect sdl_rect:h !

: init
	sdl_init_everything sdl_init
	if ." Failed to initialize video" cr then
	z" Hello Animations" 100 100 640 480 sdl_window_shown
	sdl_createwindow to window
	window 0= if ." Failed to create window" cr then 
	window sdl_getwindowsurface to surface 
	surface 0= if ." Failed to get window surface" cr then 
	window sdl_updatewindowsurface drop ;

: loadsprite
	z" tutorial/animation.bmp" sdl_loadbmp to bmp
	bmp 0= if ." Failed to load bmp" cr then ;

: wink
	0 rect sdl_rect:x !
	10 0 do	 \ 10 frames of animation
		I 40 * rect sdl_rect:x ! \ i is the frame counter
		bmp rect surface dst sdl_blitsurface drop
		window sdl_updatewindowsurface drop
		1000 30 / sdl_delay	\ 30 fps
	loop ;	

: wait
	1000 0 do	\ poll events for 1 second
		e sdl_pollevent 0= not if
			e SDL_CommonEvent:type sdl_quitevent = if
				sdl_quit
				1 to done
			then
		then
		sdl_delay 1	\ micro sleep
	loop ;

: go
	init loadsprite
	window sdl_updatewindowsurface drop
	begin
		wink
		wait
	done until ;

go
