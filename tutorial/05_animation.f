requires sdl
requires utilities/fill
requires utilities/events

sdl_init_everything sdl_init
z" animation" 100 100 640 480 window:create

z" tutorial/animation.bmp" sdl_loadbmp value bmp
bmp 0= [if] ." Failed to load bmp" cr [then]

\ this rect draws to the surface
sdl_rect dst
300 dst sdl_rect:x !
220 dst sdl_rect:y !
40 dst sdl_rect:w !
40 dst sdl_rect:h !

\ this rect finds the frame
0 0 40 40 rect!

\ black the screen
0 to color
surface:fill
window:update

: wink
	10 0 do	 \ 10 frames of animation
		I 40 * 0 at	\ i is the frame counter
		bmp rect surface dst sdl_blitsurface drop
		window:update
		1000 30 / sdl_delay	\ 30 fps
	loop ;	

: wait
	1000 0 do	\ poll events for 1 second
		event:poll 0= not if
			event SDL_CommonEvent:type sdl_quitevent = if
				window:destroy
				sdl_quit
			then
		then
		sdl_delay 1	\ micro sleep
	loop ;

: animate
	begin
		wink
		wait
	again ;

animate
